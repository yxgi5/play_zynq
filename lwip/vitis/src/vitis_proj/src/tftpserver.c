/*
 * Copyright (c) 2008, 2009 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * IMPORTANT NOTE:
 *
 * The RAW version of the TFTP server does not deal with any timeouts.
 * Hence this software is unreliable in anything but a point to point
 * network connection with no packet loss.

 * This software is only intended as a simple demo of UDP programs under
 * RAW mode
 */


#include <stdio.h>
#include <string.h>

#include "lwip/inet.h"
#include "lwip/err.h"
#include "lwip/udp.h"
//#include "mfs_config.h"

#include "tftpserver.h"
#include "tftputils.h"
#include "prot_malloc.h"
//#include "platform_fs.h"
#ifdef __arm__
#include "xil_printf.h"
#endif
#include "md5_b.h"
//#include "eeprom.h"
#include "xstatus.h"

/* tftp_errorcode error strings */
char *tftp_errorcode_string[] = {
	"not defined",
	"file not found",
	"access violation",
	"disk full",
	"illegal operation",
	"unknown transfer id",
	"file already exists",
	"no such user",
};

static unsigned tftp_port = 69;
static int tftp_server_started = 0;
uint8_t *upgradeFile=NULL;
uint32_t upgradeFileLength=0;
uint32_t real_file_length=0;
static uint8_t g_file_md5sum[16];
static struct udp_pcb *g_flash_program_pcb=NULL;
static tftp_connection_args *g_flash_program_args=NULL;
static ip_addr_t       g_flash_program_dstip;
static u16             g_flash_program_port=0;
u8 tftp_get_ram_file=1;
 int upgradefile_programming =0;
 u8 gettingFile=0;
int extract_md5_hex(char*str)
{
	if(!str)return 0;
	int len=strlen(str);
	if(len!=32)return 0;
	int i;
	u8 hexnum_h,hexnum_l,temp;
	xil_printf("extract md5sum:\r\n");
	for(i=0;i<32;i++)
	{
		if( ('0'<=str[i]) && (str[i]<='9') )
		{
			temp=0+str[i]-'0';
		}
		else if( ('A'<=str[i]) && (str[i]<='F') )
		{
			temp=10+str[i]-'A';
		}
		else if( ('0'<=str[i]) && (str[i]<='9') )
		{
			temp=10+str[i]-'a';
		}
		else
		{
		    // unexpect string 
			return 0;
		}
		
		if(i%2==0)
		{
			hexnum_h=temp;
		}
		else
		{
			hexnum_l=temp;
			g_file_md5sum[(i+1)/2 -1]=(hexnum_h<<4)|hexnum_l;
			xil_printf("%02x ",(hexnum_h<<4)|hexnum_l);
		}
	}
	xil_printf("\r\n");
	return 1;
}
err_t
tftp_send_message(struct udp_pcb *pcb, ip_addr_t *to_ip, int to_port, char *buf, int buflen)
{
	err_t err;
	struct pbuf *p;

	/* form a pbuf */
	p = pbuf_alloc(PBUF_TRANSPORT, buflen, PBUF_POOL);
	if (!p) {
		xil_printf("error allocating pbuf\r\n");
		return ERR_MEM;
	}
	memcpy(p->payload, buf, buflen);

	/* send message */
	err = udp_sendto(pcb, p, to_ip, to_port);

	/* free pbuf */
	pbuf_free(p);

        return err;
}

/* construct an error message into buf using err as the error code */
int
tftp_construct_error_message(char *buf, tftp_errorcode err)
{
	int errorlen;

	tftp_set_opcode(buf, TFTP_ERROR);
	tftp_set_errorcode(buf, err);

	tftp_set_errormsg(buf, tftp_errorcode_string[err]);
	errorlen = strlen(tftp_errorcode_string[err]);

	/* return message size */
	return 4 + errorlen + 1;
}

/* construct and send an error message back to client */
int
tftp_send_error_message(struct udp_pcb *pcb, ip_addr_t *to, int to_port, tftp_errorcode err)
{
	char buf[512];
	int n;

	n = tftp_construct_error_message(buf, err);
	return tftp_send_message(pcb, to, to_port, buf, n);
}

/* construct and send a data packet */
int
tftp_send_data_packet(struct udp_pcb *pcb, ip_addr_t *to, int to_port, int block, char *buf, int buflen)
{
	char packet[TFTP_MAX_MSG_LEN];

	tftp_set_opcode(packet, TFTP_DATA);
	tftp_set_block(packet, block);
	tftp_set_data_message(packet, buf, buflen);

	return tftp_send_message(pcb, to, to_port, packet, buflen + 4);
}

int
tftp_send_ack_packet(struct udp_pcb *pcb, ip_addr_t *to, int to_port, int block)
{
	char packet[TFTP_MAX_ACK_LEN];

	tftp_set_opcode(packet, TFTP_ACK);
	tftp_set_block(packet, block);

	return tftp_send_message(pcb, to, to_port, packet, TFTP_MAX_ACK_LEN);
}

void
tftp_cleanup(struct udp_pcb *pcb, tftp_connection_args *args)
{
	/* cleanup the args */
    if(args->fil_res ==FR_OK)
		f_close(&args->fil);
	
	gettingFile=0;
	prot_mem_free(args);

	/* close the connection */
	udp_remove(pcb);
}

void
tftp_send_next_block(struct udp_pcb *pcb, tftp_connection_args *args,
		ip_addr_t *to_ip, u16_t to_port)
{
   if(tftp_get_ram_file==0){
		   u32 br=0;
		   u32 bytes_remains=f_size(&args->fil)-(args->block-1)*TFTP_DATA_PACKET_MSG_LEN;

		   f_lseek(&args->fil, (args->block-1)*TFTP_DATA_PACKET_MSG_LEN);
		   if(bytes_remains>TFTP_DATA_PACKET_MSG_LEN){
		   		bytes_remains=TFTP_DATA_PACKET_MSG_LEN;
		   }
		   f_read(&args->fil, args->data, bytes_remains,&br);
		  // xil_printf("cur:%u read:%u\r\n",f_tell(&args->fil),bytes_remains);
			args->data_len=bytes_remains;
			if (args->data_len == 0) {
				xil_printf("closing connection, ret = %d\r\n", args->data_len);
				/* we are done */
				return tftp_cleanup(pcb, args);
			}
   }
  else{
  	   
  }

	/* send the data */
	tftp_send_data_packet(pcb, to_ip, to_port,
			args->block, args->data, args->data_len);

}

static void
rrq_recv_callback(void *_args, struct udp_pcb *upcb,
                               struct pbuf *p, ip_addr_t *addr, u16_t port)
{
        ip_addr_t dst_ip = *addr;
	tftp_connection_args *args = (tftp_connection_args *)_args;

	if (tftp_is_correct_ack(p->payload, args->block)) {
		/* increment block # */
		((tftp_connection_args *)args)->block++;
	} else {
		/* we did not receive the expected ACK, so
		   do not update block #, thereby resending current block */
		xil_printf("incorrect ack received, resending last block\r\n");
	}

        pbuf_free(p);

	/* if the last read returned less than the requested number of bytes,
	 * then we've sent the whole file and so we can quit
	 */
	if (args->data_len < TFTP_DATA_PACKET_MSG_LEN)
		return tftp_cleanup(upcb, args);

	tftp_send_next_block(upcb, args, &dst_ip, port);
}

int
tftp_process_read(struct udp_pcb *pcb, ip_addr_t *to, int to_port, char *fname)
{
	int res;
	tftp_connection_args *args;
   

	/* this function is called from a callback => interrupts are disabled
	 * => we can use regular malloc
	 */
	if(gettingFile) return -1;
	
	args = mem_malloc(sizeof *args);
	if (!args) {
		xil_printf("unable to allocate memory for tftp args\r\n");
		tftp_send_error_message(pcb, to, to_port, TFTP_ERR_FILE_NOT_FOUND);
                udp_remove(pcb);
		return -1;
	}

	if(strcmp(fname,"ram_file")!=0){  // not ramfile
	    /* first make sure the file exists and we can read the file */
		res = f_open(&args->fil, fname, FA_READ);
		args->fil_res=res;
		
	    if(FR_OK != res ) {
			xil_printf("unable to open file: %s\r\n", fname);
			tftp_send_error_message(pcb, to, to_port, TFTP_ERR_FILE_NOT_FOUND);
	        udp_remove(pcb);
			return -1;
		}
		
		args->op = TFTP_RRQ;
		args->to_ip.addr = to->addr;
		args->to_port = to_port;
		args->fil_res = res;
		tftp_get_ram_file=0;
	}
    else{  // ramfile 
    	tftp_get_ram_file=1;
		args->op = TFTP_RRQ;
		args->to_ip.addr = to->addr;
		args->to_port = to_port;
		args->fil_res=-1;//文件错误 关闭时 无需释放文件
    }
	/* set callback for receives on this pcb */
	udp_recv(pcb, rrq_recv_callback, args);

	/* initiate the transaction by sending the first block of data
	 * further blocks will be sent when ACKs are received
	 * 	- the receive callbacks need to get the proper state
	 */
	args->block = 1;
	tftp_send_next_block(pcb, args, to, to_port);
    gettingFile=1;
	return 0;
}

/* write callback */



void
wrq_recv_callback(void *_args, struct udp_pcb *upcb,
                               struct pbuf *p, ip_addr_t *addr, u16_t port)
{
        ip_addr_t dst_ip = *addr;
	tftp_connection_args *args = (tftp_connection_args *)_args;

	if (p->len != p->tot_len) {
		xil_printf("ERROR: tftp server does not support chained pbuf's\r\n");
                pbuf_free(p);
		return;
	}

   if(upgradefile_programming)
   	{	
   		xil_printf("upgradefile is programming,but still receive data !!\r\n");
  	    pbuf_free(p);
   		return;
   	}
	// TODO: replace with flash write interface @ alex

	/* make sure data block is what we expect */
	if ((p->len > 4) && (tftp_extract_block(p->payload) == (args->block + 1))) {
		/* write the received data to the file */
	    /*
		int n = mfs_file_write(args->fd, p->payload+TFTP_DATA_PACKET_HDR_LEN,
				p->len-TFTP_DATA_PACKET_HDR_LEN);
		if (n != 1) {
			xil_printf("write to file error\r\n");
			tftp_send_error_message(upcb, &dst_ip, port, TFTP_ERR_DISKFULL);
                        pbuf_free(p);
			return tftp_cleanup(upcb, args);
		}
		*/
		memcpy(upgradeFile+args->block*512,p->payload+TFTP_DATA_PACKET_HDR_LEN,p->len-TFTP_DATA_PACKET_HDR_LEN);
		//file_recv_length+=(p->len-TFTP_DATA_PACKET_HDR_LEN);
		//file_recv_length+=512;
		args->block++;
	}

	tftp_send_ack_packet(upcb, &dst_ip, port, args->block);

	/* if the last read returned less than the requested number of bytes,
	 * then we've sent the whole file and so we can quit
	 */
	if (p->len < TFTP_DATA_PACKET_MSG_LEN){
		
		    uint8_t md5sum[16];
			md5_sum(upgradeFile,real_file_length,md5sum);
			if(memcmp(md5sum,g_file_md5sum,16)==0)
			{
//			    clear_flash_bootflag();
		    	//if(upgradeFlashBin()==XST_SUCCESS)
		    	//{
		    	//	set_flash_bootflag();
		    	//}
		    	// record the udp socket for flash upgrade !
		    	g_flash_program_pcb=upcb;
				g_flash_program_args=args;
				g_flash_program_dstip.addr=addr->addr;
				g_flash_program_port=port;
				enable_ugrade_flash();
				upgradefile_programming=1;
				return ;// run upgrade poll task
			}
			free(upgradeFile);
			upgradeFile=NULL;
		
		pbuf_free(p);
		return tftp_cleanup(upcb, args);
	}
    pbuf_free(p);
	
}

/* write data coming via sd to file *fname */
int
tftp_process_write(struct udp_pcb *pcb, ip_addr_t *to, int to_port, char *fname)
{
	tftp_connection_args *args;

//	/* we do not allow overwriting files */
//	if (mfs_exists_file(fname)) {
//		printf("file %s already exists\r\n", fname);
//		tftp_send_error_message(pcb, to, to_port, TFTP_ERR_FILE_ALREADY_EXISTS);
//                udp_remove(pcb);
//		return -1;
//	}
//
//	fd = mfs_file_open(fname, MFS_MODE_CREATE);
//	if (fd < 0) {
//		xil_printf("unable to open file %s for writing\r\n", fname);
//		tftp_send_error_message(pcb, to, to_port, TFTP_ERR_DISKFULL);
//                udp_remove(pcb);
//		return -1;
//	}

	/* this function is called from a callback => interrupts are disabled
	 * => we can use regular malloc
	 */
	if(upgradeFile==NULL)
	{
		upgradeFile=(uint8_t*)malloc(upgradeFileLength);
		if(upgradeFile==NULL){
			xil_printf("alloc tftp file buf failed !\r\n");
			tftp_send_error_message(pcb, to, to_port, TFTP_ERR_FILE_NOT_FOUND);
            udp_remove(pcb);
			return -1;
		}
		// fill the padding buf 0xff
		u32 i;
		for(i=real_file_length;i<upgradeFileLength;i++)
		{
			upgradeFile[i]=0xff;
		}
	}
	
	args = mem_malloc(sizeof *args);
	if (!args) {
		xil_printf("unable to allocate memory for tftp args\r\n");
		tftp_send_error_message(pcb, to, to_port, TFTP_ERR_FILE_NOT_FOUND);
                udp_remove(pcb);
		free(upgradeFile);
		return -1;
	}

	args->op = TFTP_WRQ;
	args->to_ip.addr = to->addr;
	args->to_port = to_port;
	args->fil_res=-1;//文件错误 关闭时 无需释放文件
	args->block = 0;

	/* set callback for receives on this pcb */
	udp_recv(pcb, wrq_recv_callback, args);

	/* initiate the transaction by sending the first ack */
	tftp_send_ack_packet(pcb, to, to_port, args->block);

	return 0;
}

/* for each new request (data in p->payload) from addr:port,
 * create a new port to serve the response, and start the response
 * process
 */
static void
process_tftp_request(struct pbuf *p, ip_addr_t *addr, u16_t port)
{
	tftp_opcode op = tftp_decode_op(p->payload);
	char fname[512];
	struct udp_pcb *pcb;
	err_t err;
    char *endmode;
	/* create new UDP PCB structure */
	pcb = udp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\r\n");
		return;
	}

	/* bind to port 0 to receive next available free port */
	err = udp_bind(pcb, IP_ADDR_ANY, 0);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\r\n", port, err);
		return;
	}

	switch (op) {
	case TFTP_RRQ:
		{
		tftp_extract_filename(fname, p->payload);
		printf("TFTP RRQ (read request): %s\r\n", fname);
		tftp_process_read(pcb, addr, port, fname);
		}
		break;
	case TFTP_WRQ:
		{
			tftp_extract_filename(fname, p->payload);
			if(!extract_md5_hex(fname))
			{
			    xil_printf("tftp err write request !!\r\n");
				tftp_send_error_message(pcb, addr, port, TFTP_ERR_ACCESS_VIOLATION);
				udp_remove(pcb);
				break;
			}
			
			if(upgradefile_programming)
			{
				xil_printf("tftp  write request( but upgradefile is programming) !!\r\n");
				tftp_send_error_message(pcb, addr, port, TFTP_ERR_ACCESS_VIOLATION);
				udp_remove(pcb);
				break;
			}
		    if(is_validrequest((char *)(p->payload + 2), &endmode) == 1)
		    {
		    	int32_t blksize = blksize_opt(endmode, (char *)( p->payload+p->len-1));
				int32_t tsize = tsize_opt(endmode, (char *)( p->payload+p->len-1));
				xil_printf("TFTP WRQ (write request): %s blksize=%d tsize=%d\r\n",fname,blksize,tsize);		
				upgradeFileLength=(tsize%512)+tsize;
				real_file_length=tsize;
				tftp_process_write(pcb, addr, port, fname);
		    }
			else{
				tftp_send_error_message(pcb, addr, port, TFTP_ERR_ACCESS_VIOLATION);
				udp_remove(pcb);
			}
		}
		break;
	default:
		/* send a generic access violation message */
		tftp_send_error_message(pcb, addr, port, TFTP_ERR_ACCESS_VIOLATION);
		printf("TFTP unknown request op: %d\r\n", op);
		udp_remove(pcb);
		break;
	}
}

/* the tftp_recv_callback function is called when there is a packet received
 * on the main tftp server port (69)
 */
static void
tftp_recv_callback(void *arg, struct udp_pcb *upcb,
                               struct pbuf *p, ip_addr_t *_addr, u16_t port)
{
        ip_addr_t addr = *_addr;

	/* process new connection request */
	process_tftp_request(p, &addr, port);

	pbuf_free(p);
}

int
start_tftp_application()
{
	struct udp_pcb *pcb;
	err_t err;
	unsigned port = tftp_port;

	/* create new UDP PCB structure */
	pcb = udp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\r\n");
		return -1;
	}

	/* bind to @port */
	err = udp_bind(pcb, IP_ADDR_ANY, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\r\n", port, err);
		return -2;
	}

	udp_recv(pcb, tftp_recv_callback, NULL);

    tftp_server_started = 1;
    return 0;
}

void
print_tftp_app_header()
{
        xil_printf("%20s %6d %s\r\n", "tftp server",
                        tftp_port,
                        "$ tftp -i 192.168.1.10 PUT <source-file>");
}

void
transfer_tftp_data()
{
	/* TODO: check each active tftp process and make sure it has received
	 * some reply within the last TIMEOUT interval
	 */

	/* The RAW version of the TFTP server does not deal with any timeouts.
	 * Hence this software is unreliable in anything but a point to point
	 * network connection with no packet loss.

	 * This software is only intended as a simple demo of UDP programs under
	 * RAW mode
	 */
}

int  flash_upgrade_send_message(char*message)
{
	char buf[128];
	buf[0]=0;
	buf[1]=strlen(message);	
    strcpy(buf+2,message);
	err_t err;
	struct pbuf *p;
    if(g_flash_program_pcb==NULL) return 0;
	/* form a pbuf */
	p = pbuf_alloc(PBUF_TRANSPORT, 128, PBUF_POOL);
	if (!p) {
		xil_printf("error allocating pbuf\r\n");
		return ERR_MEM;
	}
	memcpy(p->payload, buf, 128);

	/* send message */
	err = udp_sendto(g_flash_program_pcb, p, &g_flash_program_dstip, g_flash_program_port);

	/* free pbuf */
	pbuf_free(p);

    return err;
}
void close_upgrade_server_report_socket()
{
    if(upgradeFile){
		free(upgradeFile);
		xil_printf("free upgradefile\r\n");
	}
	upgradeFile=NULL;
	if(g_flash_program_pcb)
	 tftp_cleanup(g_flash_program_pcb, g_flash_program_args);

}
