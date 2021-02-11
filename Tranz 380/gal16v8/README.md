# GAL16V8 Reverse Engineering

#General Information
* Unfortunately the 3 GALs on the board have their security cell set meaning that I can't just read the configuration data from the chip so some brute force work was required.
* The text file are a brute force reading of the GALs in a CSV format that logic friday accepts.
* The PNGs are the output from logic friday.
* The Arduino sketch requires something that can act as a keyboard, I used an Arduino Micro in this case.

* Some files have been sent in by "hkzlab" for all three chips, I've not tested them in my system, but they've tested them and they seem to work.

# CHIPS
* U7 [S1991] / [S772]
* U11 [S774]
* U12 [S773]

# U7
* files present in the "S772_U7" folder sent in by "hkzlab"
* label "S772" differs from chip in my system "S1991"

# U11
* files present in the "S774_U11" folder sent in by "hkzlab"

# U12
* files present in the "S773_U12" folder sent in by "hkzlab"