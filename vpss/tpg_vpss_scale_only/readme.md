1. open vivado
2. in the tcl shell, cd to vivado folder
3. in the tcl shell, source create_proj.tcl
4. build vivado project
5. export hdf to sdk/hdf folder
6. open xsct shell, cd to sdk folder
7. source create_SW_proj.tcl

# tpg_vpss_scale_only

## Mainmenu

Select an option:

1. Change TPG background

2. Enable/Disable TPG moving box

3. Change input resolution

4. Change output resolution

5. Show VPSS log

6. AXI4-Stream to Video Out status

z. Display this menu again

## Resolutions

Default input resolution: 640x480_60_P

Default output resolution: 1920x1080_60_P

In this proj it's 7 resolution options and corresponding pclk frequencies

```
		{XVIDC_VM_1920x1080_60_P, 	CLKWIZ_CLKOUT0_148_5_MHz},
		{XVIDC_VM_1280x1024_60_P,	CLKWIZ_CLKOUT0_108_MHz},
		{XVIDC_VM_1280x960_60_P,	CLKWIZ_CLKOUT0_108_MHz},
		{XVIDC_VM_1280x720_60_P, 	CLKWIZ_CLKOUT0_74_25_MHz},
		{XVIDC_VM_1024x768_60_P,	CLKWIZ_CLKOUT0_65_MHz},
		{XVIDC_VM_800x600_60_P,		CLKWIZ_CLKOUT0_40_MHz},
		{XVIDC_VM_640x480_60_P,		CLKWIZ_CLKOUT0_25_175MHz}
```

## Background pattern:

1. Horizontal Ramp

2. Vertical Ramp

3. Temporal Ramp

4. Solid Red

5. Solid Blue

6. Solid Green

7. Solid Black

8. Solid White

9. Color Bar


