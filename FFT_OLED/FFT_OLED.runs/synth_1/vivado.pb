
z
Command: %s
53*	vivadotcl2I
5synth_design -top oledCtrl_test -part xc7z020clg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
103242default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1190.648 ; gain = 63.934
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2!
oledCtrl_test2default:default2
 2default:default2d
NF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/oledCtrl_test.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	debouncer2default:default2
 2default:default2a
KF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/debouncer.sv2default:default2
232default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter MAX_DELAY bound to: 20 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2default:default2
 2default:default2
12default:default2
12default:default2a
KF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/debouncer.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
oledCtrl2default:default2
 2default:default2`
JF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/oledCtrl.sv2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
SPI_ctrl2default:default2
 2default:default2`
JF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/SPI_ctrl.sv2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SPI_ctrl2default:default2
 2default:default2
22default:default2
12default:default2`
JF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/SPI_ctrl.sv2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

delay100ms2default:default2
 2default:default2b
LF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/delay100ms.sv2default:default2
242default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter DELAY_CNT bound to: 10000000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

delay100ms2default:default2
 2default:default2
32default:default2
12default:default2b
LF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/delay100ms.sv2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
delay1ms2default:default2
 2default:default2`
JF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/delay1ms.sv2default:default2
242default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter DELAY_CNT bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
delay1ms2default:default2
 2default:default2
42default:default2
12default:default2`
JF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/delay1ms.sv2default:default2
242default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2`
JF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/oledCtrl.sv2default:default2
1172default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
oledCtrl2default:default2
 2default:default2
52default:default2
12default:default2`
JF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/oledCtrl.sv2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
oledCtrl_test2default:default2
 2default:default2
62default:default2
12default:default2d
NF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/sources_1/imports/new/oledCtrl_test.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1244.418 ; gain = 117.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1262.355 ; gain = 135.641
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:06 . Memory (MB): peak = 1262.355 ; gain = 135.641
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1262.3552default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2h
RF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/constrs_1/imports/new/oled_constraint.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 33]]2default:default2h
RF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/constrs_1/imports/new/oled_constraint.xdc2default:default2
3622default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 34]]2default:default2h
RF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/constrs_1/imports/new/oled_constraint.xdc2default:default2
3672default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 35]]2default:default2h
RF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/constrs_1/imports/new/oled_constraint.xdc2default:default2
3722default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 13]]2default:default2h
RF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/constrs_1/imports/new/oled_constraint.xdc2default:default2
3752default:default8@Z12-584h px? 
?
Finished Parsing XDC File [%s]
178*designutils2h
RF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/constrs_1/imports/new/oled_constraint.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2f
RF:/Xilinx/Project/FFT_OLED/FFT_OLED.srcs/constrs_1/imports/new/oled_constraint.xdc2default:default23
.Xil/oledCtrl_test_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1382.3952default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1382.3952default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
	debouncer2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
SPI_ctrl2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
oledCtrl2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                    RISE |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                    FALL |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2s
_                    HOLD |                               11 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
	debouncer2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                   FRONT |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                   SHIFT |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                    BACK |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
SPI_ctrl2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                 0000000000000001 |                            00000
2default:defaulth p
x
? 
?
%s
*synth2s
_               IDLEDELAY |                 0000000000000010 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_             PWRONDISOFF |                 0000000000000100 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_                     RES |                 0000000000001000 |                            00011
2default:defaulth p
x
? 
?
%s
*synth2s
_                CHGPUMP0 |                 0000000000010000 |                            00100
2default:defaulth p
x
? 
?
%s
*synth2s
_                CHGPUMP1 |                 0000000000100000 |                            00101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 PRECHG0 |                 0000000001000000 |                            00110
2default:defaulth p
x
? 
?
%s
*synth2s
_                 PRECHG1 |                 0000000010000000 |                            00111
2default:defaulth p
x
? 
?
%s
*synth2s
_                  VBATON |                 0000000100000000 |                            01000
2default:defaulth p
x
? 
?
%s
*synth2s
_                DISPCON0 |                 0000001000000000 |                            01001
2default:defaulth p
x
? 
?
%s
*synth2s
_                DISPCON1 |                 0000010000000000 |                            01010
2default:defaulth p
x
? 
?
%s
*synth2s
_               DISPLAYON |                 0000100000000000 |                            01011
2default:defaulth p
x
? 
?
%s
*synth2s
_                 SETFULL |                 0001000000000000 |                            01100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 RUNNING |                 0010000000000000 |                            01101
2default:defaulth p
x
? 
?
%s
*synth2s
_              DISPLAYOFF |                 0100000000000000 |                            01110
2default:defaulth p
x
? 
?
%s
*synth2s
_             PWROFFDELAY |                 1000000000000000 |                            01111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
oledCtrl2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  16 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    12|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     2|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    13|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    12|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    72|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |     9|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    35|
2default:defaulth px? 
D
%s*synth2,
|9     |FDCE   |    67|
2default:defaulth px? 
D
%s*synth2,
|10    |FDPE   |     1|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |    21|
2default:defaulth px? 
D
%s*synth2,
|12    |FDSE   |     3|
2default:defaulth px? 
D
%s*synth2,
|13    |IBUF   |     3|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUF   |     6|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:25 . Memory (MB): peak = 1382.395 ; gain = 135.641
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1382.395 ; gain = 255.680
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1385.4342default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
122default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1386.4492default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:352default:default2
00:00:362default:default2
1386.4492default:default2
259.7342default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2V
BF:/Xilinx/Project/FFT_OLED/FFT_OLED.runs/synth_1/oledCtrl_test.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
pExecuting : report_utilization -file oledCtrl_test_utilization_synth.rpt -pb oledCtrl_test_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon May 10 17:13:22 20212default:defaultZ17-206h px? 


End Record