# Verifone Tranz 330 Reverse Engineering
Partial reverse engineering of an old Z80-based card terminal

This repo is for reverse engineered schematics and other
stuff that might be helpful for developing replacement software
for the Verifone Tranz 330 credit card terminal.

The Tranz 330 has a Z80 microprocessor at its heart and uses
design conventions and peripherals often found in Z80 based
computers.  Although it's compact, it has a socketed EPROM and
DIP packaged components for all but a few logic ICs, making it
easy to work on.  And since they do not have the security
features needed for modern credit card processing bureaus, they
are available cheaply on the used market.

The mainboard and the display board are fully reverse engineered.

I want to end up with a reference that's useful for writing software
and tacking on hardware.

If you want to get started writing for the Tranz 330 now, check out
Big Mess O' Wires work at
https://www.bigmessowires.com/2011/05/10/mapping-the-tranz-330/

# Systems Specs
* Z-80 CPU at 3.57954 MHz
* 32K ROM, in a socket for easy replacement
* 32K RAM
* 16 character, 14 segment vacuum fluorescent alphanumeric display
* 16 key 4×4 keypad
* Piezo speaker
* Magnetic stripe card reader, ISO 7813 Track 2 format
* Z-80 PIO, parallel port interface
* Z-80 DART, serial port interface
* Z-80 CTC, counter/timer
* OKI M6242B Real-time calendar/clock chip
* Micrel MIC10937 display controller
* RS-232 serial port, 8-pin DIN connector
* Accessory serial port, 6-pin DIN connector
* 73K212L-IP single chip 1200 bps modem
* Internal lithium battery backup for RAM



# Memory Map

The Z-80 has a 64K memory address space. ROM is mapped to addresses 0 – $7FFF. At startup, program execution begins at address 0. RAM is mapped to addresses $8000 – $FFFF. Typically the stack will begin at $FFFF, growing downward.


# I/O Ports

The Z-80 also has a separate 256 port I/O space. For the Tranz 330, these ports are mapped as follows (all port numbers in hex):

    Port $00 – PIO parallel port A.
        Bits 3-0: output, keypad columns. Bit 3 is right-most column.
        Bit 4: output, display controller reset
        Bit 5: output, display controller data
        Bit 6: output, display controller clock
        Bit 7: input, card reader data
    Port $01 – PIO control register for port A.
    Port $02 – PIO parallel port B.
        Bits 3-0: input, keypad rows. Bit 3 is bottom row.
        Bits 4–6: Modem Telcom Controls
        Bits 7:   Pinpad TX and Barcode scanner RX
    Port $03 – PIO control register for port B.
    Port $10 – CTC channel 0
    Port $11 – CTC channel 1
    Port $12 – CTC channel 2. Chan 2 output is connected to speaker driver.
    Port $13 – CTC channel 3. Chan 3 input trigger is connected to chan 2 output.
    Port $20 – DART serial port A. Modem Serial Interface.
    Port $21 – DART control register for port A.
    Port $22 – DART serial port B. 8-pin DIN RS-232 port.
    Port $23 – DART control register for port B.
    Ports $30 – $3F – Real-time clock registers $0-$F
    Ports $40 – $4F – Modem Address Latch Enable (ALE)
    Ports $50 – $5F – Modem Read
    Ports $60 – $6F – Modem Write
    Ports $70 – $7F – UNUSED


Released under the Creative Commons Share Alike (CC-BY-SA) License. Share it, change it, make money on it, teach it to the children as a cautionary tale. Just make your changes public and give credit to all contributors to this project.
