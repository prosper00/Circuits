My attempt at an audio noise generator / sleep machine.
It's not 'white' or 'pink' or any particular color of noise - the filter stage shapes the output to whatever you feel sounds best. It's designed as a sleep aid to mask other noises.

Goals:
-Run on 5V.

-Can provide 10 hours runtime on a small rechargeable USB power pack at moderate volume (so, let's say, we need this circuit to operate at < 100mA)

-Adjustable tone controls

-'adequate' power output. A few mW to the speaker is quite sufficient to mask ambient sounds.

-uses 'jellybean' components that I have on hand


Design:
-I settled on an avalanche noise source, running a small current above the breakdown voltage of an NPN be junction. Experimentally, I found that 8-9V is needed for a few of the common transistors I had on hand. I didn't see any significant difference between the few transistors that I tested, but that 12-15V produced much more amplitude.

-This is an audio device, so I don't need or want RF noise. Negative feedback on Q2 is applied with a 1nF capacitor (C3), to kill the RF as close to the source as possible.

-I'm running Q2 off of the 15V rail - however, its output is only a few mV and so it won't overload the LM386 input. 

-I added a small adjustable filter section so that I could tune the output to a 'pleasing' sound. It's not super linear, and it does interact with the amplitude somewhat. 

-Because of the 5V supply voltage goal, I needed a low-current source of ~15V. Q3 and Q4 generate a square wave and power a small charge pump. 3904's probably would have been a better choice here. A lot of the components in this voltage booster are surely nowhere close to optimal. However, it works with the values I've chosen and idle current draw on the 5V supply from this stage is miniscule, and it only needs to provide <100uA at 15V. Good enough.

-I used an LM386 to handle the output amplification, because I have a bunch. It provides more than sufficient output power. Really, it's overkill. 
