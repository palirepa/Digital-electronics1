# UART interface

### Team members

* Jakub Brandejs (debug, video editor, code editor)
* Jakub Ďuráč (debug, simulation, code editor)
* Adam Popelka (debug, video editor, research, code editor)
* Pavol Repa (debug, github, research, code editor)

### Table of contents

* [Project objectives](#objectives)
* [Hardware description](#hardware)
* [VHDL modules description and simulations](#modules)
* [TOP module description and simulations](#top)
* [Video](#video)
* [References](#references)

<a name="objectives"></a>

## Project objectives

Cieľom projektu je vytvorenie UART rozhrania (UART vysielač a prijímač). Štruktúra UART rozhrania sme si zvolili 8N1 a prenosovú rýchlosť na 9600 Bd. V konzole na počítači sa zobrazujú ASCII znaky a zároveň na 7-segmentovke zobrazujeme nami nastavené ASCII znaky, v našom prípade zobrazujeme iba vybrané znaky.

<a name="hardware"></a>

## Hardware description

K realizácií sme použili dosku Nexys A7-50T. Doska Nexys A7-50T je kompletná platforma na vývoj digitálnych obvodov. Vďaka veľkému, vysokokapacitnému FPGA, veľkorysým externým pamäťám a kolekcii USB, Ethernet a ďalších portov môže Nexys A7-50T hostiť dizajny od úvodných kombinovaných obvodov až po výkonné vstavané procesory. Obsahuje niekoľko vstavaných periférií, vrátane akcelerometra, teplotného senzora, digitálneho mikrofónu MEM, zosilňovača reproduktorov a niekoľkých I/O zariadení. 

Doska Nexys A7-50T nám umožňuje použiť 7-segmetovku, vďaka ktorej môžeme zobraziť znaky ASCII tabuľky.
Program Tera Term sme použili pre sledovanie seriovej komunikacie medzi konzolou počítača a doskou Nexys A7-50T. 
Nexys A7 obsahuje USB-UART most, ktorý umožňuje používať PC aplikácie na komunikáciu s doskou pomocou štandardných príkazov Windows COM portu.

![image](https://user-images.githubusercontent.com/99768688/166651231-239da1c5-a3ce-4d95-865f-c8242e24acb8.png)


<img src="https://user-images.githubusercontent.com/99768688/166742789-a4431692-7401-490b-a010-73c9211c31da.png" width=60% height=60%>


<a name="modules"></a>

## VHDL modules description and simulations

### top.vhd
Hlavný súbor, ktorý spája program s ostatnými modulmi.
[top.vhd](https://github.com/palirepa/digital-electronics-1/blob/main/labs/project/UART/project.srcs/sources_1/new/top.vhd)

### UART_tx.vhd
Obsahuje všetku logiku vysielača. Je to vysielací modul, vyšle dáta, ktoré posiela smerom k vysielaču.
[UART_tx.vhd](https://github.com/palirepa/digital-electronics-1/blob/main/labs/project/UART/project.srcs/sources_1/new/UART_tx.vhd)

### UART_rx.vhd
Obsahuje všetku logiku prijímača. Je to prijímací modul, spracováva prijaté dáta.
[UART_rx.vhd](https://github.com/palirepa/digital-electronics-1/blob/main/labs/project/UART/project.srcs/sources_1/new/UART_rx.vhd)

### button_debounce.vhd 
Aby sme mohli poslať bity z dosky Nexys A7-50T do konzole, museli sme si vytvoriť prídavný súbor, ktorým sme schopný posielať bity do konzole.
[button_debounce.vhd](https://github.com/palirepa/digital-electronics-1/blob/main/labs/project/UART/project.srcs/sources_1/new/button_debounce.vhd)

### segment.vhd 
Tu sme si napisali kod na zobrazenie segmentovky.
[segment.vhd](https://github.com/palirepa/digital-electronics-1/edit/main/labs/project/UART/project.srcs/sources_1/new/segment.vhd)

### top_tb.vhd
Top_tb zabezpečuje chod celého programu.
[top_tb.vhd](https://github.com/palirepa/digital-electronics-1/blob/main/labs/project/UART/project.srcs/sim_1/new/top_tb.vhd)

### Simulácia

![image](https://user-images.githubusercontent.com/99768688/166811542-d5cb8ae8-e453-49aa-97f4-ff2c6640c485.png)

<a name="top"></a>

## TOP module description and simulations

![image](https://user-images.githubusercontent.com/99768688/166658513-417383af-fad0-4362-b256-01d167c282bd.png)

<a name="video"></a>

## Video

Write your text here

<a name="references"></a>

## References

1. https://github.com/tomas-fryza/digital-electronics-2/tree/master/labs/07-uart
2. https://www.youtube.com/watch?v=dQw4w9WgXcQ
3. https://www.mikrocontroller.net/attachment/9036/ALSE_UART_us.pdf
4. https://www.pantechsolutions.net/vhdl-code-for-uart-serial-communication
5. https://www.mikrocontroller.net/attachment/9036/ALSE_UART_us.pdf
6. https://www.instructables.com/Design-of-UART-in-VHDL/
7. https://www.nandland.com/vhdl/modules/module-uart-serial-port-rs232.html
8. https://projects.digilentinc.com/alexey-sudbin/uart-interface-in-vhdl-for-basys3-board-eef170
9. https://forum.digikey.com/t/uart-vhdl/12670
10. https://github.com/jakubcabal/uart-for-fpga
11. http://esd.cs.ucr.edu/labs/uart/uart.html
12. http://ece-research.unm.edu/jimp/vhdl_fpgas/slides/UART.pdf
13. https://ieeexplore.ieee.org/document/5873448
14. https://jit.sirim.my/Volume/Volume%2011%20No.2%202002/design_of_a_mini-uart_using_vhdl.pdf
15. https://www.researchgate.net/publication/254034888_VHDL_implementation_of_UART_with_status_register
16. https://academic.csuohio.edu/chu_p/rtl/fpga_vhdl_book/fpga_vhdl_sample_chapter.pdf
