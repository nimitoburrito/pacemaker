# COMPSYS 303 Pacemaker 
Project files for a DDD mode pacemaker for a NIOS II processor.  This document  is a guide to run the pacemaker model provided in this folder. 

## Requirements
 
 ### Software 

#### To run

 - Programmer (Quartus Prime 18.1)
 - Nios II Software Build Tools for Eclipse (Quartus Prime 18.1)
 - nios2_system.sopcifo, lab1_time_limited.sof
 - pacemaker, pacemaker_bsp. These are both folders in the directory containing this README file

#### To test with UART

 - CS303-Heart.exe
 - PuTTY

 ### Hardware 
 - Altera DE2-115 FPGA Development Board

 ## Setup Steps

1. Acquire (and install) all the required software and hardware components. 

2. Go to Tools -> Programmer (Quartus Prime 18.1) to flash your FPGA board with the NIOS II processor using the ``lab1_time_limited.sof`` file. Only select the Program/Configure toggle.

3. Use the Nios II Software Build Tools for Eclipse (Quartus Prime 18.1) to program the FPGA board which now has a NIOS II processor on it. Create a new project and use nios2_system.sopcifo as the SOPC Information File name. You should be able to see 'cpu' as the CPU name.  

## Usage 
The pacemaker has 4 different modes 

| Mode | Logic     | Communication |
|----- |-----------|---------------|
| 1    | SCCharts  | Buttons       |
| 2    | SCCharts  | UART          |
| 3    | Pure C    | Buttons       |
| 4    | Pure C    | UART          |

### Switches
The red lights above the switches will be on when the switch is in the ``UP`` position. The switch in position 0 will be the right most one (SW0).

### Switch 0

|    Switch Position     |Communication Mode|
|------------------------|------------------|
|``UP``                  |UART Mode         |
|``DOWN``                |Buttons Mode      |

### Switch 1

|    Switch Position     |Logic Mode  |
|------------------------|------------|
|``UP``                  |C	          |
|``DOWN``                |SCCharts    |

### Buttons 

(These only work in ``Buttons`` mode)
|Button Number | Function          |
|--------------|-------------------|
|``0``         | Ventricular Sense |
|``1``         | Atrial Sense      |
|``2``	       | Reset             |		

### LEDs

#### Green LEDs

Note that 0 is the right most green LED. 

| LED number | Signal|
|-------|-------------------|
| ``0`` | Ventricular Pulse |
| ``2`` | Atrial Pulse      |

#### Red LEDs

Note that 0 is the right most green LED. 

| LED number | Signal|
|-------|-------------------|
| ``0`` | UART Mode         |
| ``1`` | C Mode            |
| ``3`` | Paused/Reset      |


### UART

In order to use the pacemaker in UART mode you must use a baud rate of ``115200``. To signal an Atrial Sense you must transmit the character ``'A'`` and for a Ventricular Sense ``'V'``. The pacemaker will in turn transmit the character ``'A'`` for an Atrial pulse and ``'V'`` for a Ventricular pulse. Note that the pacemaker needs to be in ``UART`` mode for it to react to UART input. When using the CS303-Heart.exe or PuTTY, you must find out what COM port the board is connected to under Device Manager, and type that along with the baud rate into the programs to connect to the board. The heart program has toggles for simulating different arrythmias that the user can play around with. 