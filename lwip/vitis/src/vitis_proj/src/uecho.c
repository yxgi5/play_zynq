/**
  ******************************************************************************
  * @file    uecho.c
  * @author  Andreas Zhang
  * @version V0.0.1
  * @date    Oct 28, 2018
  * @brief   UDP echo server
  ******************************************************************************
  * @attention
  *
  * pc receive：
  * sudo nc -ul 7
  *
  * pc send：
  * nc -u 192.168.1.10 7
  *
  ******************************************************************************
  */

#include <stdio.h>
#include <string.h>
#include <xil_io.h>

#include "lwip/err.h"
//#include "lwip/pbuf.h"
#include "lwip/udp.h"
//#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif
#include "version.h"

//#define PRINT_REMOTE

#ifdef PRINT_REMOTE
#include "lwip/inet.h"
extern struct netif *echo_netif;
#endif
//static struct udp_pcb *pcb;
static unsigned echo_server_port = 5555;
//static unsigned echo_client_port = 5556;
static unsigned echo_server_running = 0;

int transfer_data() {
	return 0;
}

void print_app_header()
{
	xil_printf("%20s %6d\r\n", "udp server", echo_server_port);
}

//int binary_search(int n, int a[n], int who)
//{
//	int p = n/2;
//	while (n > 0)
//	{
//		n = n/2;
//		if (who < a[p])
//		{
//			p -= n;
//		}
//		else if(who > a[p])
//		{
//			p += n;
//		}
//		else
//		{
//			return p;
//		}
//	}
//}

uint8_t checksum(uint8_t * ptr, int16_t cnt)
{
	int16_t i = 0;
	uint8_t calc=0;
	for(i=0;i<cnt;i++)
	{
		calc=calc + ptr[i];
	}

	return calc=~calc&0xff;
}

#if 0
/**
  * @brief This function is called when an UDP datagrm has been received on the port UDP_PORT.
  * @param arg user supplied argument (udp_pcb.recv_arg)
  * @param pcb the udp_pcb which received data
  * @param p the packet buffer that was received
  * @param addr the remote IP address from which the packet was received
  * @param port the remote port from which the packet was received
  * @retval None
  */
void recv_callback(void *arg, struct udp_pcb *upcb, struct pbuf *p, ip_addr_t *addr, u16_t port)
{
	  /* Connect to the remote client */
	  udp_connect(upcb, addr, port);
#ifdef PRINT_REMOTE
	  xil_printf("local %s port %d connected with ",
	  			inet_ntoa(echo_netif->ip_addr),
				echo_server_port);
	  xil_printf("%s port %d\r\n", inet_ntoa(*addr),
			  port);
#endif
	  /* Tell the client that we have accepted it */
	  udp_send(upcb, p);

	  /* free the UDP connection, so we can accept new clients */
	  udp_disconnect(upcb);

	  /* Free the p buffer */
	  pbuf_free(p);
}
#endif
#if 1
/**
  * @brief This function is called when an UDP datagrm has been received on the port UDP_PORT.
  * @param arg user supplied argument (udp_pcb.recv_arg)
  * @param pcb the udp_pcb which received data
  * @param p the packet buffer that was received
  * @param addr the remote IP address from which the packet was received
  * @param port the remote port from which the packet was received
  * @retval None
  */
uint8_t receivebuf[1500] = {0};
uint8_t send_buf[1500] = {0};
uint8_t str[8];
uint8_t str2[8];
uint8_t smdata[4];
uint8_t smaddr[4];
int receivelen = 0;
int sendlen = 0;
int receivebufdecodelen = 0;
int sendencodelen=0;
uint32_t iic_status=0;
uint32_t spi_status=0;
uint8_t spi_recv_buf[256]={0};
uint8_t spi_recv_len=0;
uint8_t spi_send_byte=0;
uint8_t iic_data_buf[256]={0};
uint8_t iic_data_len=0;

void recv_callback(void *arg, struct udp_pcb *upcb, struct pbuf *p,ip_addr_t *addr, u16_t port)
{
    struct pbuf *pq;
	receivelen = p->len;
	memset(receivebuf, 0, sizeof(receivebuf));
	memset(send_buf, 0, sizeof(send_buf));
	memcpy(receivebuf,p->payload,p->len);
    pbuf_free(p);
    int32_t Status=0;
    uint16_t msg_len=0;
    uint16_t msg_cmd=0;
    uint32_t msg_addr=0;
    uint32_t msg_value=0;
    uint8_t msg_ack=0;
    uint16_t mem_len=0;

    memcpy(&msg_len,receivebuf,2);
    memcpy(&msg_cmd,receivebuf+4,1);

    if(msg_cmd==0x10)	// read mem addr
    {
    	memcpy(&msg_addr,receivebuf+5,4);
    	msg_value = Xil_In32(msg_addr); // don't use signed int, otherwise hardfail
    	//mdata=htonl(mdata);
    	memcpy(send_buf,receivebuf,receivelen);
    	sendlen=receivelen;
    	//memcpy(send_buf,&sendlen,2);
    	memcpy(send_buf+9,&msg_value,4);
    	send_buf[sendlen-1] = checksum(send_buf,sendlen-1); // 计算除checksum外的全部
    	memcpy(send_buf,&sendlen,2);
    }
    if(msg_cmd==0x11)	// write mem addr
	{
		memcpy(&msg_addr,receivebuf+5,4);
		memcpy(&msg_value,receivebuf+9,4);
		//msg_value=htonl(msg_value);
		//*(volatile unsigned int *)(msg_addr) = msg_value;
		Xil_Out32(msg_addr, msg_value);
		msg_value = Xil_In32(msg_addr); // don't use signed int, otherwise hardfail

		memcpy(send_buf,receivebuf,receivelen);
		sendlen=receivelen;
		//memcpy(send_buf,&sendlen,2);
		memcpy(send_buf+9,&msg_value,4);
		send_buf[sendlen-1] = checksum(send_buf,sendlen-1); // 计算除checksum外的全部
		memcpy(send_buf,&sendlen,2);
	}
    if(msg_cmd==0x12)	// read mem bulk
	{
		memcpy(&msg_addr,receivebuf+5,4);
		memcpy(&mem_len,receivebuf+9,4);
		memcpy(send_buf,receivebuf,receivelen);
		memcpy(send_buf+receivelen-1,(void*)msg_addr,mem_len*4);
		sendlen=receivelen+mem_len*4;
		memcpy(send_buf,&sendlen,2);
		send_buf[sendlen-1] = checksum(send_buf,sendlen-1); // 计算除checksum外的全部
	}
    if(msg_cmd==0x13)	// write mem bulk
	{
		memcpy(&msg_addr,receivebuf+5,4);
		memcpy(&mem_len,receivebuf+9,4);
		memcpy((void*)msg_addr,receivebuf+13,mem_len*4);
		sendlen=receivelen-mem_len*4;
		memcpy(send_buf,receivebuf,sendlen);
//		memcpy(send_buf,&sendlen,2);
		send_buf[sendlen-1] = checksum(send_buf,sendlen-1); // 计算除checksum外的全部
		memcpy(send_buf,&sendlen,2);
	}

    if(msg_cmd==0x40)
    {
    	uint16_t cmd_index;
    	uint32_t msg_send;
		memcpy(&cmd_index,receivebuf+5,2);

		if(cmd_index==1)
		{
//			uint16_t major = __SW_VER_MAJOR__;
//			uint16_t minor = __SW_VER_MINOR__;
			uint32_t ver = __SW_VER__;
//			msg_send = (uint32_t)(((uint32_t)major)<<16) + (uint32_t)minor;
			msg_send = ver;

			memcpy(send_buf,receivebuf,7);
			memcpy(send_buf+7,&msg_send,4);
			sendlen = 12;
			send_buf[sendlen-1] = checksum(send_buf,sendlen-1); // 计算除checksum外的全部
			memcpy(send_buf,&sendlen,2);
		}
    }

    pq = pbuf_alloc(PBUF_TRANSPORT,sendlen,PBUF_POOL);
	pbuf_take(pq,(char*)send_buf,sendlen);

    udp_connect(upcb, addr, port);
#ifdef PRINT_REMOTE
	  xil_printf("local %s port %d connected with ",
	  			inet_ntoa(echo_netif->ip_addr),
				echo_server_port);
	  xil_printf("%s port %d\r\n", inet_ntoa(*addr),
			  port);
#endif
	udp_send(upcb,pq);
	udp_disconnect(upcb);
	pbuf_free(pq);
}
#endif


int start_application()
{
	struct udp_pcb *pcb;
	err_t err;

	/* Create a new UDP PCB structure  */
	pcb = udp_new();
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* Bind the upcb to the UDP_PORT port */
	/* Using IP_ANY_TYPE==IP_ADDR_ANY allow the upcb to be used by any local interface */
	err = udp_bind(pcb, IP_ANY_TYPE, echo_server_port);
    if (err != ERR_OK) {
        xil_printf("Unable to bind to port %d: err = %d\r\n", echo_server_port, err);
        return -2;
    }

    /* Set a receive callback for the upcb */
	udp_recv(pcb, recv_callback, NULL);

	xil_printf("UDP echo server started @ port %d\n\r", echo_server_port);

	echo_server_running = 1;

	return 0;
}
