;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #11994 (Linux)
;--------------------------------------------------------
	.module delay
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tick
	.globl _TIM4_Config
	.globl _TIM4_UPD_OVF_IRQHandler
	.globl _delay_ms
	.globl _delay_us
	.globl _millis
	.globl _micros
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
G$tick$0_0$0==.
_tick::
	.ds 4
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sdelay$TIM4_Config$0 ==.
;	delay.c: 25: void TIM4_Config(void)
;	-----------------------------------------
;	 function TIM4_Config
;	-----------------------------------------
_TIM4_Config:
	Sdelay$TIM4_Config$1 ==.
	Sdelay$TIM4_Config$2 ==.
	Sdelay$TIM4_Config$3 ==.
;	inc/stm8s_clk.h: 621: CLK->PCKENR1 |= (uint8_t) ((uint8_t) 1 << ((uint8_t) CLK_Peripheral & (uint8_t) 0x0F));
	bset	20679, #4
	Sdelay$TIM4_Config$4 ==.
	Sdelay$TIM4_Config$4 ==.
	Sdelay$TIM4_Config$5 ==.
;	inc/stm8s_tim4.h: 188: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
	mov	0x5340+0, #0x00
	Sdelay$TIM4_Config$6 ==.
;	inc/stm8s_tim4.h: 189: TIM4->IER = TIM4_IER_RESET_VALUE;
	mov	0x5343+0, #0x00
	Sdelay$TIM4_Config$7 ==.
;	inc/stm8s_tim4.h: 190: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
	mov	0x5346+0, #0x00
	Sdelay$TIM4_Config$8 ==.
;	inc/stm8s_tim4.h: 191: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
	mov	0x5347+0, #0x00
	Sdelay$TIM4_Config$9 ==.
;	inc/stm8s_tim4.h: 192: TIM4->ARR = TIM4_ARR_RESET_VALUE;
	mov	0x5348+0, #0xff
	Sdelay$TIM4_Config$10 ==.
;	inc/stm8s_tim4.h: 193: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
	mov	0x5344+0, #0x00
	Sdelay$TIM4_Config$11 ==.
	Sdelay$TIM4_Config$11 ==.
	Sdelay$TIM4_Config$12 ==.
;	inc/stm8s_tim4.h: 207: TIM4->PSCR = (uint8_t) (TIM4_Prescaler);
	mov	0x5347+0, #0x04
	Sdelay$TIM4_Config$13 ==.
;	inc/stm8s_tim4.h: 209: TIM4->ARR = (uint8_t) (TIM4_Period);
	mov	0x5348+0, #0xfa
	Sdelay$TIM4_Config$14 ==.
	Sdelay$TIM4_Config$14 ==.
	Sdelay$TIM4_Config$15 ==.
;	inc/stm8s_tim4.h: 466: TIM4->SR1 = (uint8_t) (~TIM4_FLAG);
	mov	0x5344+0, #0xfe
	Sdelay$TIM4_Config$16 ==.
	Sdelay$TIM4_Config$17 ==.
;	inc/stm8s_tim4.h: 249: TIM4->IER |= (uint8_t) TIM4_IT;
	ld	a, 0x5343
	or	a, #0x01
	ld	0x5343, a
	Sdelay$TIM4_Config$18 ==.
	Sdelay$TIM4_Config$19 ==.
;	delay.c: 34: enableInterrupts(); // global interrupt enable
	rim
	Sdelay$TIM4_Config$20 ==.
	Sdelay$TIM4_Config$21 ==.
;	inc/stm8s_tim4.h: 225: TIM4->CR1 |= TIM4_CR1_CEN;
	bset	21312, #0
	Sdelay$TIM4_Config$22 ==.
	Sdelay$TIM4_Config$23 ==.
;	delay.c: 35: TIM4_Cmd(ENABLE);  //Start Timer 4
	Sdelay$TIM4_Config$24 ==.
;	delay.c: 36: }
	Sdelay$TIM4_Config$25 ==.
	XG$TIM4_Config$0$0 ==.
	ret
	Sdelay$TIM4_Config$26 ==.
	Sdelay$TIM4_UPD_OVF_IRQHandler$27 ==.
;	delay.c: 38: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
;	-----------------------------------------
;	 function TIM4_UPD_OVF_IRQHandler
;	-----------------------------------------
_TIM4_UPD_OVF_IRQHandler:
	Sdelay$TIM4_UPD_OVF_IRQHandler$28 ==.
	Sdelay$TIM4_UPD_OVF_IRQHandler$29 ==.
;	delay.c: 40: tick++;
	ldw	x, _tick+2
	ldw	y, _tick+0
	incw	x
	jrne	00104$
	incw	y
00104$:
	ldw	_tick+2, x
	ldw	_tick+0, y
	Sdelay$TIM4_UPD_OVF_IRQHandler$30 ==.
	Sdelay$TIM4_UPD_OVF_IRQHandler$31 ==.
;	inc/stm8s_tim4.h: 510: TIM4->SR1 = (uint8_t) (~TIM4_IT);
	mov	0x5344+0, #0xfe
	Sdelay$TIM4_UPD_OVF_IRQHandler$32 ==.
	Sdelay$TIM4_UPD_OVF_IRQHandler$33 ==.
;	delay.c: 41: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
	Sdelay$TIM4_UPD_OVF_IRQHandler$34 ==.
;	delay.c: 45: }
	Sdelay$TIM4_UPD_OVF_IRQHandler$35 ==.
	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
	iret
	Sdelay$TIM4_UPD_OVF_IRQHandler$36 ==.
	Sdelay$delay_ms$37 ==.
	Sdelay$delay_ms$38 ==.
;	delay.c: 48: void delay_ms(uint16_t ms)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	Sdelay$delay_ms$39 ==.
	Sdelay$delay_ms$40 ==.
	Sdelay$delay_ms$41 ==.
;	delay.c: 50: for(int i=0; i<ms; i++)
	clrw	x
00103$:
	ldw	y, x
	exgw	x, y
	cpw	x, (0x03, sp)
	exgw	x, y
	jrnc	00105$
	Sdelay$delay_ms$42 ==.
;	delay.c: 51: delay_us(1000);
	pushw	x
	Sdelay$delay_ms$43 ==.
	push	#0xe8
	Sdelay$delay_ms$44 ==.
	push	#0x03
	Sdelay$delay_ms$45 ==.
	call	_delay_us
	popw	x
	Sdelay$delay_ms$46 ==.
	popw	x
	Sdelay$delay_ms$47 ==.
	Sdelay$delay_ms$48 ==.
;	delay.c: 50: for(int i=0; i<ms; i++)
	incw	x
	jra	00103$
00105$:
	Sdelay$delay_ms$49 ==.
;	delay.c: 52: }
	Sdelay$delay_ms$50 ==.
	XG$delay_ms$0$0 ==.
	ret
	Sdelay$delay_ms$51 ==.
	Sdelay$delay_us$52 ==.
;	delay.c: 58: void delay_us(uint16_t us)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	Sdelay$delay_us$53 ==.
	sub	sp, #5
	Sdelay$delay_us$54 ==.
	Sdelay$delay_us$55 ==.
	Sdelay$delay_us$56 ==.
;	delay.c: 60: uint8_t start_us = TIM4_GetCounter();  //tim4 increments every us
	ld	a, 0x5346
	ld	(0x01, sp), a
	Sdelay$delay_us$57 ==.
	Sdelay$delay_us$58 ==.
;	delay.c: 61: if(us>=250){   //we only need to bother with the following for delays greater than 1 tick (250us)
	ldw	x, (0x08, sp)
	cpw	x, #0x00fa
	jrc	00106$
	Sdelay$delay_us$59 ==.
	Sdelay$delay_us$60 ==.
;	delay.c: 62: uint16_t start_tick = (uint16_t)tick;  //the tick increments every 250us
	ldw	y, _tick+2
	ldw	(0x02, sp), y
	Sdelay$delay_us$61 ==.
;	delay.c: 63: uint16_t delay_ticks = us/250;
	ldw	y, #0x00fa
	divw	x, y
	ldw	(0x04, sp), x
	Sdelay$delay_us$62 ==.
;	delay.c: 65: while(((uint16_t)tick - start_tick) < delay_ticks); // delay in multiples of 250us
00101$:
	ldw	x, _tick+2
	subw	x, (0x02, sp)
	cpw	x, (0x04, sp)
	jrc	00101$
	Sdelay$delay_us$63 ==.
	Sdelay$delay_us$64 ==.
;	delay.c: 67: while(TIM4_GetCounter() < start_us); //now wait until our 1us counter matches our start us
00106$:
	Sdelay$delay_us$65 ==.
	Sdelay$delay_us$66 ==.
;	inc/stm8s_tim4.h: 417: return (uint8_t) (TIM4->CNTR);
	ld	a, 0x5346
	Sdelay$delay_us$67 ==.
	Sdelay$delay_us$67 ==.
	Sdelay$delay_us$68 ==.
;	delay.c: 67: while(TIM4_GetCounter() < start_us); //now wait until our 1us counter matches our start us
	cp	a, (0x01, sp)
	jrc	00106$
	Sdelay$delay_us$69 ==.
	Sdelay$delay_us$70 ==.
;	delay.c: 68: }
	addw	sp, #5
	Sdelay$delay_us$71 ==.
	Sdelay$delay_us$72 ==.
	XG$delay_us$0$0 ==.
	ret
	Sdelay$delay_us$73 ==.
	Sdelay$millis$74 ==.
;	delay.c: 71: uint16_t millis(void){
;	-----------------------------------------
;	 function millis
;	-----------------------------------------
_millis:
	Sdelay$millis$75 ==.
	Sdelay$millis$76 ==.
;	delay.c: 72: return((uint16_t)(tick >> 2)); // divide tick by 4 returns milliseconds
	ldw	x, _tick+2
	ldw	y, _tick+0
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	Sdelay$millis$77 ==.
;	delay.c: 73: }
	Sdelay$millis$78 ==.
	XG$millis$0$0 ==.
	ret
	Sdelay$millis$79 ==.
	Sdelay$micros$80 ==.
;	delay.c: 76: uint32_t micros(void){
;	-----------------------------------------
;	 function micros
;	-----------------------------------------
_micros:
	Sdelay$micros$81 ==.
	sub	sp, #8
	Sdelay$micros$82 ==.
	Sdelay$micros$83 ==.
;	delay.c: 77: return(tick*250 + TIM4_GetCounter()); //each tick is worth 250us
	ldw	x, _tick+2
	pushw	x
	Sdelay$micros$84 ==.
	ldw	x, _tick+0
	pushw	x
	Sdelay$micros$85 ==.
	push	#0xfa
	Sdelay$micros$86 ==.
	clrw	x
	pushw	x
	Sdelay$micros$87 ==.
	push	#0x00
	Sdelay$micros$88 ==.
	Sdelay$micros$89 ==.
;	inc/stm8s_tim4.h: 417: return (uint8_t) (TIM4->CNTR);
	call	__mullong
	addw	sp, #8
	Sdelay$micros$90 ==.
	ldw	(0x03, sp), x
	Sdelay$micros$91 ==.
	ld	a, 0x5346
	Sdelay$micros$92 ==.
	Sdelay$micros$92 ==.
	Sdelay$micros$93 ==.
;	delay.c: 77: return(tick*250 + TIM4_GetCounter()); //each tick is worth 250us
	clrw	x
	clr	(0x06, sp)
	clr	(0x05, sp)
	ld	xl, a
	addw	x, (0x03, sp)
	ld	a, yl
	adc	a, (0x06, sp)
	rlwa	y
	adc	a, (0x05, sp)
	ld	yh, a
	Sdelay$micros$94 ==.
	Sdelay$micros$95 ==.
;	delay.c: 78: }
	addw	sp, #8
	Sdelay$micros$96 ==.
	Sdelay$micros$97 ==.
	XG$micros$0$0 ==.
	ret
	Sdelay$micros$98 ==.
	.area CODE
	.area CONST
Ldelay.AWU_Init$APR_Array$1_0$122 == .
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
Ldelay.AWU_Init$TBR_Array$1_0$122 == .
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
Fdelay$__xinit_tick$0_0$0 == .
__xinit__tick:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
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
	.ascii "delay.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "inc/stm8s_clk.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.ascii "inc/stm8s_tim4.h"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sdelay$TIM4_Config$0)
	.db	3
	.sleb128	24
	.db	1
	.db	4
	.uleb128	2
	.db	9
	.dw	Sdelay$TIM4_Config$3-Sdelay$TIM4_Config$0
	.db	3
	.sleb128	596
	.db	1
	.db	4
	.uleb128	3
	.db	9
	.dw	Sdelay$TIM4_Config$5-Sdelay$TIM4_Config$3
	.db	3
	.sleb128	-433
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$6-Sdelay$TIM4_Config$5
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$7-Sdelay$TIM4_Config$6
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$8-Sdelay$TIM4_Config$7
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$9-Sdelay$TIM4_Config$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$10-Sdelay$TIM4_Config$9
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$12-Sdelay$TIM4_Config$10
	.db	3
	.sleb128	14
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$13-Sdelay$TIM4_Config$12
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$15-Sdelay$TIM4_Config$13
	.db	3
	.sleb128	257
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$17-Sdelay$TIM4_Config$15
	.db	3
	.sleb128	-217
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sdelay$TIM4_Config$19-Sdelay$TIM4_Config$17
	.db	3
	.sleb128	-215
	.db	1
	.db	4
	.uleb128	3
	.db	9
	.dw	Sdelay$TIM4_Config$21-Sdelay$TIM4_Config$19
	.db	3
	.sleb128	191
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sdelay$TIM4_Config$23-Sdelay$TIM4_Config$21
	.db	3
	.sleb128	-190
	.db	1
	.db	9
	.dw	Sdelay$TIM4_Config$24-Sdelay$TIM4_Config$23
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sdelay$TIM4_Config$25-Sdelay$TIM4_Config$24
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$27)
	.db	3
	.sleb128	37
	.db	1
	.db	9
	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$29-Sdelay$TIM4_UPD_OVF_IRQHandler$27
	.db	3
	.sleb128	2
	.db	1
	.db	4
	.uleb128	3
	.db	9
	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$31-Sdelay$TIM4_UPD_OVF_IRQHandler$29
	.db	3
	.sleb128	470
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$33-Sdelay$TIM4_UPD_OVF_IRQHandler$31
	.db	3
	.sleb128	-469
	.db	1
	.db	9
	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$34-Sdelay$TIM4_UPD_OVF_IRQHandler$33
	.db	3
	.sleb128	4
	.db	1
	.db	9
	.dw	1+Sdelay$TIM4_UPD_OVF_IRQHandler$35-Sdelay$TIM4_UPD_OVF_IRQHandler$34
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sdelay$delay_ms$38)
	.db	3
	.sleb128	47
	.db	1
	.db	9
	.dw	Sdelay$delay_ms$41-Sdelay$delay_ms$38
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sdelay$delay_ms$42-Sdelay$delay_ms$41
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$delay_ms$48-Sdelay$delay_ms$42
	.db	3
	.sleb128	-1
	.db	1
	.db	9
	.dw	Sdelay$delay_ms$49-Sdelay$delay_ms$48
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	1+Sdelay$delay_ms$50-Sdelay$delay_ms$49
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sdelay$delay_us$52)
	.db	3
	.sleb128	57
	.db	1
	.db	9
	.dw	Sdelay$delay_us$56-Sdelay$delay_us$52
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sdelay$delay_us$58-Sdelay$delay_us$56
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$delay_us$60-Sdelay$delay_us$58
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$delay_us$61-Sdelay$delay_us$60
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$delay_us$62-Sdelay$delay_us$61
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sdelay$delay_us$64-Sdelay$delay_us$62
	.db	3
	.sleb128	2
	.db	1
	.db	4
	.uleb128	3
	.db	9
	.dw	Sdelay$delay_us$66-Sdelay$delay_us$64
	.db	3
	.sleb128	350
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sdelay$delay_us$68-Sdelay$delay_us$66
	.db	3
	.sleb128	-350
	.db	1
	.db	9
	.dw	Sdelay$delay_us$70-Sdelay$delay_us$68
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sdelay$delay_us$72-Sdelay$delay_us$70
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sdelay$millis$74)
	.db	3
	.sleb128	70
	.db	1
	.db	9
	.dw	Sdelay$millis$76-Sdelay$millis$74
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	Sdelay$millis$77-Sdelay$millis$76
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sdelay$millis$78-Sdelay$millis$77
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sdelay$micros$80)
	.db	3
	.sleb128	75
	.db	1
	.db	9
	.dw	Sdelay$micros$83-Sdelay$micros$80
	.db	3
	.sleb128	1
	.db	1
	.db	4
	.uleb128	3
	.db	9
	.dw	Sdelay$micros$89-Sdelay$micros$83
	.db	3
	.sleb128	340
	.db	1
	.db	4
	.uleb128	1
	.db	9
	.dw	Sdelay$micros$93-Sdelay$micros$89
	.db	3
	.sleb128	-340
	.db	1
	.db	9
	.dw	Sdelay$micros$95-Sdelay$micros$93
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	1+Sdelay$micros$97-Sdelay$micros$95
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sdelay$micros$96)
	.dw	0,(Sdelay$micros$98)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sdelay$micros$90)
	.dw	0,(Sdelay$micros$96)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sdelay$micros$88)
	.dw	0,(Sdelay$micros$90)
	.dw	2
	.db	120
	.sleb128	17
	.dw	0,(Sdelay$micros$87)
	.dw	0,(Sdelay$micros$88)
	.dw	2
	.db	120
	.sleb128	16
	.dw	0,(Sdelay$micros$86)
	.dw	0,(Sdelay$micros$87)
	.dw	2
	.db	120
	.sleb128	14
	.dw	0,(Sdelay$micros$85)
	.dw	0,(Sdelay$micros$86)
	.dw	2
	.db	120
	.sleb128	13
	.dw	0,(Sdelay$micros$84)
	.dw	0,(Sdelay$micros$85)
	.dw	2
	.db	120
	.sleb128	11
	.dw	0,(Sdelay$micros$82)
	.dw	0,(Sdelay$micros$84)
	.dw	2
	.db	120
	.sleb128	9
	.dw	0,(Sdelay$micros$81)
	.dw	0,(Sdelay$micros$82)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sdelay$millis$75)
	.dw	0,(Sdelay$millis$79)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sdelay$delay_us$71)
	.dw	0,(Sdelay$delay_us$73)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sdelay$delay_us$54)
	.dw	0,(Sdelay$delay_us$71)
	.dw	2
	.db	120
	.sleb128	6
	.dw	0,(Sdelay$delay_us$53)
	.dw	0,(Sdelay$delay_us$54)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sdelay$delay_ms$47)
	.dw	0,(Sdelay$delay_ms$51)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,(Sdelay$delay_ms$46)
	.dw	0,(Sdelay$delay_ms$47)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sdelay$delay_ms$45)
	.dw	0,(Sdelay$delay_ms$46)
	.dw	2
	.db	120
	.sleb128	5
	.dw	0,(Sdelay$delay_ms$44)
	.dw	0,(Sdelay$delay_ms$45)
	.dw	2
	.db	120
	.sleb128	4
	.dw	0,(Sdelay$delay_ms$43)
	.dw	0,(Sdelay$delay_ms$44)
	.dw	2
	.db	120
	.sleb128	3
	.dw	0,(Sdelay$delay_ms$39)
	.dw	0,(Sdelay$delay_ms$43)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$28)
	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$36)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sdelay$TIM4_Config$1)
	.dw	0,(Sdelay$TIM4_Config$26)
	.dw	2
	.db	120
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	16
	.uleb128	53
	.db	0
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	11
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	6
	.uleb128	11
	.db	1
	.uleb128	0
	.uleb128	0
	.uleb128	14
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
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	17
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
	.uleb128	11
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
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
	.uleb128	7
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
	.uleb128	10
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
	.uleb128	54
	.uleb128	11
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	8
	.uleb128	11
	.db	0
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
	.uleb128	12
	.uleb128	11
	.db	1
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.uleb128	13
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
	.uleb128	9
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
	.ascii "delay.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 4.0.7 #11994"
	.db	0
	.uleb128	2
	.dw	0,546
	.ascii "TIM4_Config"
	.db	0
	.dw	0,(_TIM4_Config)
	.dw	0,(XG$TIM4_Config$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+280)
	.uleb128	3
	.dw	0,201
	.uleb128	3
	.dw	0,158
	.uleb128	3
	.dw	0,117
	.uleb128	3
	.dw	0,112
	.uleb128	4
	.dw	0,(Sdelay$TIM4_Config$2)
	.dw	0,(Sdelay$TIM4_Config$4)
	.uleb128	5
	.uleb128	0
	.uleb128	6
	.uleb128	5
	.uleb128	5
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "CLK_Peripheral"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "NewState"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720142"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720143"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	3
	.dw	0,218
	.uleb128	6
	.uleb128	4
	.dw	0,(Sdelay$TIM4_Config$4)
	.dw	0,(Sdelay$TIM4_Config$11)
	.uleb128	0
	.uleb128	0
	.uleb128	3
	.dw	0,324
	.uleb128	3
	.dw	0,281
	.uleb128	4
	.dw	0,(Sdelay$TIM4_Config$11)
	.dw	0,(Sdelay$TIM4_Config$14)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "TIM4_Prescaler"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "TIM4_Period"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720146"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720147"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	3
	.dw	0,380
	.uleb128	3
	.dw	0,358
	.uleb128	8
	.dw	0,(Sdelay$TIM4_Config$14)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "TIM4_FLAG"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720149"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	3
	.dw	0,483
	.uleb128	3
	.dw	0,440
	.uleb128	3
	.dw	0,406
	.uleb128	4
	.dw	0,(Sdelay$TIM4_Config$16)
	.dw	0,(Sdelay$TIM4_Config$18)
	.uleb128	5
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "TIM4_IT"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "NewState"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720151"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720152"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	6
	.uleb128	3
	.dw	0,523
	.uleb128	3
	.dw	0,505
	.uleb128	4
	.dw	0,(Sdelay$TIM4_Config$20)
	.dw	0,(Sdelay$TIM4_Config$22)
	.uleb128	5
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "NewState"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720154"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	10
	.dw	0,661
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
	.db	3
	.db	1
	.dw	0,(Ldebug_loc_start+260)
	.uleb128	6
	.uleb128	3
	.dw	0,638
	.uleb128	4
	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$30)
	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$32)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "TIM4_IT"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720156"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.dw	0,724
	.ascii "delay_ms"
	.db	0
	.dw	0,(_delay_ms)
	.dw	0,(XG$delay_ms$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+180)
	.uleb128	11
	.db	2
	.db	145
	.sleb128	2
	.ascii "ms"
	.db	0
	.dw	0,724
	.uleb128	12
	.dw	0,(Sdelay$delay_ms$37)
	.dw	0,(Sdelay$delay_ms$40)
	.uleb128	7
	.db	6
	.db	82
	.db	147
	.uleb128	1
	.db	81
	.db	147
	.uleb128	1
	.ascii "i"
	.db	0
	.dw	0,740
	.uleb128	0
	.uleb128	0
	.uleb128	9
	.ascii "unsigned int"
	.db	0
	.db	2
	.db	7
	.uleb128	9
	.ascii "int"
	.db	0
	.db	2
	.db	5
	.uleb128	2
	.dw	0,939
	.ascii "delay_us"
	.db	0
	.dw	0,(_delay_us)
	.dw	0,(XG$delay_us$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+136)
	.uleb128	11
	.db	2
	.db	145
	.sleb128	2
	.ascii "us"
	.db	0
	.dw	0,724
	.uleb128	3
	.dw	0,802
	.uleb128	6
	.uleb128	4
	.dw	0,(Sdelay$delay_us$55)
	.dw	0,(Sdelay$delay_us$57)
	.uleb128	0
	.uleb128	0
	.uleb128	13
	.dw	0,855
	.dw	0,(Sdelay$delay_us$59)
	.dw	0,(Sdelay$delay_us$63)
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-4
	.ascii "start_tick"
	.db	0
	.dw	0,724
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-2
	.ascii "delay_ticks"
	.db	0
	.dw	0,724
	.uleb128	0
	.uleb128	13
	.dw	0,880
	.dw	0,(Sdelay$delay_us$67)
	.dw	0,(Sdelay$delay_us$69)
	.uleb128	6
	.uleb128	4
	.dw	0,(Sdelay$delay_us$65)
	.dw	0,(Sdelay$delay_us$67)
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.db	1
	.db	80
	.ascii "__1310720160"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	0
	.ascii "__1310720158"
	.db	0
	.dw	0,546
	.uleb128	7
	.db	2
	.db	145
	.sleb128	-5
	.ascii "start_us"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	14
	.ascii "millis"
	.db	0
	.dw	0,(_millis)
	.dw	0,(XG$millis$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start+116)
	.dw	0,724
	.uleb128	9
	.ascii "unsigned long"
	.db	0
	.db	4
	.db	7
	.uleb128	15
	.dw	0,1056
	.ascii "micros"
	.db	0
	.dw	0,(_micros)
	.dw	0,(XG$micros$0$0+1)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.dw	0,964
	.uleb128	13
	.dw	0,1035
	.dw	0,(Sdelay$micros$92)
	.dw	0,(Sdelay$micros$94)
	.uleb128	6
	.uleb128	4
	.dw	0,(Sdelay$micros$91)
	.dw	0,(Sdelay$micros$92)
	.uleb128	0
	.uleb128	0
	.uleb128	7
	.db	1
	.db	80
	.ascii "__1310720162"
	.db	0
	.dw	0,546
	.uleb128	0
	.uleb128	16
	.dw	0,964
	.uleb128	17
	.db	5
	.db	3
	.dw	0,(_tick)
	.ascii "tick"
	.db	0
	.db	1
	.dw	0,1056
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
	.dw	0,51
	.ascii "TIM4_Config"
	.db	0
	.dw	0,563
	.ascii "TIM4_UPD_OVF_IRQHandler"
	.db	0
	.dw	0,661
	.ascii "delay_ms"
	.db	0
	.dw	0,747
	.ascii "delay_us"
	.db	0
	.dw	0,939
	.ascii "millis"
	.db	0
	.dw	0,981
	.ascii "micros"
	.db	0
	.dw	0,1061
	.ascii "tick"
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
	.dw	0,75
	.dw	0,(Ldebug_CIE0_start-4)
	.dw	0,(Sdelay$micros$81)	;initial loc
	.dw	0,Sdelay$micros$98-Sdelay$micros$81
	.db	1
	.dw	0,(Sdelay$micros$81)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sdelay$micros$82)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sdelay$micros$84)
	.db	14
	.uleb128	12
	.db	1
	.dw	0,(Sdelay$micros$85)
	.db	14
	.uleb128	14
	.db	1
	.dw	0,(Sdelay$micros$86)
	.db	14
	.uleb128	15
	.db	1
	.dw	0,(Sdelay$micros$87)
	.db	14
	.uleb128	17
	.db	1
	.dw	0,(Sdelay$micros$88)
	.db	14
	.uleb128	18
	.db	1
	.dw	0,(Sdelay$micros$90)
	.db	14
	.uleb128	10
	.db	1
	.dw	0,(Sdelay$micros$96)
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
	.dw	0,19
	.dw	0,(Ldebug_CIE1_start-4)
	.dw	0,(Sdelay$millis$75)	;initial loc
	.dw	0,Sdelay$millis$79-Sdelay$millis$75
	.db	1
	.dw	0,(Sdelay$millis$75)
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
	.dw	0,(Sdelay$delay_us$53)	;initial loc
	.dw	0,Sdelay$delay_us$73-Sdelay$delay_us$53
	.db	1
	.dw	0,(Sdelay$delay_us$53)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sdelay$delay_us$54)
	.db	14
	.uleb128	7
	.db	1
	.dw	0,(Sdelay$delay_us$71)
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
	.dw	0,54
	.dw	0,(Ldebug_CIE3_start-4)
	.dw	0,(Sdelay$delay_ms$39)	;initial loc
	.dw	0,Sdelay$delay_ms$51-Sdelay$delay_ms$39
	.db	1
	.dw	0,(Sdelay$delay_ms$39)
	.db	14
	.uleb128	2
	.db	1
	.dw	0,(Sdelay$delay_ms$43)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sdelay$delay_ms$44)
	.db	14
	.uleb128	5
	.db	1
	.dw	0,(Sdelay$delay_ms$45)
	.db	14
	.uleb128	6
	.db	1
	.dw	0,(Sdelay$delay_ms$46)
	.db	14
	.uleb128	4
	.db	1
	.dw	0,(Sdelay$delay_ms$47)
	.db	14
	.uleb128	2

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
Ldebug_CIE4_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	-1
	.db	9
	.db	12
	.uleb128	8
	.uleb128	9
	.db	137
	.uleb128	1
Ldebug_CIE4_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE4_start-4)
	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$28)	;initial loc
	.dw	0,Sdelay$TIM4_UPD_OVF_IRQHandler$36-Sdelay$TIM4_UPD_OVF_IRQHandler$28
	.db	1
	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$28)
	.db	14
	.uleb128	9

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
Ldebug_CIE5_start:
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
Ldebug_CIE5_end:
	.dw	0,19
	.dw	0,(Ldebug_CIE5_start-4)
	.dw	0,(Sdelay$TIM4_Config$1)	;initial loc
	.dw	0,Sdelay$TIM4_Config$26-Sdelay$TIM4_Config$1
	.db	1
	.dw	0,(Sdelay$TIM4_Config$1)
	.db	14
	.uleb128	2
