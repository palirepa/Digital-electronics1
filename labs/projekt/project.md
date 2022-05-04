# UART interface

### Team members

* Jakub Brandejs (video editor, debug)
* Jakub Ďuráč (simulácia, debug)
* Adam Popelka (implementácia kódu do vivada)
* Pavol Repa (debug, github)

### Table of contents

* [Project objectives](#objectives)
* [Hardware description](#hardware)
* [VHDL modules description and simulations](#modules)
* [TOP module description and simulations](#top)
* [Video](#video)
* [References](#references)

<a name="objectives"></a>

## Project objectives

Cieľom projektu je vytvorenie UART rozhrania, teda UART vysielač a prijímač. Štruktúra UART rozhrania sme si zvolili 8N1 a prenosovú rýchlosť na 9600 Bd. UART prijímač plní funkciu konsole a 7-segmentovky. V konsole sa zobrazujú ASCII znaky a v 7-segmentovke zobrazuje hexadicimálna sústavu.

<a name="hardware"></a>

## Hardware description

K realizácií sme použili dosku Nexys A7-50T. Doska Nexys A7-50T je kompletná platforma na vývoj digitálnych obvodov. Vďaka veľkému, vysokokapacitnému FPGA, veľkorysým externým pamäťám a kolekcii USB, Ethernet a ďalších portov môže Nexys A7-50T hostiť dizajny od úvodných kombinovaných obvodov až po výkonné vstavané procesory. Obsahuje niekoľko vstavaných periférií, vrátane akcelerometra, teplotného senzora, digitálneho mikrofónu MEM, zosilňovača reproduktorov a niekoľkých I/O zariadení. 

Doska Nexys A7-50T nám umožňuje použiť 7-segmetovku, vďaka ktorej môžeme zobraziť čísla a znaky zo hexadicimálnej sústavy.
Program Tera Term sme použili ako konzolový pristup k ASCII znakom. 
Nexys A7 obsahuje USB-UART most, ktorý umožňuje používať PC aplikácie na komunikáciu s doskou pomocou štandardných príkazov Windows COM portu.

![image](https://user-images.githubusercontent.com/99768688/166651231-239da1c5-a3ce-4d95-865f-c8242e24acb8.png)

<a name="modules"></a>

## VHDL modules description and simulations

### top.vhd
Hlavný súbor, ktorý spája program s vonkajším svetom.


### UART_tx.vhd
Obsahuje všetku logiku vysielača. Je to vysielací modul, vyšle dáta, ktoré posiela smerom k vysielaču.

### UART_rx.vhd
Obsahuje všetku logiku prijímača. Je to prijímací modul, prijaté dáta spracuje.

### button_debounce.vhd
(Spája vysielacie tlačidlo so zvyškom projektu a zabraňuje viacnásobnému stlačeniu na jedno stlačenie.) 
Aby sme mohli poslať bity z dosky Nexys A7-50T do konzole, museli sme si vytvoriť prídavný súbor, ktorým sme schopný posielať bity do konzole.

### top_tb.vhd
Top_tb zabezpečuje chod celého programu.

<a name="top"></a>

## TOP module description and simulations

Write your text here.

<a name="video"></a>

## Video

Write your text here

<a name="references"></a>

## References

-----------------------------------
https://projects.digilentinc.com/alexey-sudbin/uart-interface-in-vhdl-for-basys3-board-eef170

1. https://www.mikrocontroller.net/attachment/9036/ALSE_UART_us.pdf
2. https://www.pantechsolutions.net/vhdl-code-for-uart-serial-communication
3. https://www.mikrocontroller.net/attachment/9036/ALSE_UART_us.pdf
4. https://www.instructables.com/Design-of-UART-in-VHDL/
5. https://www.nandland.com/vhdl/modules/module-uart-serial-port-rs232.html
6. https://forum.digikey.com/t/uart-vhdl/12670
7. https://github.com/jakubcabal/uart-for-fpga
8. http://esd.cs.ucr.edu/labs/uart/uart.html
9. http://ece-research.unm.edu/jimp/vhdl_fpgas/slides/UART.pdf
10. https://ieeexplore.ieee.org/document/5873448
11. https://jit.sirim.my/Volume/Volume%2011%20No.2%202002/design_of_a_mini-uart_using_vhdl.pdf
12. https://www.researchgate.net/publication/254034888_VHDL_implementation_of_UART_with_status_register
13. https://academic.csuohio.edu/chu_p/rtl/fpga_vhdl_book/fpga_vhdl_sample_chapter.pdf
