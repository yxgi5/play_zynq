#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#define LED0 (78+0)
#define LED1 (78+1)
#define LED2 (0)
#define LED3 (1)


int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    cleanup_platform();
    return 0;
}
