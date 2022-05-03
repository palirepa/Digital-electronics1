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

Cieľom projektu je vytvorenie UART rozhrania, teda UART vysielač a prijímač. Štruktúra UART rozhrania sme si zvolili 8N1 a prenosovú rýchlosť na 9600 Bd. 

UART vysielač komunikuje s UART rozhraním pomocou AsCII znakov a s doskou Nexys... pomocou 7-segmentovky, na ktorej sa zobrazuje hexadicimálna sustava.

UART vysielač plní funkciu konsole a 7-segmentovky. V konsole sa zobrazujú ASCII znaky a v 7-segmentovke zobrazuje hexadicimálna sústava.

<a name="hardware"></a>

## Hardware description

K realizácií sme použili dosku Nexys A7-50T. Doska Nexys A7-50T je kompletná platforma na vývoj digitálnych obvodov. Vďaka veľkému, vysokokapacitnému FPGA, veľkorysým externým pamäťám a kolekcii USB, Ethernet a ďalších portov môže Nexys A7 hostiť dizajny od úvodných kombinovaných obvodov až po výkonné vstavané procesory. Niekoľko vstavaných periférií, vrátane akcelerometra, teplotného senzora, digitálneho mikrofónu MEM, zosilňovača reproduktorov a niekoľkých I/O zariadení umožňuje použitie Nexys A7 pre širokú škálu dizajnov bez potreby ďalších komponentov.

<a name="modules"></a>

## VHDL modules description and simulations

Write your text here.

<a name="top"></a>

## TOP module description and simulations

Write your text here.

<a name="video"></a>

## Video

Write your text here

<a name="references"></a>

## References

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
14. https://projects.digilentinc.com/alexey-sudbin/uart-interface-in-vhdl-for-basys3-board-eef170
