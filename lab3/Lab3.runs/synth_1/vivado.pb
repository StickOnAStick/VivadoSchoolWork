
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:062	
514.4452	
200.238Z17-268h px� 
�
Command: %s
1870*	planAhead2h
fread_checkpoint -auto_incremental -incremental D:/Vivado/lab3/Lab3.srcs/utils_1/imports/synth_1/tb.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead29
7D:/Vivado/lab3/Lab3.srcs/utils_1/imports/synth_1/tb.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top tb -part xc7a100tcsg324-3Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
7280Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 976.613 ; gain = 451.551
h px� 
�
synthesizing module '%s'%s4497*oasys2
tb2
 2,
(C:/Users/nndim/Downloads/Lab3/Lab3/tb.sv2
238@Z8-6157h px� 
�
+always block has no event control specified85*oasys2,
(C:/Users/nndim/Downloads/Lab3/Lab3/tb.sv2
318@Z8-85h px� 
�
synthesizing module '%s'%s4497*oasys2
cpu2
 21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
238@Z8-6157h px� 
�
!system %s call '%s' not supported38048*oasys2

function2
fopen21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
818@Z8-11581h px� 
�
!system %s call '%s' not supported38048*oasys2

function2
fopen21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
828@Z8-11581h px� 
�
!system %s call '%s' not supported38048*oasys2
task2

fdisplay21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
1008@Z8-11581h px� 
{
default block is never used226*oasys21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
1728@Z8-226h px� 
{
default block is never used226*oasys21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
2188@Z8-226h px� 
�
!system %s call '%s' not supported38048*oasys2
task2

fdisplay21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
2998@Z8-11581h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cpu2
 2
02
121
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
rom2
 2-
)C:/Users/nndim/Downloads/Lab3/Lab3/rom.sv2
38@Z8-6157h px� 
N
%s
*synth26
4	Parameter addr_width bound to: 32 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter data_width bound to: 32 - type: integer 
h p
x
� 
[
%s
*synth2C
A	Parameter init_file bound to: addi_nohazard.dat - type: string 
h p
x
� 
�
%s, ignoring3604*oasys2~
|could not open $readmem data file 'addi_nohazard.dat'; please make sure the file is added to project and has read permission2-
)C:/Users/nndim/Downloads/Lab3/Lab3/rom.sv2
138@Z8-4445h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rom2
 2
02
12-
)C:/Users/nndim/Downloads/Lab3/Lab3/rom.sv2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ram2
 2-
)C:/Users/nndim/Downloads/Lab3/Lab3/ram.sv2
38@Z8-6157h px� 
N
%s
*synth26
4	Parameter addr_width bound to: 32 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter data_width bound to: 32 - type: integer 
h p
x
� 
S
%s
*synth2;
9	Parameter init_file bound to: dummy.dat - type: string 
h p
x
� 
�
%s, ignoring3604*oasys2v
tcould not open $readmem data file 'dummy.dat'; please make sure the file is added to project and has read permission2-
)C:/Users/nndim/Downloads/Lab3/Lab3/ram.sv2
178@Z8-4445h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ram2
 2
02
12-
)C:/Users/nndim/Downloads/Lab3/Lab3/ram.sv2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tb2
 2
02
12,
(C:/Users/nndim/Downloads/Lab3/Lab3/tb.sv2
238@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
cc_counter_reg21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
878@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
IF_ID_PC_reg21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
1078@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ID_EX_PC_reg21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
1188@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
EX_MEM_PC_reg21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
1558@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
EX_MEM_MemRead_reg21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
1598@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
MEM_WB_PC_reg21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
2758@Z8-6014h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
EX_MEM_MemData_reg2
cpu21
-D:/Vivado/lab3/Lab3.srcs/sources_1/new/cpu.sv2
748@Z8-7137h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[31]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[30]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[29]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[28]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[27]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[26]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[25]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[24]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[23]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[22]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[21]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[20]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[19]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[18]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[17]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[16]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[15]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[14]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[13]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[12]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[11]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

data[10]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[9]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[8]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[7]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[6]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[5]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[4]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[3]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[2]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[1]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
data[0]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[31]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[30]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[29]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[28]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[27]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[26]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[25]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[24]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[23]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[22]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[21]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[20]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[19]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[18]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[17]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[16]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[15]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[14]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[13]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[12]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[11]2
romZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2

addr[10]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[9]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[8]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[7]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[6]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[5]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[4]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[3]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[2]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[1]2
romZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
addr[0]2
romZ8-7129h px� 
�
%s*synth2v
tFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1090.805 ; gain = 565.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1090.805 ; gain = 565.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-3
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1090.805 ; gain = 565.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
Loading part %s157*device2
xc7a100tcsg324-3Z21-403h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1090.805 ; gain = 565.742
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 39    
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 3     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
V
%s
*synth2>
<	               64 Bit	(2 X 32 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 34    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-3Z21-9227h px� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
+
%s*synth2
+-+-----+------+
h px� 
+
%s*synth2
| |Cell |Count |
h px� 
+
%s*synth2
+-+-----+------+
h px� 
+
%s*synth2
+-+-----+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|      |Instance |Module |Cells |
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
<
%s
*synth2$
"|1     |top      |       |     0|
h p
x
� 
<
%s
*synth2$
"+------+---------+-------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 2 critical warnings and 77 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1294.168 ; gain = 769.105
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1294.1682
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1392.6802
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

c283ca59Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252
772
22
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:192

00:00:202

1392.6802	
873.906Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
|
 The %s '%s' has been generated.
621*common2

checkpoint2)
'D:/Vivado/lab3/Lab3.runs/synth_1/tb.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2O
Mreport_utilization -file tb_utilization_synth.rpt -pb tb_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Nov  4 21:10:04 2024Z17-206h px� 


End Record