
#ifndef _V_HCRESAMPLER_CONFIG_H_
#define _V_HCRESAMPLER_CONFIG_H_

#define SAMPLES_PER_CLOCK       1
#define MAX_COLS                3840
#define MAX_ROWS                2160
#define MAX_DATA_WIDTH          8
#define CONVERT_TYPE            2
#if (CONVERT_TYPE == 2)
#define NUM_H_TAPS              4
#else
#define NUM_H_TAPS              0
#endif

#define NUM_VIDEO_COMPONENTS    3
#define BITS_PER_SAMPLE         (NUM_VIDEO_COMPONENTS*MAX_DATA_WIDTH)
#define BITS_PER_CLOCK          (BITS_PER_SAMPLE*SAMPLES_PER_CLOCK)

#endif
