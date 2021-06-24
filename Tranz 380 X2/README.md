# Verifone Tranz 380 X2 Reverse Engineering
Partial reverse engineering of an old Z180-based Point-Of-Service Terminal

The Tranz 380 X2 has a Z180 microcontroller at its heart and can act as two different machines

I want to end up with a reference that's useful for writing software.

# Systems Specs
* Z-180 MPU at 6.144 MHz (12.288 Mhz crystal /2)
* 3 GAL16v8 to do decoding and other stuff
* 64K ROM, in a socket for easy replacement
* 128K battery backed RAM
* 16 character, 14 segment vacuum fluorescent alphanumeric display
* 16 key 4×4 keypad
* Piezo speaker
* Magnetic stripe card reader, Tracks 1/2 or 2/3
* Z-80 PIO, parallel port interface
* Z-80 SIO/0, serial port interface
* Z-80 CTC, counter/timer
* OKI M6242B Real-time calendar/clock chip
* Micrel MIC10937 display controller
* RS-232 serial port, 8-pin DIN connector
* Accessory serial port, 6-pin DIN connector
* 73K212L-IP single chip 1200 bps modem
* Internal lithium battery backup for RAM

Released under the Creative Commons Share Alike (CC-BY-SA) License. Share it, change it, make money on it, teach it to the children as a cautionary tale. Just make your changes public and give credit to all contributors to this project.
