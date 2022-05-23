/*
 * Copyright (C) 2009 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <stdio.h>
#include <string.h>

#include "lwip/err.h"
#include "lwip/udp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

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
#if (LWIP_IPV6==0)
	xil_printf("\n\r\n\r-----lwIP UDP echo server ------\n\r");
#else
	xil_printf("\n\r\n\r-----lwIPv6 UDP echo server ------\n\r");
#endif
	xil_printf("TCP packets sent to port %d will be echoed back\n\r", echo_server_port);
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
