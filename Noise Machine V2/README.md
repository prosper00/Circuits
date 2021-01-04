Noise Machine V1 was all-analog. V2 is a more modern approach to the same problem. I implemented a digital noise generator on an STM8 microcontroller, with tone control.

this is built on an ST8F103F3 'blue' board (that are <$1 on ebay). Sound out is on pin D4, which connects directly to the left-channel input of a PAM8403 class-D audio amplifier module. The code simply waits a given number of microseconds, and randomly decides whether or not to toggle the pin.

Overall, this is a more expensive build (than analog) by a factor of 10, but still only about $3. It was also MUCH quicker to build, at maybe 1hr for assembly and coding.

TODOs:
-better documentation
-fix ugly code
-finish implementing tone control
-draw schematics
-analog filtering between uC and amplifier?
