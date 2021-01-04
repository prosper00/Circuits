;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #11994 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _micros
	.globl _TIM4_Config
	.globl _lfsr
	.globl _lastClick
	.globl _setup
	.globl _generateNoise
	.globl _loop
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
G$lastClick$0_0$0==.
_lastClick::
	.ds 4
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$lfsr$0_0$0==.
_lfsr::
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
	int 0x000000 ; trap
	int 0x000000 ; int0
	int 0x000000 ; int1
	int 0x000000 ; int2
	int 0x000000 ; int3
	int 0x000000 ; int4
	int 0x000000 ; int5
	int 0x000000 ; int6
	int 0x000000 ; int7
	int 0x000000 ; int8
	int 0x000000 ; int9
	int 0x000000 ; int10
	int 0x000000 ; int11
	int 0x000000 ; int12
	int 0x000000 ; int13
	int 0x000000 ; int14
	int 0x000000 ; int15
	int 0x000000 ; int16
	int 0x000000 ; int17
	int 0x000000 ; int18
	int 0x000000 ; int19
	int 0x000000 ; int20
	int 0x000000 ; int21
	int 0x000000 ; int22
	int _TIM4_UPD_OVF_IRQHandler ; int23
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Smain$setup$0 ==.
;	main.c: 21: void setup() {
;	-----------------------------------------
;	 function setup
;	-----------------------------------------
_setup:
	Smain$setup$1 ==.
	Smain$setup$2 ==.
	Smain$setup$3 ==.
;	inc/stm8s_clk.h: 741: CLK->CKDIVR &= (uint8_t) (~CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	and	a, #0xe7
	ld	0x50c6, a
	Smain$setup$4 ==.
;	inc/stm8s_clk.h: 744: CLK->CKDIVR |= (uint8_t) HSIPrescaler;
	ld	a, 0x50c6
	ld	0x50c6, a
	Smain$setup$5 ==.
	Smain$setup$5 ==.
	Smain$setup$6 ==.
;	inc/stm8s_gpio.h: 186: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
	mov	0x500f+0, #0x00
	Smain$setup$7 ==.
;	inc/stm8s_gpio.h: 187: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
	mov	0x5011+0, #0x00
	Smain$setup$8 ==.
;	inc/stm8s_gpio.h: 188: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
	mov	0x5012+0, #0x00
	Smain$setup$9 ==.
;	inc/stm8s_gpio.h: 189: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
	mov	0x5013+0, #0x00
	Smain$setup$10 ==.
	Smain$setup$10 ==.
	Smain$setup$11 ==.
;	inc/stm8s_gpio.h: 212: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
	bres	20499, #4
	Smain$setup$12 ==.
	Smain$setup$13 ==.
;	inc/stm8s_gpio.h: 222: GPIOx->ODR |= (uint8_t) GPIO_Pin;
	bset	20495, #4
	Smain$setup$14 ==.
	Smain$setup$14 ==.
	Smain$setup$15 ==.
;	inc/stm8s_gpio.h: 228: GPIOx->DDR |= (uint8_t) GPIO_Pin;
	bset	20497, #4
	Smain$setup$16 ==.
	Smain$setup$16 ==.
	Smain$setup$17 ==.
;	inc/stm8s_gpio.h: 241: GPIOx->CR1 |= (uint8_t) GPIO_Pin;
	bset	20498, #4
	Smain$setup$18 ==.
	Smain$setup$18 ==.
	Smain$setup$19 ==.
;	inc/stm8s_gpio.h: 256: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
	bres	20499, #4
	Smain$setup$20 ==.
	Smain$setup$20 ==.
	Smain$setup$21 ==.
;	inc/stm8s_gpio.h: 212: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
	bres	20499, #5
	Smain$setup$22 ==.
	Smain$setup$23 ==.
;	inc/stm8s_gpio.h: 222: GPIOx->ODR |= (uint8_t) GPIO_Pin;
	bset	20495, #5
	Smain$setup$24 ==.
	Smain$setup$24 ==.
	Smain$setup$25 ==.
;	inc/stm8s_gpio.h: 228: GPIOx->DDR |= (uint8_t) GPIO_Pin;
	bset	20497, #5
	Smain$setup$26 ==.
	Smain$setup$26 ==.
	Smain$setup$27 ==.
;	inc/stm8s_gpio.h: 241: GPIOx->CR1 |= (uint8_t) GPIO_Pin;
	bset	20498, #5
	Smain$setup$28 ==.
	Smain$setup$28 ==.
	Smain$setup$29 ==.
;	inc/stm8s_gpio.h: 256: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
	bres	20499, #5
	Smain$setup$30 ==.
	Smain$setup$31 ==.
;	main.c: 26: TIM4_Config(); //start system timer
	call	_TIM4_Config
	Smain$setup$32 ==.
;	main.c: 27: lastClick = micros();
	call	_micros
	ldw	_lastClick+2, x
	ldw	_lastClick+0, y
	Smain$setup$33 ==.
;	main.c: 28: }
	Smain$setup$34 ==.
	XG$setup$0$0 ==.
	ret
	Smain$setup$35 ==.
	Smain$generateNoise$36 ==.
;	main.c: 30: unsigned int generateNoise(){ 
;	-----------------------------------------
;	 function generateNoise
;	-----------------------------------------
_generateNoise:
	Smain$generateNoise$37 ==.
	sub	sp, #4
	Smain$generateNoise$38 ==.
	Smain$generateNoise$39 ==.
;	main.c: 36: if(lfsr & 1) { lfsr =  (lfsr >>1) ^ LFSR_MASK ; return(1);}
	ldw	x, _lfsr+2
	ldw	y, _lfsr+0
	ldw	(0x01, sp), y
	srl	(0x01, sp)
	rrc	(0x02, sp)
	rrcw	x
	btjf	_lfsr+3, #0, 00102$
	Smain$generateNoise$40 ==.
	ld	a, xl
	xor	a, #0x06
	rlwa	x
	xor	a, #0x80
	ld	xh, a
	ld	a, (0x02, sp)
	ld	yl, a
	ld	a, (0x01, sp)
	xor	a, #0x80
	ld	yh, a
	ldw	_lfsr+2, x
	ldw	_lfsr+0, y
	clrw	x
	incw	x
	jra	00104$
	Smain$generateNoise$41 ==.
00102$:
	Smain$generateNoise$42 ==.
	Smain$generateNoise$43 ==.
;	main.c: 37: else         { lfsr >>= 1;                      return(0);}
	ldw	_lfsr+2, x
	ldw	x, (0x01, sp)
	ldw	_lfsr+0, x
	clrw	x
	Smain$generateNoise$44 ==.
00104$:
	Smain$generateNoise$45 ==.
;	main.c: 38: }
	addw	sp, #4
	Smain$generateNoise$46 ==.
	Smain$generateNoise$47 ==.
	XG$generateNoise$0$0 ==.
	ret
	Smain$generateNoise$48 ==.
	Smain$loop$49 ==.
;	main.c: 41: void loop() {
;	-----------------------------------------
;	 function loop
;	-----------------------------------------
_loop:
	Smain$loop$50 ==.
	sub	sp, #4
	Smain$loop$51 ==.
	Smain$loop$52 ==.
;	main.c: 42: if ((micros() - lastClick) > 200 ) { // Changing this value changes the frequency.
	call	_micros
	exgw	x, y
	subw	y, _lastClick+2
	ldw	(0x03, sp), y
	ld	a, xl
	sbc	a, _lastClick+1
	ld	(0x02, sp), a
	ld	a, xh
	sbc	a, _lastClick+0
	ld	(0x01, sp), a
	ldw	x, #0x00c8
	cpw	x, (0x03, sp)
	clr	a
	sbc	a, (0x02, sp)
	clr	a
	sbc	a, (0x01, sp)
	jrnc	00106$
	Smain$loop$53 ==.
	Smain$loop$54 ==.
;	main.c: 43: lastClick = micros();
	call	_micros
	ldw	_lastClick+2, x
	ldw	_lastClick+0, y
	Smain$loop$55 ==.
;	main.c: 44: if (generateNoise())
	call	_generateNoise
	tnzw	x
	jreq	00106$
	Smain$loop$56 ==.
	Smain$loop$57 ==.
;	inc/stm8s_gpio.h: 309: GPIOx->ODR ^= (uint8_t) PortPins;
	bcpl	20495, #4
	Smain$loop$58 ==.
	Smain$loop$59 ==.
;	main.c: 45: GPIO_WriteReverse(speakerPin);
00106$:
	Smain$loop$60 ==.
;	main.c: 47: }
	addw	sp, #4
	Smain$loop$61 ==.
	Smain$loop$62 ==.
	XG$loop$0$0 ==.
	ret
	Smain$loop$63 ==.
	Smain$main$64 ==.
;	main.c: 49: void main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	Smain$main$65 ==.
	Smain$main$66 ==.
;	main.c: 50: setup();
	call	_setup
	Smain$main$67 ==.
;	main.c: 51: while(1)
00102$:
	Smain$main$68 ==.
;	main.c: 52: loop();
	call	_loop
	jra	00102$
	Smain$main$69 ==.
;	main.c: 53: }
	Smain$main$70 ==.
	XG$main$0$0 ==.
	ret
	Smain$main$71 ==.
	.area CODE
	.area CONST
Lmain.AWU_Init$APR_Array$1_0$122 == .
_AWU_Init_APR_Array_65536_122:
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x3d	; 61
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x3e	; 62
Lmain.AWU_Init$TBR_Array$1_0$122 == .
_AWU_Init_TBR_Array_65536_122:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0f	; 15
	.area INITIALIZER
Fmain$__xinit_lfsr$0_0$0 == .
__xinit__lfsr:
	.byte #0xfe, #0xed, #0xfa, #0xce	; 4277009102
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "/usr/bin/../share/sdcc/include/stm8"
	.db	0
	.ascii "/usr/local/share/sdcc/include/stm8"
	.db	0
	.ascii "/usr/bin/../share/sdcc/include"
	.db	0
	.ascii "/usr/local/share/sdcc/include"
	.db	0
	.db	0
	.ascii "main.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "inc/stm8s_clk.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "inc/stm8s_gpio.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$setup$0)
	.db	3
	.sleb128	20
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Smain$setup$3-Smain$setup$0
	.db	3
	.sleb128	720
	.db	1
	.db	9
	.dw	Smain$setup$4-Smain$setup$3
	.db	3
	.sleb128	3
	.db	1
	.db	4
	.uleb128	3
	.db	9
	.dw	Smain$setup$6-Smain$setup$4
	.db	3
	.sleb128	-558
	.db	1
	.db	9
	.dw	Smain$setup$7-Smain$setup$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$8-Smain$setup$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$9-Smain$setup$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$11-Smain$setup$9
	.db	3
	.sleb128	23
	.db	1
	.db	9
	.dw	Smain$setup$13-Smain$setup$11
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Smain$setup$15-Smain$setup$13
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$setup$17-Smain$setup$15
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$setup$19-Smain$setup$17
	.db	3
	.sleb128	15
	.db	1
	.db	9
	.dw	Smain$setup$21-Smain$setup$19
	.db	3
	.sleb128	-44
	.db	1
	.db	9
	.dw	Smain$setup$23-Smain$setup$21
	.db	3
	.sleb128	10
	.db	1
	.db	9
	.dw	Smain$setup$25-Smain$setup$23
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$setup$27-Smain$setup$25
	.db	3
	.sleb128	13
	.db	1
	.db	9
	.dw	Smain$setup$29-Smain$setup$27
	.db	3
	.sleb128	15
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Smain$setup$31-Smain$setup$29
	.db	3
	.sleb128	-230
	.db	1
	.db	9
	.dw	Smain$setup$32-Smain$setup$31
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$setup$33-Smain$setup$32
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$setup$34-Smain$setup$33
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$generateNoise$36)
	.db	3
	.sleb128	29
	.db	1
	.db	9
	.dw	Smain$generateNoise$39-Smain$generateNoise$36
	.db	3
	.sleb128	6
	.db	1
	.db	9
	.dw	Smain$generateNoise$43-Smain$generateNoise$39
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$generateNoise$45-Smain$generateNoise$43
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$generateNoise$47-Smain$generateNoise$45
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$loop$49)
	.db	3
	.sleb128	40
	.db	1
	.db	9
	.dw	Smain$loop$52-Smain$loop$49
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$loop$54-Smain$loop$52
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$loop$55-Smain$loop$54
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	3
	.db	9
	.dw	Smain$loop$57-Smain$loop$55
	.db	3
	.sleb128	265
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Smain$loop$59-Smain$loop$57
	.db	3
	.sleb128	-264
	.db	1
	.db	9
	.dw	Smain$loop$60-Smain$loop$59
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Smain$loop$62-Smain$loop$60
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Smain$main$64)
	.db	3
	.sleb128	48
	.db	1
	.db	9
	.dw	Smain$main$66-Smain$main$64
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$67-Smain$main$66
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$68-Smain$main$67
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Smain$main$69-Smain$main$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Smain$main$70-Smain$main$69
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Smain$main$65)
	.dw	0,(Smain$main$71)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$loop$61)
	.dw	0,(Smain$loop$63)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$loop$51)
	.dw	0,(Smain$loop$61)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$loop$50)
	.dw	0,(Smain$loop$51)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$generateNoise$46)
	.dw	0,(Smain$generateNoise$48)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Smain$generateNoise$38)
	.dw	0,(Smain$generateNoise$46)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Smain$generateNoise$37)
	.dw	0,(Smain$generateNoise$38)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Smain$setup$1)
	.dw	0,(Smain$setup$35)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	9
	.uleb128	15
	.db	0
	.uleb128	11
	.uleb128	11
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.uleb128	53
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	12
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	13
	.uleb128	11
	.db	1
	.uleb128	0
	.uleb128	0
	.uleb128	18
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	63
	.uleb128	12
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	52
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	15
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	16
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	11
	.db	0
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	13
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	56
	.uleb128	10
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	10
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	17
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	11
	.uleb128	11
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	19
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	14
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "main.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.7 #11994"
	.db	0
	.uleb128	2
	.dw	0,638
	.ascii "setup"
	.db	0
	.dw	0,(_setup)
	.dw	0,(XG$setup$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+108)
	.uleb128	3
	.dw	0,137
	.uleb128	3
	.dw	0,115
	.uleb128	4
	.dw	0,(Smain$setup$2)
	.dw	0,(Smain$setup$5)
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "HSIPrescaler"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720142"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	3
	.dw	0,283
	.uleb128	3
	.dw	0,171
	.uleb128	4
	.dw	0,(Smain$setup$5)
	.dw	0,(Smain$setup$10)
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIOx"
	.db	0
	.dw	0,255
	.uleb128	0
	.uleb128	6
	.dw	0,255
	.ascii "GPIO_struct"
	.db	0
	.db	5
	.uleb128	7
	.dw	0,638
	.uleb128	8
	.ascii "ODR"
	.db	0
	.db	2
	.db	35
	.uleb128	0
	.dw	0,189
	.uleb128	8
	.ascii "IDR"
	.db	0
	.db	2
	.db	35
	.uleb128	1
	.dw	0,189
	.uleb128	8
	.ascii "DDR"
	.db	0
	.db	2
	.db	35
	.uleb128	2
	.dw	0,189
	.uleb128	8
	.ascii "CR1"
	.db	0
	.db	2
	.db	35
	.uleb128	3
	.dw	0,189
	.uleb128	8
	.ascii "CR2"
	.db	0
	.db	2
	.db	35
	.uleb128	4
	.dw	0,189
	.uleb128	0
	.uleb128	9
	.db	2
	.dw	0,171
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720144"
	.db	0
	.dw	0,255
	.uleb128	0
	.uleb128	3
	.dw	0,462
	.uleb128	3
	.dw	0,398
	.uleb128	10
	.dw	0,348
	.dw	0,(Smain$setup$10)
	.uleb128	11
	.dw	0,326
	.dw	0,(Smain$setup$14)
	.dw	0,(Smain$setup$16)
	.uleb128	4
	.dw	0,(Smain$setup$12)
	.dw	0,(Smain$setup$14)
	.uleb128	12
	.uleb128	0
	.uleb128	12
	.uleb128	4
	.dw	0,(Smain$setup$16)
	.dw	0,(Smain$setup$18)
	.uleb128	12
	.uleb128	12
	.uleb128	4
	.dw	0,(Smain$setup$18)
	.dw	0,(Smain$setup$20)
	.uleb128	0
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIOx"
	.db	0
	.dw	0,255
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,638
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIO_Mode"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720146"
	.db	0
	.dw	0,255
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720147"
	.db	0
	.dw	0,638
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720148"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	13
	.uleb128	3
	.dw	0,573
	.uleb128	10
	.dw	0,523
	.dw	0,(Smain$setup$20)
	.uleb128	11
	.dw	0,501
	.dw	0,(Smain$setup$24)
	.dw	0,(Smain$setup$26)
	.uleb128	4
	.dw	0,(Smain$setup$22)
	.dw	0,(Smain$setup$24)
	.uleb128	12
	.uleb128	0
	.uleb128	12
	.uleb128	4
	.dw	0,(Smain$setup$26)
	.dw	0,(Smain$setup$28)
	.uleb128	12
	.uleb128	12
	.uleb128	4
	.dw	0,(Smain$setup$28)
	.dw	0,(Smain$setup$30)
	.uleb128	0
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIOx"
	.db	0
	.dw	0,255
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIO_Pin"
	.db	0
	.dw	0,638
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIO_Mode"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720150"
	.db	0
	.dw	0,255
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720151"
	.db	0
	.dw	0,638
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720152"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	0
	.uleb128	14
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	14
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	15
	.dw	0,726
	.ascii "generateNoise"
	.db	0
	.dw	0,(_generateNoise)
	.dw	0,(XG$generateNoise$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+64)
	.dw	0,655
	.uleb128	4
	.dw	0,(Smain$generateNoise$40)
	.dw	0,(Smain$generateNoise$41)
	.uleb128	4
	.dw	0,(Smain$generateNoise$42)
	.dw	0,(Smain$generateNoise$44)
	.uleb128	0
	.uleb128	2
	.dw	0,846
	.ascii "loop"
	.db	0
	.dw	0,(_loop)
	.dw	0,(XG$loop$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	16
	.dw	0,(Smain$loop$53)
	.uleb128	13
	.uleb128	3
	.dw	0,801
	.uleb128	4
	.dw	0,(Smain$loop$56)
	.dw	0,(Smain$loop$58)
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "GPIOx"
	.db	0
	.dw	0,255
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "PortPins"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1966080154"
	.db	0
	.dw	0,255
	.uleb128	5
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1966080155"
	.db	0
	.dw	0,638
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.uleb128	17
	.ascii "main"
	.db	0
	.dw	0,(_main)
	.dw	0,(XG$main$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	14
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	18
	.db	5
	.db	3
	.dw	0,(_lfsr)
	.ascii "lfsr"
	.db	0
	.db	1
	.dw	0,865
	.uleb128	18
	.db	5
	.db	3
	.dw	0,(_lastClick)
	.ascii "lastClick"
	.db	0
	.db	1
	.dw	0,865
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,50
	.ascii "setup"
	.db	0
	.dw	0,671
	.ascii "generateNoise"
	.db	0
	.dw	0,726
	.ascii "loop"
	.db	0
	.dw	0,846
	.ascii "main"
	.db	0
	.dw	0,882
	.ascii "lfsr"
	.db	0
	.dw	0,899
	.ascii "lastClick"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
Ldebug_CIE0_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE0_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Smain$main$65)	;initial loc
	.dw	0,Smain$main$71-Smain$main$65
	.db	1
	.dw	0,(Smain$main$65)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
Ldebug_CIE1_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE1_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Smain$loop$50)	;initial loc
	.dw	0,Smain$loop$63-Smain$loop$50
	.db	1
	.dw	0,(Smain$loop$50)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$loop$51)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$loop$61)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
Ldebug_CIE2_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE2_end:
	.dw	0,33
	.dw	0,(Ldebug_CIE2_start-4)
	.dw	0,(Smain$generateNoise$37)	;initial loc
	.dw	0,Smain$generateNoise$48-Smain$generateNoise$37
	.db	1
	.dw	0,(Smain$generateNoise$37)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Smain$generateNoise$38)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Smain$generateNoise$46)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
Ldebug_CIE3_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	2
	.db	137
	.uleb128	1
Ldebug_CIE3_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Smain$setup$1)	;initial loc
	.dw	0,Smain$setup$35-Smain$setup$1
	.db	1
	.dw	0,(Smain$setup$1)
	.db	14
	.uleb128	2
