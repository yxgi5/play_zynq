#include <stdio.h>
#include "xparameters.h"
#include "netif/xadapter.h"
#include "platform.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/tcp.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "sleep.h"
#include "AXI_LITE_REG.h"
#if LWIP_IPV6==1
#include "lwip/ip.h"
#else
#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif
#endif

#include "version.h"

#define LED0 (78+0)
#define LED1 (78+1)
#define LED2 (0)
#define LED3 (1)

//#define U8 unsigned char
//#define U16 unsigned int
//#define U32 unsigned long int
//#define S8 signed char
//#define S16 signed int
#define BIT(x) (1 << (x)) 	//选择某一位
#define BIT32(x) ((uint32_t)1 << (x)) 	//选择某一位
#define STB(p,b) ((p)|=(b)) //置位
#define CLB(p,b) ((p)&=~(b)) //清位
#define FLB(p,b) ((p)^=(b)) //flip bit
#define CHB(p,b) ((p) & (b)) //测试某一位是否是1

#define mdelay(msecs)		usleep(1000*msecs)
#define udelay(usecs)		usleep(usecs)

#define ARRAY_SIZE(ar)		(sizeof(ar)/sizeof(ar[0]))

XGpio XGpioInst;
XGpioPs  gpiops_inst;

/* defined by each RAW mode application */
void print_app_header();
int start_udp_application();
void transfer_data();
void tcp_fasttmr(void);
void tcp_slowtmr(void);

/* missing declaration in lwIP */
void lwip_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;

#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));

}
#else
void
print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif

int xgpio_init(void)
{
	int Status ;

	u32 ret;

	Status = XGpio_Initialize(&XGpioInst, XPAR_GPIO_0_DEVICE_ID) ;
	if (Status != XST_SUCCESS)
	{
		return XST_FAILURE ;
	}

	/* set as output */
	XGpio_SetDataDirection(&XGpioInst, 1, 0x0);
	XGpio_DiscreteWrite(&XGpioInst, 1, 0x3);

	return XST_SUCCESS ;
}

int emio_init(void)
{
	int Status ;
	XGpioPs_Config *gpiops_cfg_ptr;

	gpiops_cfg_ptr = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&gpiops_inst, gpiops_cfg_ptr, gpiops_cfg_ptr->BaseAddr);
	if(Status!= XST_SUCCESS)
	{
		return(XST_FAILURE);
	}

	XGpioPs_SetDirectionPin(&gpiops_inst, LED0, 1);
	XGpioPs_SetDirectionPin(&gpiops_inst, LED1, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, LED0, 1);
	XGpioPs_SetOutputEnablePin(&gpiops_inst, LED1, 1);
	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
	XGpioPs_WritePin(&gpiops_inst, LED1, 1);

	return XST_SUCCESS ;
}

void transfer_data()
{
	transfer_udp_data();
	transfer_tftp_data();
	upgradeFlashThread();
}

int main()
{
#if LWIP_IPV6==0
	ip_addr_t ipaddr, netmask, gw;
#endif
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	echo_netif = &server_netif;

	u32 ret;

#ifdef XPAR_AXI_LITE_REG_NUM_INSTANCES
	if(XPAR_AXI_LITE_REG_0_DEVICE_ID==0)
	{
		printf("hardware ver = 0x%08x\n", AXI_LITE_REG_mReadReg(XPAR_AXI_LITE_REG_0_S00_AXI_BASEADDR, \
				AXI_LITE_REG_S00_AXI_SLV_REG0_OFFSET));
	}
#endif
	printf("software ver = 0x%08x\n", __SW_VER__);

    init_platform();
    xgpio_init();
    emio_init();

#if LWIP_IPV6==0
#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	/* initialize IP addresses to be used */
	IP4_ADDR(&ipaddr,  192, 168,   1, 10);
	IP4_ADDR(&netmask, 255, 255, 255,  0);
	IP4_ADDR(&gw,      192, 168,   1,  1);
#endif
#endif
	print_app_header();
	lwip_init();

#if (LWIP_IPV6 == 0)
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
#else
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, NULL, NULL, NULL, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	echo_netif->ip6_autoconfig_enabled = 1;

	netif_create_ip6_linklocal_address(echo_netif, 1);
	netif_ip6_addr_set_state(echo_netif, 0, IP6_ADDR_VALID);

	print_ip6("\n\rBoard IPv6 address ", &echo_netif->ip6_addr[0].u_addr.ip6);

#endif
	netif_set_default(echo_netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(echo_netif);

#if (LWIP_IPV6 == 0)
#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 24;

	while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0))
		xemacif_input(echo_netif);

	if (dhcp_timoutcntr <= 0) {
		if ((echo_netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
			IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
#endif

	print_ip_settings(&ipaddr, &netmask, &gw);

#endif
	/* start the application (web server, rxtest, txtest, etc..) */
	start_udp_application();
	start_tftp_application();

    while(1)
    {
    	if (TcpFastTmrFlag)
    	{
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag)
		{
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(echo_netif);
		transfer_data();

//    	XGpioPs_WritePin(&gpiops_inst, LED0, 0);
//    	XGpioPs_WritePin(&gpiops_inst, LED1, 1);
//    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
//    	STB(ret,BIT32(LED2));
//    	STB(ret,BIT32(LED3));
//    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
//
//    	sleep(1);
//
//    	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
//    	XGpioPs_WritePin(&gpiops_inst, LED1, 0);
//    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
//    	STB(ret,BIT32(LED2));
//    	STB(ret,BIT32(LED3));
//    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
//
//    	sleep(1);
//
//    	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
//    	XGpioPs_WritePin(&gpiops_inst, LED1, 1);
//    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
//    	CLB(ret,BIT32(LED2));
//    	STB(ret,BIT32(LED3));
//    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
//
//    	sleep(1);
//
//    	XGpioPs_WritePin(&gpiops_inst, LED0, 1);
//    	XGpioPs_WritePin(&gpiops_inst, LED1, 1);
//    	ret=XGpio_GetDataDirection(&XGpioInst, 1);
//    	STB(ret,BIT32(LED2));
//    	CLB(ret,BIT32(LED3));
//    	XGpio_DiscreteWrite(&XGpioInst, 1, ret);
//
//    	sleep(1);
    }

    /* never reached */
    cleanup_platform();

    return 0;
}
