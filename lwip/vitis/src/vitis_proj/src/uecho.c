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

#include "lwip/err.h"
#include "lwip/pbuf.h"
#include "lwip/udp.h"
#include "lwip/tcp.h"

#ifndef __PPC__
#include "xil_printf.h"
#endif

//static unsigned echo_server_port = 7;
//static unsigned echo_client_port = 7;
static unsigned echo_server_port = 5555;
static unsigned echo_client_port = 5556;
static unsigned echo_server_running = 0;

int transfer_uecho_data(void)
{
    return 0;
}

void print_uecho_app_header()
{
    xil_printf("%20s %6d\r\n", "udp echo server",
    		echo_server_port);
}

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
void udp_echoserver_receive_callback(void *arg, struct udp_pcb *upcb, struct pbuf *p, ip_addr_t *addr, u16_t port)
{

  /* Connect to the remote client */
  udp_connect(upcb, addr, echo_client_port);

  /* Tell the client that we have accepted it */
  udp_send(upcb, p);

  /* free the UDP connection, so we can accept new clients */
  udp_disconnect(upcb);

  /* Free the p buffer */
  pbuf_free(p);

}
#endif

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
uint8_t receivebuf[30] = {0};
uint8_t send_buf[10] = {0x00,0x00,0x00,0x00,0x00,0x00,0xdd,0xcc,0xdd,0xbb};
uint8_t str[8];
uint8_t smdata[4];
int receivelen = 0;
void udp_echoserver_receive_callback(void *arg, struct udp_pcb *upcb, struct pbuf *p,ip_addr_t *addr, u16_t port)
{
    struct pbuf *pq;
	receivelen = p->len;
	memset(receivebuf, 0, sizeof(receivebuf));
	memcpy(receivebuf,p->payload,p->len);
    pbuf_free(p);

    /* Connect to the remote client */
    udp_connect(upcb, addr, echo_client_port);

    unsigned int match_count = 0;
    unsigned int maddr = 0;
    unsigned int mdata = 0;

    match_count = sscanf(receivebuf,"mrd 0x%x", &maddr);

    if(match_count == 1)
    {
        //allocate memory
        //pq = pbuf_alloc(PBUF_TRANSPORT,2,PBUF_POOL);
        //pq = pbuf_alloc(PBUF_TRANSPORT,4,PBUF_POOL);
        pq = pbuf_alloc(PBUF_TRANSPORT,10,PBUF_POOL);

    	mdata = *(volatile unsigned int *)(maddr);
    	//mdata = Xil_In32(maddr);

    	mdata=htonl(mdata);

    	//memcpy(send_buf,&mdata,4);

    	send_buf[0]='0';
    	send_buf[1]='x';

    	int i=0;

    	for(i = 0; i<4;i++)
    	{
    		smdata[i] = 0xff&(mdata>>i*8);
    	}

    	for(i = 0; i<4;i++)
    	{
    		str[2*i] = smdata[i]>>4;
    		str[2*i+1] = smdata[i]&0xf;
    	}

    	for(i = 0; i<8;i++)
		{
			sprintf(&send_buf[i+2],"%X/n",str[i]);
		}

    	//copy data to buf
    	pbuf_take(pq,(char*)send_buf,10);

    	//send udp data
    	udp_send(upcb,pq);

    	match_count = 0;
    }

    match_count = sscanf(receivebuf,"mwr 0x%x 0x%x", &maddr, &mdata);

	if(match_count == 2)
	{
		//allocate memory
		pq = pbuf_alloc(PBUF_TRANSPORT,2,PBUF_POOL);

		*(volatile unsigned int *)(maddr) = mdata;
		//Xil_Out32(maddr, mdata);
		//if(Xil_In32(maddr)==mdata)
		if(*(volatile unsigned int *)(maddr) = mdata)
		{
			send_buf[0]='O';
			send_buf[1]='K';
		}
		else
		{
			send_buf[0]='N';
			send_buf[1]='A';
		}

		//copy data to buf
		pbuf_take(pq,(char*)send_buf,2);

		//send udp data
		udp_send(upcb,pq);

		match_count = 0;
	}

	/* free the UDP connection, so we can accept new clients */
	udp_disconnect(upcb);

	/* Free the p buffer */
	pbuf_free(pq);
}
#endif

/**
  * @brief  Initialize the server application.
  * @param  None
  * @retval ErrNo
  */
int start_uecho_application(void)
{
    struct udp_pcb *upcb;
    err_t err;

    /* Create a new UDP control block  */
    upcb = udp_new();

    if (!upcb) {
    	udp_remove(upcb);
        xil_printf("Error creating PCB. Out of Memory\r\n");
        return -1;
    }

	/* Bind the upcb to the UDP_PORT port */
	/* Using IP_ADDR_ANY allow the upcb to be used by any local interface */
	err = udp_bind(upcb, IP_ADDR_ANY, echo_server_port);
    if (err != ERR_OK) {
        xil_printf("Unable to bind to port %d: err = %d\r\n", echo_server_port, err);
        return -2;
    }

    /* Set a receive callback for the upcb */
	udp_recv(upcb, udp_echoserver_receive_callback, NULL);

    echo_server_running = 1;

    return 0;
}

