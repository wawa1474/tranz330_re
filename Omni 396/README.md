# Verifone Omni 396 Reverse Engineering
Partial reverse engineering of an old Z180-based card terminal

# Systems Specs
* Z180 CPU at 12.288Mhz
* 128K Flash [Am29F010] (TSOP soldered to board)
* 512K battery backed RAM [M5M5408AFP-70LL]
* ???×??? dot matrix display?
* 4×4 keypad + 8
* Piezo speaker
* Card Reader ABA Track 1 and Track 2 or Track 2 and Track 3 reader
* Z84C90 KIO - Serial / Parallel / Counter / Timer
* OKI M6242B Real-time calendar/clock chip
* RS-232 serial port, 8-pin DIN connector
* RS-232 serial printer port, 8-pin DIN connector
* Accessory serial port, 6-pin DIN connector
* RC2424DPL modem
* Internal lithium battery backup for RAM and RTC

# GAL chips
* U9
* U12
* both are PALCE16V8Q-25

# Zilog Z8 microcontroller
* its on the display board
* assuming its like the one in the Tranz 380
* it does mag card decoding

Released under the Creative Commons Share Alike (CC-BY-SA) License. Share it, change it, make money on it, teach it to the children as a cautionary tale. Just make your changes public and give credit to all contributors to this project.