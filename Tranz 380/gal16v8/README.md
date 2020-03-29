# GAL16V8 Reverse Engineering

# CHIPS
* U7 [S1991] (simple)
* U11 [S774] (wrong)
* U12 [S773] (simple)

U11 appears to use registered outputs and as such logic friday is not a good way to decode the internal logic, so the files for U11 should not be used.

Unfortunately the 3 GALs on the board have their security cell set meaning that I can't just read the configuration data from the chip so some brute force work was required.
The text file are a brute force reading of the GALs in a CSV format that logic friday accepts.
The PNGs are the output from logic friday.
The Arduino sketch requires something that can act as a keyboard, I used an Arduino Micro in this case.