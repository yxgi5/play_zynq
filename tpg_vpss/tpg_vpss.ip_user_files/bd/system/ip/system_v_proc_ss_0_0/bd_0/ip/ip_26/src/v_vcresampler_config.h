
#ifndef _V_VCRESAMPLER_CONFIG_H_
#define _V_VCRESAMPLER_CONFIG_H_

#define SAMPLES_PER_CLOCK       1
#define MAX_COLS                3840
#define MAX_ROWS                2160
#define MAX_DATA_WIDTH          8
#define NUM_VIDEO_COMPONENTS    3
#define CONVERT_TYPE            2
#if (CONVERT_TYPE == 2)
#define NUM_V_TAPS              4
#else
#define NUM_V_TAPS              0
#endif

#define BITS_PER_SAMPLE         (NUM_VIDEO_COMPONENTS*MAX_DATA_WIDTH)
#define BITS_PER_CLOCK          (BITS_PER_SAMPLE*SAMPLES_PER_CLOCK)

#define USE_URAM                0

#endif
