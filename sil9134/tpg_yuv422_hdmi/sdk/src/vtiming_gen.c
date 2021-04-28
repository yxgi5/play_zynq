
// *****************************************************
// Dependencies
// *****************************************************
#include "vtiming_gen.h"
#include "video_resolution.h"

// *****************************************************
// Public functions
// *****************************************************
void vtiming_gen_run
(
	XVtc* p_vtg_inst,
	int   resolution_id,
	int   verbose
)
{
	// Local variables
	vres_timing_t     VideoTiming;
	int               HFrontPorch;
	int               HSyncWidth;
	int               HSyncPol;
	int               HBackPorch;
	int               VFrontPorch;
	int               VSyncWidth;
	int               VSyncPol;
	int               VBackPorch;
	int               LineWidth;
	int               FrameHeight;
	XVtc_Signal       Signal;
	XVtc_Polarity     Polarity;
	XVtc_SourceSelect SourceSelect;

	// Get Video Resolution timing
    if (verbose)
    {
		xil_printf("\tVideo Resolution = %s\n\r", vres_get_name(resolution_id));
	}
	vres_get_timing(resolution_id, &VideoTiming);
	HFrontPorch = VideoTiming.HFrontPorch;
	HSyncWidth  = VideoTiming.HSyncWidth;
	HSyncPol    = VideoTiming.HSyncPolarity;
	HBackPorch  = VideoTiming.HBackPorch;
	VFrontPorch = VideoTiming.VFrontPorch;
	VSyncWidth  = VideoTiming.VSyncWidth;
	VSyncPol    = VideoTiming.VSyncPolarity;
	VBackPorch  = VideoTiming.VBackPorch;
	LineWidth   = VideoTiming.HActiveVideo;
	FrameHeight = VideoTiming.VActiveVideo;

	// Disable/Reset VTC
	XVtc_Disable(p_vtg_inst);
	XVtc_Reset(p_vtg_inst);

    // Set up Polarity of all outputs
	memset((void *)&Polarity, 0, sizeof(Polarity));
	Polarity.ActiveChromaPol = 1;
	Polarity.ActiveVideoPol  = 1;
	Polarity.FieldIdPol      = 0;
	Polarity.VBlankPol       = 1;
	Polarity.VSyncPol        = VSyncPol;
	Polarity.HBlankPol       = 1;
	Polarity.HSyncPol        = HSyncPol;

	// Set up Generator
	memset((void *)&Signal, 0, sizeof(XVtc_Signal));
	Signal.OriginMode        = 1; //Set Frame Origin to Start of Active Video
	Signal.HTotal            = HFrontPorch + HSyncWidth + HBackPorch + LineWidth;
	Signal.HActiveStart      = 0;
	Signal.HFrontPorchStart  = LineWidth;
	Signal.HSyncStart        = LineWidth + HFrontPorch;
	Signal.HBackPorchStart   = LineWidth + HFrontPorch + HSyncWidth;
	Signal.V0Total           = FrameHeight + VFrontPorch + VSyncWidth + VBackPorch;
	Signal.V0ChromaStart     = 0;
	Signal.V0ActiveStart     = 0;
	Signal.V0FrontPorchStart = FrameHeight;
	Signal.V0SyncStart       = FrameHeight + VFrontPorch;
	Signal.V0BackPorchStart  = FrameHeight + VFrontPorch + VSyncWidth;

	// Set up source select
	memset((void *)&SourceSelect, 0, sizeof(SourceSelect));
	SourceSelect.VBlankPolSrc       = 1;
	SourceSelect.VSyncPolSrc        = 1;
	SourceSelect.HBlankPolSrc       = 1;
	SourceSelect.HSyncPolSrc        = 1;
	SourceSelect.ActiveVideoPolSrc  = 1;
	SourceSelect.ActiveChromaPolSrc = 1;
	SourceSelect.VChromaSrc         = 1;
	SourceSelect.VActiveSrc         = 1;
	SourceSelect.VBackPorchSrc      = 1;
	SourceSelect.VSyncSrc           = 1;
	SourceSelect.VFrontPorchSrc     = 1;
	SourceSelect.VTotalSrc          = 1;
	SourceSelect.HActiveSrc         = 1;
	SourceSelect.HBackPorchSrc      = 1;
	SourceSelect.HSyncSrc           = 1;
	SourceSelect.HFrontPorchSrc     = 1;
	SourceSelect.HTotalSrc          = 1;

	if ( verbose == 2 )
	{
		xil_printf("\tVTC Generator Configuration\n\r" );
		xil_printf("\t\tHorizontal Timing:\n\r" );
		xil_printf("\t\t\tHActiveStart = %d\r\n", Signal.HActiveStart);
		xil_printf("\t\t\tHFrontPorchStart %d\r\n", Signal.HFrontPorchStart);
		xil_printf("\t\t\tHSyncStart %d\r\n", Signal.HSyncStart);
		xil_printf("\t\t\tHBackPorchStart %d\r\n", Signal.HBackPorchStart);
		xil_printf("\t\t\tHTotal = %d\r\n", Signal.HTotal);
		xil_printf("\t\tVertical Timing:\n\r" );
		xil_printf("\t\t\tV0ActiveStart %d\r\n", Signal.V0ActiveStart);
		xil_printf("\t\t\tV0FrontPorchStart %d\r\n", Signal.V0FrontPorchStart);
		xil_printf("\t\t\tV0SyncStart %d\r\n", Signal.V0SyncStart);
		xil_printf("\t\t\tV0BackPorchStart %d\r\n", Signal.V0BackPorchStart);
		xil_printf("\t\t\tV0Total %d\r\n", Signal.V0Total);
	}

	// Write configuration to hardware
	XVtc_SetPolarity(p_vtg_inst, &Polarity);
	XVtc_SetGenerator(p_vtg_inst, &Signal);
	XVtc_SetSource(p_vtg_inst, &SourceSelect);

	// Enable the generator module
	XVtc_DisableSync(p_vtg_inst);
	XVtc_Enable(p_vtg_inst);
	XVtc_RegUpdate(p_vtg_inst);
}
