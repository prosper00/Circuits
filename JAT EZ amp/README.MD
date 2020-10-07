### John Audio Tech's EZ amp from here: https://www.youtube.com/watch?v=-Dk14Zag98o&t=983s

Note: JAT couldn't get this amp to work to his satisfaction, blowing up the output transistors when fed a 10kHz square wave. I'm tweaking his design, see if I can't get it to work. I think these results say that this amplifier can't handle really high bandwith/high frequencies. Something's not switching fast enough. Maybe Q6 and Q7 are not capable of shutting off fast enough, and are both 'on' at the same time at high frequencies. I can't do too much to speed up the transistors, but maybe I can reduce the maximum frequencies that they are exposed to. They really ought to be *fast enough* for audio signals. The amplifier shouldn't blow up with a 10k square wave, but I don't expect it to output such a signal either. Rather than exploding when fed such signals, I'd rather the circuit distorts really HF's.


###
Rather than building my own darlington output transistors (like JAT), I intend to try the following:
- implement flyback protection for the output transistors. The monolithic darlingtons already have such a diode, but I'm wondering if this is the part that's failing driving an inductive load (or at least, the output filter stage) at high frequencies. Perhaps a faster protection diode will help. (D2 and D3)
- include more aggressive low-pass filters on the input and VAS stages. I really don't care about 10kHz square waves, I personally don't want or need that kind of bandwidth in an audio amp. I'll be happy if I can produce 20k sine waves with small distortion. Tweaking the value of C5 and installing CFB1 are things I'll try.
- Maybe something to limit slew rate? Maybe I could use an opamp for the input stage (Q1, Q2, and Q3)... could also use it to do lowpass filtersing. Should prevent the shart edges (i.e. crazy high frequencies) of a square wave from getting to the output stage.
