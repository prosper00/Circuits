### My attempt at an audio noise generator / sleep machine.
It's not 'white' or 'pink' or any particular color of noise - the filter stage shapes the output to whatever you feel sounds best. It's designed as a sleep aid to mask other noises.

# Goals:
- Run on 5V.
- Can provide 10 hours runtime on a small rechargeable USB power pack at moderate volume (so, let's say, we need this circuit to operate at < 100mA)
- Adjustable tone controls
- 'adequate' power output. A few mW to the speaker is quite sufficient to mask ambient sounds.
- uses 'jellybean' components that I have on hand

# Design:
- I settled on an avalanche noise source, running a small current above the breakdown voltage of an NPN be junction. Experimentally, I found that 8-9V is needed for a few of the common transistors I had on hand. I didn't see any significant difference between the few transistors that I tested, but that 12-15V produced much more amplitude.
- This is an audio device, so I don't need or want RF noise. Negative feedback on Q2 is applied with a 1nF capacitor (C3), to kill the RF as close to the source as possible.
- I'm running Q2 off of the 15V rail (more like +12V after diode drops etc.). However, Q2 output is only a few mV anyway and so it doesn't exceed the LM386 input. 
- I added a small adjustable filter section so that I could tune the output to a 'pleasing' sound. It's not super linear, and it does interact with the amplitude somewhat. 
- Because of the 5V supply voltage goal, I needed a low-current source of ~15V. Q3 and Q4 generate a square wave and power a small charge pump. A lot of the components in this voltage booster are less than optimal, though I did tweak them somewhat with the goal of producing sufficient current output, at reasonable efficiency. However, it works with the values I've chosen, more or less, though I did have some problems with the multivibrator failing to multivibrate. I added some startup diodes to increase its reliability, however, there's got to be a more elegant solution. 
- I used an LM386 to handle the output amplification, because I have a bunch. It provides more than sufficient output power. Really, it's overkill. 
- not shown in the circuit diagram is a 100uF and a 100nF decoupling capacitor near to where power comes into the PCB, right by the LM386 pins. This greatly helped with the multivibrator startup problems I had, and cleaned up its output signal.
