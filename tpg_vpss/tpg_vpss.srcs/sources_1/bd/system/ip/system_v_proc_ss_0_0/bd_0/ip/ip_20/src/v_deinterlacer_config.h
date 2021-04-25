
#ifndef _V_DEINTERLACER_CONFIG_H_
#define _V_DEINTERLACER_CONFIG_H_

#define SAMPLES_PER_CLOCK       1		// 1, 2, 4
#define NR_COMPONENTS			3
#define BITS_PER_COMPONENT		8
#define BITS_PER_SAMPLE         (NR_COMPONENTS*BITS_PER_COMPONENT)

#define BITS_PER_CLOCK			(BITS_PER_SAMPLE*SAMPLES_PER_CLOCK)

#define ENABLE_AXI4MM_INTF	1
#define AXIMM_NUM_OUTSTANDING   16
#define AXIMM_BURST_LENGTH      16
#define ENABLE_420				0 

// maximum image size of input.
#define MAX_DEINT_WIDTH         1920
#define MAX_DEINT_HEIGHT        540 
#define MAX_WIDTH           4096
#define MAX_HEIGHT          2160

#define USE_URAM                0

#endif
