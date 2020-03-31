# GAL16V8 Reverse Engineering

#General Information
* Unfortunately the 3 GALs on the board have their security cell set meaning that I can't just read the configuration data from the chip so some brute force work was required.
* The text file are a brute force reading of the GALs in a CSV format that logic friday accepts.
* The PNGs are the output from logic friday.
* The Arduino sketch requires something that can act as a keyboard, I used an Arduino Micro in this case.

# CHIPS
* U7 [S1991] (simple?)
* U11 [S774] (wrong)
* U12 [S773] (simple)

# U7 is a pain in the butt
* file U7 might me wrong
* file U7_2 is definitely wrong
* file U7_3I appears to be correct
* file U7_3O is weird but probably wrong

# U11 is a pain in the butt
* file U11_wrong appears to use registered outputs and as such logic friday is not a good way to decode the internal logic, so the files for U11 should not be used.
* files U11 and U11_2 shows that maybe its not registered? maybe clk and oe are throwing off logic friday?
* file U11_3 shows that it might be simpler than I think. (EDIT) its not MODEM_ALE isn't being flipped so it's wrong.
* further work is needed before i'm satisfied with U11.

# U12 is simply misunderstood ;)
* file U12 while not wrong has some useless inputs and outputs on it
* file U12_2 is therefore the preferred file