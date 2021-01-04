#include <stm8s.h>
#include "delay.h"

void setup(void);
unsigned int generateNoise(void);
void loop(void);
static void ADC_Config(void);

unsigned long lastClick;
#define speakerPin GPIOD,GPIO_PIN_4
/* initialize with any 32 bit non-zero  unsigned long value. */
#define LFSR_INIT  0xfeedfaceUL
/* Choose bits 32, 30, 26, 24 from  http://arduino.stackexchange.com/a/6725/6628
 *  or 32, 22, 2, 1 from 
 *  http://www.xilinx.com/support/documentation/application_notes/xapp052.pdf
 *  or bits 32, 16, 3,2  or 0x80010006UL per http://users.ece.cmu.edu/~koopman/lfsr/index.html 
 *  and http://users.ece.cmu.edu/~koopman/lfsr/32.dat.gz
 */  
#define LFSR_MASK  ((unsigned long)( 1UL<<31 | 1UL <<15 | 1UL <<2 | 1UL <<1  ))
#define POTPIN GPIOD, GPIO_PIN_2  //our frequency control potentiometer pin
#define POTCH ADC1_CHANNEL_3      //make sure this corresponds to the pin chosed on previous

unsigned long lfsr = LFSR_INIT;  /* 32 bit init, nonzero */





void setup() {
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); //Set CPU to 16MHz
	GPIO_DeInit(GPIOD);
	GPIO_Init(speakerPin,GPIO_MODE_OUT_PP_HIGH_SLOW);
	GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_PP_HIGH_SLOW);
	ADC_Config();
	TIM4_Config(); //start system timer
	lastClick = micros();
}

void loop() {
	int delay = (ADC1_GetConversionValue());
	if ((micros() - lastClick) > delay ) { // Changing this value changes the frequency.
		lastClick = micros();
		if (generateNoise())
			GPIO_WriteReverse(speakerPin);
	}
}

unsigned int generateNoise(){ 
	// See https://en.wikipedia.org/wiki/Linear_feedback_shift_register#Galois_LFSRs

	/* If the output bit is 1, apply toggle mask.
	* The value has 1 at bits corresponding
	* to taps, 0 elsewhere. */
	if(lfsr & 1) { lfsr =  (lfsr >>1) ^ LFSR_MASK ; return(1);}
	else         { lfsr >>= 1;                      return(0);}
}

/*********************************************************************** 
 * void ADC_Config - Enables, Configures and starts the ADC1 peripheral
 **********************************************************************/
static void ADC_Config(void)
{
	//pin mode D2 - input, floating, no interrupt:
	GPIO_Init(POTPIN, GPIO_MODE_IN_FL_NO_IT);
  
	//load ADC1 default registers
	ADC1_DeInit();
  
	//per the datasheet, PortD2 is AIN3
	ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
			  POTCH,
			  ADC1_PRESSEL_FCPU_D6, //2.67MHz ADC CLK (<4MHz is optimal)
			  ADC1_EXTTRIG_TIM,
			  DISABLE,
			  ADC1_ALIGN_RIGHT,
			  ADC1_SCHMITTTRIG_CHANNEL3,
			  DISABLE);

	ADC1_StartConversion();
}

void main(){
	setup();
	while(1)
		loop();
}

