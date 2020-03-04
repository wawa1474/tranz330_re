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



Released under the Creative Commons Share Alike (CC-BY-SA) License. Share it, change it, make money on it, teach it to the children as a cautionary tale. Just make your changes public and give credit to all contributors to this project.
