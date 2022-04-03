
#ifndef SRC_CONFIG_H_
#define SRC_CONFIG_H_

#define P1080 1

//#define P1080FPS30

#if P1080 == 1

#define VIDEO_COLUMNS 1920
#define VIDEO_ROWS 1080
#define VIDEO_STRIDE 1920

#else

#define VIDEO_COLUMNS 1280
#define VIDEO_ROWS 720
#define VIDEO_STRIDE 1280

#endif

//#if P1080 == 1
//#define HORSIZE 1920*4
//#define VERSIZE 1080
//#else
//#define HORSIZE 1280*4
//#define VERSIZE 720
//#endif
//
//#define DEMO_PATTERN_0 0
//#define DEMO_PATTERN_1 1
//#define DEMO_PATTERN_2 2
//#define DEMO_PATTERN_3 3
//#define DEMO_PATTERN_4 4
//#define DEMO_PATTERN_5 5
//#if P1080 == 1
//#define DEMO_MAX_FRAME (1920*1080*4) //(1920*1080*4)
//#define DEMO_STRIDE (1920 * 4)
//#else
//#define DEMO_MAX_FRAME (1280*720*4) //(1920*1080*4)
//#define DEMO_STRIDE (1280 * 4)
//#endif
//#define DISPLAY_NUM_FRAMES 3

#endif /* SRC_CONFIG_H_ */
