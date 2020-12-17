//Example Arduino program and segment maps

#define latch D6
#define clk D7
#define dat D8

uint8_t digits[16] =   {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71};
  // '.' == digit[n] + 0x80
uint8_t segs[7] = 
  {0x10,0x20,0x1,0x2,0x4,0x8,0x40}; // clockwise, starting with the lower left
uint8_t rsegs[7] = 
  {0x4,0x2,0x1,0x20,0x19,0x8,0x40}; // anticlockwise, starting with the lower right  

void setup() {
  pinMode(latch, OUTPUT);
  pinMode(clk, OUTPUT);
  pinMode(dat, OUTPUT);
}

void loop() {
  for(uint8_t i=0; i<10; i++)  {
    for(int j=0; j<6; j++)    {
      digitalWrite(latch, LOW);
      shiftOut(dat, clk, LSBFIRST, segs[j]);
      shiftOut(dat, clk, LSBFIRST, digits[9-i]);
      shiftOut(dat, clk, LSBFIRST, digits[i]);
      shiftOut(dat, clk, LSBFIRST, rsegs[j]);
      digitalWrite(latch, HIGH);
      delay(3);

      digitalWrite(latch, LOW);
      shiftOut(dat, clk, LSBFIRST, 0x0);
      shiftOut(dat, clk, LSBFIRST, digits[9-i]);
      shiftOut(dat, clk, LSBFIRST, digits[i]);
      shiftOut(dat, clk, LSBFIRST, 0x0);
      digitalWrite(latch, HIGH);
      delay(37);
    }
  }
}
