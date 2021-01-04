                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.7 #11994 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _tick
                                     12 	.globl _TIM4_Config
                                     13 	.globl _TIM4_UPD_OVF_IRQHandler
                                     14 	.globl _delay_ms
                                     15 	.globl _delay_us
                                     16 	.globl _millis
                                     17 	.globl _micros
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area DATA
                                     22 ;--------------------------------------------------------
                                     23 ; ram data
                                     24 ;--------------------------------------------------------
                                     25 	.area INITIALIZED
                           000000    26 G$tick$0_0$0==.
      000005                         27 _tick::
      000005                         28 	.ds 4
                                     29 ;--------------------------------------------------------
                                     30 ; absolute external ram data
                                     31 ;--------------------------------------------------------
                                     32 	.area DABS (ABS)
                                     33 
                                     34 ; default segment ordering for linker
                                     35 	.area HOME
                                     36 	.area GSINIT
                                     37 	.area GSFINAL
                                     38 	.area CONST
                                     39 	.area INITIALIZER
                                     40 	.area CODE
                                     41 
                                     42 ;--------------------------------------------------------
                                     43 ; global & static initialisations
                                     44 ;--------------------------------------------------------
                                     45 	.area HOME
                                     46 	.area GSINIT
                                     47 	.area GSFINAL
                                     48 	.area GSINIT
                                     49 ;--------------------------------------------------------
                                     50 ; Home
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area HOME
                                     54 ;--------------------------------------------------------
                                     55 ; code
                                     56 ;--------------------------------------------------------
                                     57 	.area CODE
                           000000    58 	Sdelay$TIM4_Config$0 ==.
                                     59 ;	delay.c: 25: void TIM4_Config(void)
                                     60 ;	-----------------------------------------
                                     61 ;	 function TIM4_Config
                                     62 ;	-----------------------------------------
      0080D4                         63 _TIM4_Config:
                           000000    64 	Sdelay$TIM4_Config$1 ==.
                           000000    65 	Sdelay$TIM4_Config$2 ==.
                           000000    66 	Sdelay$TIM4_Config$3 ==.
                                     67 ;	inc/stm8s_clk.h: 621: CLK->PCKENR1 |= (uint8_t) ((uint8_t) 1 << ((uint8_t) CLK_Peripheral & (uint8_t) 0x0F));
      0080D4 72 18 50 C7      [ 1]   68 	bset	20679, #4
                           000004    69 	Sdelay$TIM4_Config$4 ==.
                           000004    70 	Sdelay$TIM4_Config$4 ==.
                           000004    71 	Sdelay$TIM4_Config$5 ==.
                                     72 ;	inc/stm8s_tim4.h: 188: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
      0080D8 35 00 53 40      [ 1]   73 	mov	0x5340+0, #0x00
                           000008    74 	Sdelay$TIM4_Config$6 ==.
                                     75 ;	inc/stm8s_tim4.h: 189: TIM4->IER = TIM4_IER_RESET_VALUE;
      0080DC 35 00 53 43      [ 1]   76 	mov	0x5343+0, #0x00
                           00000C    77 	Sdelay$TIM4_Config$7 ==.
                                     78 ;	inc/stm8s_tim4.h: 190: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
      0080E0 35 00 53 46      [ 1]   79 	mov	0x5346+0, #0x00
                           000010    80 	Sdelay$TIM4_Config$8 ==.
                                     81 ;	inc/stm8s_tim4.h: 191: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
      0080E4 35 00 53 47      [ 1]   82 	mov	0x5347+0, #0x00
                           000014    83 	Sdelay$TIM4_Config$9 ==.
                                     84 ;	inc/stm8s_tim4.h: 192: TIM4->ARR = TIM4_ARR_RESET_VALUE;
      0080E8 35 FF 53 48      [ 1]   85 	mov	0x5348+0, #0xff
                           000018    86 	Sdelay$TIM4_Config$10 ==.
                                     87 ;	inc/stm8s_tim4.h: 193: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
      0080EC 35 00 53 44      [ 1]   88 	mov	0x5344+0, #0x00
                           00001C    89 	Sdelay$TIM4_Config$11 ==.
                           00001C    90 	Sdelay$TIM4_Config$11 ==.
                           00001C    91 	Sdelay$TIM4_Config$12 ==.
                                     92 ;	inc/stm8s_tim4.h: 207: TIM4->PSCR = (uint8_t) (TIM4_Prescaler);
      0080F0 35 04 53 47      [ 1]   93 	mov	0x5347+0, #0x04
                           000020    94 	Sdelay$TIM4_Config$13 ==.
                                     95 ;	inc/stm8s_tim4.h: 209: TIM4->ARR = (uint8_t) (TIM4_Period);
      0080F4 35 FA 53 48      [ 1]   96 	mov	0x5348+0, #0xfa
                           000024    97 	Sdelay$TIM4_Config$14 ==.
                           000024    98 	Sdelay$TIM4_Config$14 ==.
                           000024    99 	Sdelay$TIM4_Config$15 ==.
                                    100 ;	inc/stm8s_tim4.h: 466: TIM4->SR1 = (uint8_t) (~TIM4_FLAG);
      0080F8 35 FE 53 44      [ 1]  101 	mov	0x5344+0, #0xfe
                           000028   102 	Sdelay$TIM4_Config$16 ==.
                           000028   103 	Sdelay$TIM4_Config$17 ==.
                                    104 ;	inc/stm8s_tim4.h: 249: TIM4->IER |= (uint8_t) TIM4_IT;
      0080FC C6 53 43         [ 1]  105 	ld	a, 0x5343
      0080FF AA 01            [ 1]  106 	or	a, #0x01
      008101 C7 53 43         [ 1]  107 	ld	0x5343, a
                           000030   108 	Sdelay$TIM4_Config$18 ==.
                           000030   109 	Sdelay$TIM4_Config$19 ==.
                                    110 ;	delay.c: 34: enableInterrupts(); // global interrupt enable
      008104 9A               [ 1]  111 	rim
                           000031   112 	Sdelay$TIM4_Config$20 ==.
                           000031   113 	Sdelay$TIM4_Config$21 ==.
                                    114 ;	inc/stm8s_tim4.h: 225: TIM4->CR1 |= TIM4_CR1_CEN;
      008105 72 10 53 40      [ 1]  115 	bset	21312, #0
                           000035   116 	Sdelay$TIM4_Config$22 ==.
                           000035   117 	Sdelay$TIM4_Config$23 ==.
                                    118 ;	delay.c: 35: TIM4_Cmd(ENABLE);  //Start Timer 4
                           000035   119 	Sdelay$TIM4_Config$24 ==.
                                    120 ;	delay.c: 36: }
                           000035   121 	Sdelay$TIM4_Config$25 ==.
                           000035   122 	XG$TIM4_Config$0$0 ==.
      008109 81               [ 4]  123 	ret
                           000036   124 	Sdelay$TIM4_Config$26 ==.
                           000036   125 	Sdelay$TIM4_UPD_OVF_IRQHandler$27 ==.
                                    126 ;	delay.c: 38: INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
                                    127 ;	-----------------------------------------
                                    128 ;	 function TIM4_UPD_OVF_IRQHandler
                                    129 ;	-----------------------------------------
      00810A                        130 _TIM4_UPD_OVF_IRQHandler:
                           000036   131 	Sdelay$TIM4_UPD_OVF_IRQHandler$28 ==.
                           000036   132 	Sdelay$TIM4_UPD_OVF_IRQHandler$29 ==.
                                    133 ;	delay.c: 40: tick++;
      00810A CE 00 07         [ 2]  134 	ldw	x, _tick+2
      00810D 90 CE 00 05      [ 2]  135 	ldw	y, _tick+0
      008111 5C               [ 1]  136 	incw	x
      008112 26 02            [ 1]  137 	jrne	00104$
      008114 90 5C            [ 1]  138 	incw	y
      008116                        139 00104$:
      008116 CF 00 07         [ 2]  140 	ldw	_tick+2, x
      008119 90 CF 00 05      [ 2]  141 	ldw	_tick+0, y
                           000049   142 	Sdelay$TIM4_UPD_OVF_IRQHandler$30 ==.
                           000049   143 	Sdelay$TIM4_UPD_OVF_IRQHandler$31 ==.
                                    144 ;	inc/stm8s_tim4.h: 510: TIM4->SR1 = (uint8_t) (~TIM4_IT);
      00811D 35 FE 53 44      [ 1]  145 	mov	0x5344+0, #0xfe
                           00004D   146 	Sdelay$TIM4_UPD_OVF_IRQHandler$32 ==.
                           00004D   147 	Sdelay$TIM4_UPD_OVF_IRQHandler$33 ==.
                                    148 ;	delay.c: 41: TIM4_ClearITPendingBit(TIM4_IT_UPDATE);
                           00004D   149 	Sdelay$TIM4_UPD_OVF_IRQHandler$34 ==.
                                    150 ;	delay.c: 45: }
                           00004D   151 	Sdelay$TIM4_UPD_OVF_IRQHandler$35 ==.
                           00004D   152 	XG$TIM4_UPD_OVF_IRQHandler$0$0 ==.
      008121 80               [11]  153 	iret
                           00004E   154 	Sdelay$TIM4_UPD_OVF_IRQHandler$36 ==.
                           00004E   155 	Sdelay$delay_ms$37 ==.
                           00004E   156 	Sdelay$delay_ms$38 ==.
                                    157 ;	delay.c: 48: void delay_ms(uint16_t ms)
                                    158 ;	-----------------------------------------
                                    159 ;	 function delay_ms
                                    160 ;	-----------------------------------------
      008122                        161 _delay_ms:
                           00004E   162 	Sdelay$delay_ms$39 ==.
                           00004E   163 	Sdelay$delay_ms$40 ==.
                           00004E   164 	Sdelay$delay_ms$41 ==.
                                    165 ;	delay.c: 50: for(int i=0; i<ms; i++)
      008122 5F               [ 1]  166 	clrw	x
      008123                        167 00103$:
      008123 90 93            [ 1]  168 	ldw	y, x
      008125 51               [ 1]  169 	exgw	x, y
      008126 13 03            [ 2]  170 	cpw	x, (0x03, sp)
      008128 51               [ 1]  171 	exgw	x, y
      008129 24 0D            [ 1]  172 	jrnc	00105$
                           000057   173 	Sdelay$delay_ms$42 ==.
                                    174 ;	delay.c: 51: delay_us(1000);
      00812B 89               [ 2]  175 	pushw	x
                           000058   176 	Sdelay$delay_ms$43 ==.
      00812C 4B E8            [ 1]  177 	push	#0xe8
                           00005A   178 	Sdelay$delay_ms$44 ==.
      00812E 4B 03            [ 1]  179 	push	#0x03
                           00005C   180 	Sdelay$delay_ms$45 ==.
      008130 CD 81 39         [ 4]  181 	call	_delay_us
      008133 85               [ 2]  182 	popw	x
                           000060   183 	Sdelay$delay_ms$46 ==.
      008134 85               [ 2]  184 	popw	x
                           000061   185 	Sdelay$delay_ms$47 ==.
                           000061   186 	Sdelay$delay_ms$48 ==.
                                    187 ;	delay.c: 50: for(int i=0; i<ms; i++)
      008135 5C               [ 1]  188 	incw	x
      008136 20 EB            [ 2]  189 	jra	00103$
      008138                        190 00105$:
                           000064   191 	Sdelay$delay_ms$49 ==.
                                    192 ;	delay.c: 52: }
                           000064   193 	Sdelay$delay_ms$50 ==.
                           000064   194 	XG$delay_ms$0$0 ==.
      008138 81               [ 4]  195 	ret
                           000065   196 	Sdelay$delay_ms$51 ==.
                           000065   197 	Sdelay$delay_us$52 ==.
                                    198 ;	delay.c: 58: void delay_us(uint16_t us)
                                    199 ;	-----------------------------------------
                                    200 ;	 function delay_us
                                    201 ;	-----------------------------------------
      008139                        202 _delay_us:
                           000065   203 	Sdelay$delay_us$53 ==.
      008139 52 05            [ 2]  204 	sub	sp, #5
                           000067   205 	Sdelay$delay_us$54 ==.
                           000067   206 	Sdelay$delay_us$55 ==.
                           000067   207 	Sdelay$delay_us$56 ==.
                                    208 ;	delay.c: 60: uint8_t start_us = TIM4_GetCounter();  //tim4 increments every us
      00813B C6 53 46         [ 1]  209 	ld	a, 0x5346
      00813E 6B 01            [ 1]  210 	ld	(0x01, sp), a
                           00006C   211 	Sdelay$delay_us$57 ==.
                           00006C   212 	Sdelay$delay_us$58 ==.
                                    213 ;	delay.c: 61: if(us>=250){   //we only need to bother with the following for delays greater than 1 tick (250us)
      008140 1E 08            [ 2]  214 	ldw	x, (0x08, sp)
      008142 A3 00 FA         [ 2]  215 	cpw	x, #0x00fa
      008145 25 17            [ 1]  216 	jrc	00106$
                           000073   217 	Sdelay$delay_us$59 ==.
                           000073   218 	Sdelay$delay_us$60 ==.
                                    219 ;	delay.c: 62: uint16_t start_tick = (uint16_t)tick;  //the tick increments every 250us
      008147 90 CE 00 07      [ 2]  220 	ldw	y, _tick+2
      00814B 17 02            [ 2]  221 	ldw	(0x02, sp), y
                           000079   222 	Sdelay$delay_us$61 ==.
                                    223 ;	delay.c: 63: uint16_t delay_ticks = us/250;
      00814D 90 AE 00 FA      [ 2]  224 	ldw	y, #0x00fa
      008151 65               [ 2]  225 	divw	x, y
      008152 1F 04            [ 2]  226 	ldw	(0x04, sp), x
                           000080   227 	Sdelay$delay_us$62 ==.
                                    228 ;	delay.c: 65: while(((uint16_t)tick - start_tick) < delay_ticks); // delay in multiples of 250us
      008154                        229 00101$:
      008154 CE 00 07         [ 2]  230 	ldw	x, _tick+2
      008157 72 F0 02         [ 2]  231 	subw	x, (0x02, sp)
      00815A 13 04            [ 2]  232 	cpw	x, (0x04, sp)
      00815C 25 F6            [ 1]  233 	jrc	00101$
                           00008A   234 	Sdelay$delay_us$63 ==.
                           00008A   235 	Sdelay$delay_us$64 ==.
                                    236 ;	delay.c: 67: while(TIM4_GetCounter() < start_us); //now wait until our 1us counter matches our start us
      00815E                        237 00106$:
                           00008A   238 	Sdelay$delay_us$65 ==.
                           00008A   239 	Sdelay$delay_us$66 ==.
                                    240 ;	inc/stm8s_tim4.h: 417: return (uint8_t) (TIM4->CNTR);
      00815E C6 53 46         [ 1]  241 	ld	a, 0x5346
                           00008D   242 	Sdelay$delay_us$67 ==.
                           00008D   243 	Sdelay$delay_us$67 ==.
                           00008D   244 	Sdelay$delay_us$68 ==.
                                    245 ;	delay.c: 67: while(TIM4_GetCounter() < start_us); //now wait until our 1us counter matches our start us
      008161 11 01            [ 1]  246 	cp	a, (0x01, sp)
      008163 25 F9            [ 1]  247 	jrc	00106$
                           000091   248 	Sdelay$delay_us$69 ==.
                           000091   249 	Sdelay$delay_us$70 ==.
                                    250 ;	delay.c: 68: }
      008165 5B 05            [ 2]  251 	addw	sp, #5
                           000093   252 	Sdelay$delay_us$71 ==.
                           000093   253 	Sdelay$delay_us$72 ==.
                           000093   254 	XG$delay_us$0$0 ==.
      008167 81               [ 4]  255 	ret
                           000094   256 	Sdelay$delay_us$73 ==.
                           000094   257 	Sdelay$millis$74 ==.
                                    258 ;	delay.c: 71: uint16_t millis(void){
                                    259 ;	-----------------------------------------
                                    260 ;	 function millis
                                    261 ;	-----------------------------------------
      008168                        262 _millis:
                           000094   263 	Sdelay$millis$75 ==.
                           000094   264 	Sdelay$millis$76 ==.
                                    265 ;	delay.c: 72: return((uint16_t)(tick >> 2)); // divide tick by 4 returns milliseconds
      008168 CE 00 07         [ 2]  266 	ldw	x, _tick+2
      00816B 90 CE 00 05      [ 2]  267 	ldw	y, _tick+0
      00816F 90 54            [ 2]  268 	srlw	y
      008171 56               [ 2]  269 	rrcw	x
      008172 90 54            [ 2]  270 	srlw	y
      008174 56               [ 2]  271 	rrcw	x
                           0000A1   272 	Sdelay$millis$77 ==.
                                    273 ;	delay.c: 73: }
                           0000A1   274 	Sdelay$millis$78 ==.
                           0000A1   275 	XG$millis$0$0 ==.
      008175 81               [ 4]  276 	ret
                           0000A2   277 	Sdelay$millis$79 ==.
                           0000A2   278 	Sdelay$micros$80 ==.
                                    279 ;	delay.c: 76: uint32_t micros(void){
                                    280 ;	-----------------------------------------
                                    281 ;	 function micros
                                    282 ;	-----------------------------------------
      008176                        283 _micros:
                           0000A2   284 	Sdelay$micros$81 ==.
      008176 52 08            [ 2]  285 	sub	sp, #8
                           0000A4   286 	Sdelay$micros$82 ==.
                           0000A4   287 	Sdelay$micros$83 ==.
                                    288 ;	delay.c: 77: return(tick*250 + TIM4_GetCounter()); //each tick is worth 250us
      008178 CE 00 07         [ 2]  289 	ldw	x, _tick+2
      00817B 89               [ 2]  290 	pushw	x
                           0000A8   291 	Sdelay$micros$84 ==.
      00817C CE 00 05         [ 2]  292 	ldw	x, _tick+0
      00817F 89               [ 2]  293 	pushw	x
                           0000AC   294 	Sdelay$micros$85 ==.
      008180 4B FA            [ 1]  295 	push	#0xfa
                           0000AE   296 	Sdelay$micros$86 ==.
      008182 5F               [ 1]  297 	clrw	x
      008183 89               [ 2]  298 	pushw	x
                           0000B0   299 	Sdelay$micros$87 ==.
      008184 4B 00            [ 1]  300 	push	#0x00
                           0000B2   301 	Sdelay$micros$88 ==.
                           0000B2   302 	Sdelay$micros$89 ==.
                                    303 ;	inc/stm8s_tim4.h: 417: return (uint8_t) (TIM4->CNTR);
      008186 CD 82 7C         [ 4]  304 	call	__mullong
      008189 5B 08            [ 2]  305 	addw	sp, #8
                           0000B7   306 	Sdelay$micros$90 ==.
      00818B 1F 03            [ 2]  307 	ldw	(0x03, sp), x
                           0000B9   308 	Sdelay$micros$91 ==.
      00818D C6 53 46         [ 1]  309 	ld	a, 0x5346
                           0000BC   310 	Sdelay$micros$92 ==.
                           0000BC   311 	Sdelay$micros$92 ==.
                           0000BC   312 	Sdelay$micros$93 ==.
                                    313 ;	delay.c: 77: return(tick*250 + TIM4_GetCounter()); //each tick is worth 250us
      008190 5F               [ 1]  314 	clrw	x
      008191 0F 06            [ 1]  315 	clr	(0x06, sp)
      008193 0F 05            [ 1]  316 	clr	(0x05, sp)
      008195 97               [ 1]  317 	ld	xl, a
      008196 72 FB 03         [ 2]  318 	addw	x, (0x03, sp)
      008199 90 9F            [ 1]  319 	ld	a, yl
      00819B 19 06            [ 1]  320 	adc	a, (0x06, sp)
      00819D 90 02            [ 1]  321 	rlwa	y
      00819F 19 05            [ 1]  322 	adc	a, (0x05, sp)
      0081A1 90 95            [ 1]  323 	ld	yh, a
                           0000CF   324 	Sdelay$micros$94 ==.
                           0000CF   325 	Sdelay$micros$95 ==.
                                    326 ;	delay.c: 78: }
      0081A3 5B 08            [ 2]  327 	addw	sp, #8
                           0000D1   328 	Sdelay$micros$96 ==.
                           0000D1   329 	Sdelay$micros$97 ==.
                           0000D1   330 	XG$micros$0$0 ==.
      0081A5 81               [ 4]  331 	ret
                           0000D2   332 	Sdelay$micros$98 ==.
                                    333 	.area CODE
                                    334 	.area CONST
                           000000   335 Ldelay.AWU_Init$APR_Array$1_0$122 == .
      008088                        336 _AWU_Init_APR_Array_65536_122:
      008088 00                     337 	.db #0x00	; 0
      008089 1E                     338 	.db #0x1e	; 30
      00808A 1E                     339 	.db #0x1e	; 30
      00808B 1E                     340 	.db #0x1e	; 30
      00808C 1E                     341 	.db #0x1e	; 30
      00808D 1E                     342 	.db #0x1e	; 30
      00808E 1E                     343 	.db #0x1e	; 30
      00808F 1E                     344 	.db #0x1e	; 30
      008090 1E                     345 	.db #0x1e	; 30
      008091 1E                     346 	.db #0x1e	; 30
      008092 1E                     347 	.db #0x1e	; 30
      008093 1E                     348 	.db #0x1e	; 30
      008094 1E                     349 	.db #0x1e	; 30
      008095 3D                     350 	.db #0x3d	; 61
      008096 17                     351 	.db #0x17	; 23
      008097 17                     352 	.db #0x17	; 23
      008098 3E                     353 	.db #0x3e	; 62
                           000011   354 Ldelay.AWU_Init$TBR_Array$1_0$122 == .
      008099                        355 _AWU_Init_TBR_Array_65536_122:
      008099 00                     356 	.db #0x00	; 0
      00809A 01                     357 	.db #0x01	; 1
      00809B 02                     358 	.db #0x02	; 2
      00809C 03                     359 	.db #0x03	; 3
      00809D 04                     360 	.db #0x04	; 4
      00809E 05                     361 	.db #0x05	; 5
      00809F 06                     362 	.db #0x06	; 6
      0080A0 07                     363 	.db #0x07	; 7
      0080A1 08                     364 	.db #0x08	; 8
      0080A2 09                     365 	.db #0x09	; 9
      0080A3 0A                     366 	.db #0x0a	; 10
      0080A4 0B                     367 	.db #0x0b	; 11
      0080A5 0C                     368 	.db #0x0c	; 12
      0080A6 0C                     369 	.db #0x0c	; 12
      0080A7 0E                     370 	.db #0x0e	; 14
      0080A8 0F                     371 	.db #0x0f	; 15
      0080A9 0F                     372 	.db #0x0f	; 15
                                    373 	.area INITIALIZER
                           000000   374 Fdelay$__xinit_tick$0_0$0 == .
      0080CC                        375 __xinit__tick:
      0080CC 00 00 00 00            376 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                                    377 	.area CABS (ABS)
                                    378 
                                    379 	.area .debug_line (NOLOAD)
      000000 00 00 02 35            380 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000004                        381 Ldebug_line_start:
      000004 00 02                  382 	.dw	2
      000006 00 00 00 C6            383 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      00000A 01                     384 	.db	1
      00000B 01                     385 	.db	1
      00000C FB                     386 	.db	-5
      00000D 0F                     387 	.db	15
      00000E 0A                     388 	.db	10
      00000F 00                     389 	.db	0
      000010 01                     390 	.db	1
      000011 01                     391 	.db	1
      000012 01                     392 	.db	1
      000013 01                     393 	.db	1
      000014 00                     394 	.db	0
      000015 00                     395 	.db	0
      000016 00                     396 	.db	0
      000017 01                     397 	.db	1
      000018 2F 75 73 72 2F 62 69   398 	.ascii "/usr/bin/../share/sdcc/include/stm8"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      00003B 00                     399 	.db	0
      00003C 2F 75 73 72 2F 6C 6F   400 	.ascii "/usr/local/share/sdcc/include/stm8"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65 2F 73 74 6D 38
      00005E 00                     401 	.db	0
      00005F 2F 75 73 72 2F 62 69   402 	.ascii "/usr/bin/../share/sdcc/include"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      00007D 00                     403 	.db	0
      00007E 2F 75 73 72 2F 6C 6F   404 	.ascii "/usr/local/share/sdcc/include"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65
      00009B 00                     405 	.db	0
      00009C 00                     406 	.db	0
      00009D 64 65 6C 61 79 2E 63   407 	.ascii "delay.c"
      0000A4 00                     408 	.db	0
      0000A5 00                     409 	.uleb128	0
      0000A6 00                     410 	.uleb128	0
      0000A7 00                     411 	.uleb128	0
      0000A8 69 6E 63 2F 73 74 6D   412 	.ascii "inc/stm8s_clk.h"
             38 73 5F 63 6C 6B 2E
             68
      0000B7 00                     413 	.db	0
      0000B8 00                     414 	.uleb128	0
      0000B9 00                     415 	.uleb128	0
      0000BA 00                     416 	.uleb128	0
      0000BB 69 6E 63 2F 73 74 6D   417 	.ascii "inc/stm8s_tim4.h"
             38 73 5F 74 69 6D 34
             2E 68
      0000CB 00                     418 	.db	0
      0000CC 00                     419 	.uleb128	0
      0000CD 00                     420 	.uleb128	0
      0000CE 00                     421 	.uleb128	0
      0000CF 00                     422 	.db	0
      0000D0                        423 Ldebug_line_stmt:
      0000D0 00                     424 	.db	0
      0000D1 05                     425 	.uleb128	5
      0000D2 02                     426 	.db	2
      0000D3 00 00 80 D4            427 	.dw	0,(Sdelay$TIM4_Config$0)
      0000D7 03                     428 	.db	3
      0000D8 18                     429 	.sleb128	24
      0000D9 01                     430 	.db	1
      0000DA 04                     431 	.db	4
      0000DB 02                     432 	.uleb128	2
      0000DC 09                     433 	.db	9
      0000DD 00 00                  434 	.dw	Sdelay$TIM4_Config$3-Sdelay$TIM4_Config$0
      0000DF 03                     435 	.db	3
      0000E0 D4 04                  436 	.sleb128	596
      0000E2 01                     437 	.db	1
      0000E3 04                     438 	.db	4
      0000E4 03                     439 	.uleb128	3
      0000E5 09                     440 	.db	9
      0000E6 00 04                  441 	.dw	Sdelay$TIM4_Config$5-Sdelay$TIM4_Config$3
      0000E8 03                     442 	.db	3
      0000E9 CF 7C                  443 	.sleb128	-433
      0000EB 01                     444 	.db	1
      0000EC 09                     445 	.db	9
      0000ED 00 04                  446 	.dw	Sdelay$TIM4_Config$6-Sdelay$TIM4_Config$5
      0000EF 03                     447 	.db	3
      0000F0 01                     448 	.sleb128	1
      0000F1 01                     449 	.db	1
      0000F2 09                     450 	.db	9
      0000F3 00 04                  451 	.dw	Sdelay$TIM4_Config$7-Sdelay$TIM4_Config$6
      0000F5 03                     452 	.db	3
      0000F6 01                     453 	.sleb128	1
      0000F7 01                     454 	.db	1
      0000F8 09                     455 	.db	9
      0000F9 00 04                  456 	.dw	Sdelay$TIM4_Config$8-Sdelay$TIM4_Config$7
      0000FB 03                     457 	.db	3
      0000FC 01                     458 	.sleb128	1
      0000FD 01                     459 	.db	1
      0000FE 09                     460 	.db	9
      0000FF 00 04                  461 	.dw	Sdelay$TIM4_Config$9-Sdelay$TIM4_Config$8
      000101 03                     462 	.db	3
      000102 01                     463 	.sleb128	1
      000103 01                     464 	.db	1
      000104 09                     465 	.db	9
      000105 00 04                  466 	.dw	Sdelay$TIM4_Config$10-Sdelay$TIM4_Config$9
      000107 03                     467 	.db	3
      000108 01                     468 	.sleb128	1
      000109 01                     469 	.db	1
      00010A 09                     470 	.db	9
      00010B 00 04                  471 	.dw	Sdelay$TIM4_Config$12-Sdelay$TIM4_Config$10
      00010D 03                     472 	.db	3
      00010E 0E                     473 	.sleb128	14
      00010F 01                     474 	.db	1
      000110 09                     475 	.db	9
      000111 00 04                  476 	.dw	Sdelay$TIM4_Config$13-Sdelay$TIM4_Config$12
      000113 03                     477 	.db	3
      000114 02                     478 	.sleb128	2
      000115 01                     479 	.db	1
      000116 09                     480 	.db	9
      000117 00 04                  481 	.dw	Sdelay$TIM4_Config$15-Sdelay$TIM4_Config$13
      000119 03                     482 	.db	3
      00011A 81 02                  483 	.sleb128	257
      00011C 01                     484 	.db	1
      00011D 09                     485 	.db	9
      00011E 00 04                  486 	.dw	Sdelay$TIM4_Config$17-Sdelay$TIM4_Config$15
      000120 03                     487 	.db	3
      000121 A7 7E                  488 	.sleb128	-217
      000123 01                     489 	.db	1
      000124 04                     490 	.db	4
      000125 01                     491 	.uleb128	1
      000126 09                     492 	.db	9
      000127 00 08                  493 	.dw	Sdelay$TIM4_Config$19-Sdelay$TIM4_Config$17
      000129 03                     494 	.db	3
      00012A A9 7E                  495 	.sleb128	-215
      00012C 01                     496 	.db	1
      00012D 04                     497 	.db	4
      00012E 03                     498 	.uleb128	3
      00012F 09                     499 	.db	9
      000130 00 01                  500 	.dw	Sdelay$TIM4_Config$21-Sdelay$TIM4_Config$19
      000132 03                     501 	.db	3
      000133 BF 01                  502 	.sleb128	191
      000135 01                     503 	.db	1
      000136 04                     504 	.db	4
      000137 01                     505 	.uleb128	1
      000138 09                     506 	.db	9
      000139 00 04                  507 	.dw	Sdelay$TIM4_Config$23-Sdelay$TIM4_Config$21
      00013B 03                     508 	.db	3
      00013C C2 7E                  509 	.sleb128	-190
      00013E 01                     510 	.db	1
      00013F 09                     511 	.db	9
      000140 00 00                  512 	.dw	Sdelay$TIM4_Config$24-Sdelay$TIM4_Config$23
      000142 03                     513 	.db	3
      000143 01                     514 	.sleb128	1
      000144 01                     515 	.db	1
      000145 09                     516 	.db	9
      000146 00 01                  517 	.dw	1+Sdelay$TIM4_Config$25-Sdelay$TIM4_Config$24
      000148 00                     518 	.db	0
      000149 01                     519 	.uleb128	1
      00014A 01                     520 	.db	1
      00014B 00                     521 	.db	0
      00014C 05                     522 	.uleb128	5
      00014D 02                     523 	.db	2
      00014E 00 00 81 0A            524 	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$27)
      000152 03                     525 	.db	3
      000153 25                     526 	.sleb128	37
      000154 01                     527 	.db	1
      000155 09                     528 	.db	9
      000156 00 00                  529 	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$29-Sdelay$TIM4_UPD_OVF_IRQHandler$27
      000158 03                     530 	.db	3
      000159 02                     531 	.sleb128	2
      00015A 01                     532 	.db	1
      00015B 04                     533 	.db	4
      00015C 03                     534 	.uleb128	3
      00015D 09                     535 	.db	9
      00015E 00 13                  536 	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$31-Sdelay$TIM4_UPD_OVF_IRQHandler$29
      000160 03                     537 	.db	3
      000161 D6 03                  538 	.sleb128	470
      000163 01                     539 	.db	1
      000164 04                     540 	.db	4
      000165 01                     541 	.uleb128	1
      000166 09                     542 	.db	9
      000167 00 04                  543 	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$33-Sdelay$TIM4_UPD_OVF_IRQHandler$31
      000169 03                     544 	.db	3
      00016A AB 7C                  545 	.sleb128	-469
      00016C 01                     546 	.db	1
      00016D 09                     547 	.db	9
      00016E 00 00                  548 	.dw	Sdelay$TIM4_UPD_OVF_IRQHandler$34-Sdelay$TIM4_UPD_OVF_IRQHandler$33
      000170 03                     549 	.db	3
      000171 04                     550 	.sleb128	4
      000172 01                     551 	.db	1
      000173 09                     552 	.db	9
      000174 00 01                  553 	.dw	1+Sdelay$TIM4_UPD_OVF_IRQHandler$35-Sdelay$TIM4_UPD_OVF_IRQHandler$34
      000176 00                     554 	.db	0
      000177 01                     555 	.uleb128	1
      000178 01                     556 	.db	1
      000179 00                     557 	.db	0
      00017A 05                     558 	.uleb128	5
      00017B 02                     559 	.db	2
      00017C 00 00 81 22            560 	.dw	0,(Sdelay$delay_ms$38)
      000180 03                     561 	.db	3
      000181 2F                     562 	.sleb128	47
      000182 01                     563 	.db	1
      000183 09                     564 	.db	9
      000184 00 00                  565 	.dw	Sdelay$delay_ms$41-Sdelay$delay_ms$38
      000186 03                     566 	.db	3
      000187 02                     567 	.sleb128	2
      000188 01                     568 	.db	1
      000189 09                     569 	.db	9
      00018A 00 09                  570 	.dw	Sdelay$delay_ms$42-Sdelay$delay_ms$41
      00018C 03                     571 	.db	3
      00018D 01                     572 	.sleb128	1
      00018E 01                     573 	.db	1
      00018F 09                     574 	.db	9
      000190 00 0A                  575 	.dw	Sdelay$delay_ms$48-Sdelay$delay_ms$42
      000192 03                     576 	.db	3
      000193 7F                     577 	.sleb128	-1
      000194 01                     578 	.db	1
      000195 09                     579 	.db	9
      000196 00 03                  580 	.dw	Sdelay$delay_ms$49-Sdelay$delay_ms$48
      000198 03                     581 	.db	3
      000199 02                     582 	.sleb128	2
      00019A 01                     583 	.db	1
      00019B 09                     584 	.db	9
      00019C 00 01                  585 	.dw	1+Sdelay$delay_ms$50-Sdelay$delay_ms$49
      00019E 00                     586 	.db	0
      00019F 01                     587 	.uleb128	1
      0001A0 01                     588 	.db	1
      0001A1 00                     589 	.db	0
      0001A2 05                     590 	.uleb128	5
      0001A3 02                     591 	.db	2
      0001A4 00 00 81 39            592 	.dw	0,(Sdelay$delay_us$52)
      0001A8 03                     593 	.db	3
      0001A9 39                     594 	.sleb128	57
      0001AA 01                     595 	.db	1
      0001AB 09                     596 	.db	9
      0001AC 00 02                  597 	.dw	Sdelay$delay_us$56-Sdelay$delay_us$52
      0001AE 03                     598 	.db	3
      0001AF 02                     599 	.sleb128	2
      0001B0 01                     600 	.db	1
      0001B1 09                     601 	.db	9
      0001B2 00 05                  602 	.dw	Sdelay$delay_us$58-Sdelay$delay_us$56
      0001B4 03                     603 	.db	3
      0001B5 01                     604 	.sleb128	1
      0001B6 01                     605 	.db	1
      0001B7 09                     606 	.db	9
      0001B8 00 07                  607 	.dw	Sdelay$delay_us$60-Sdelay$delay_us$58
      0001BA 03                     608 	.db	3
      0001BB 01                     609 	.sleb128	1
      0001BC 01                     610 	.db	1
      0001BD 09                     611 	.db	9
      0001BE 00 06                  612 	.dw	Sdelay$delay_us$61-Sdelay$delay_us$60
      0001C0 03                     613 	.db	3
      0001C1 01                     614 	.sleb128	1
      0001C2 01                     615 	.db	1
      0001C3 09                     616 	.db	9
      0001C4 00 07                  617 	.dw	Sdelay$delay_us$62-Sdelay$delay_us$61
      0001C6 03                     618 	.db	3
      0001C7 02                     619 	.sleb128	2
      0001C8 01                     620 	.db	1
      0001C9 09                     621 	.db	9
      0001CA 00 0A                  622 	.dw	Sdelay$delay_us$64-Sdelay$delay_us$62
      0001CC 03                     623 	.db	3
      0001CD 02                     624 	.sleb128	2
      0001CE 01                     625 	.db	1
      0001CF 04                     626 	.db	4
      0001D0 03                     627 	.uleb128	3
      0001D1 09                     628 	.db	9
      0001D2 00 00                  629 	.dw	Sdelay$delay_us$66-Sdelay$delay_us$64
      0001D4 03                     630 	.db	3
      0001D5 DE 02                  631 	.sleb128	350
      0001D7 01                     632 	.db	1
      0001D8 04                     633 	.db	4
      0001D9 01                     634 	.uleb128	1
      0001DA 09                     635 	.db	9
      0001DB 00 03                  636 	.dw	Sdelay$delay_us$68-Sdelay$delay_us$66
      0001DD 03                     637 	.db	3
      0001DE A2 7D                  638 	.sleb128	-350
      0001E0 01                     639 	.db	1
      0001E1 09                     640 	.db	9
      0001E2 00 04                  641 	.dw	Sdelay$delay_us$70-Sdelay$delay_us$68
      0001E4 03                     642 	.db	3
      0001E5 01                     643 	.sleb128	1
      0001E6 01                     644 	.db	1
      0001E7 09                     645 	.db	9
      0001E8 00 03                  646 	.dw	1+Sdelay$delay_us$72-Sdelay$delay_us$70
      0001EA 00                     647 	.db	0
      0001EB 01                     648 	.uleb128	1
      0001EC 01                     649 	.db	1
      0001ED 00                     650 	.db	0
      0001EE 05                     651 	.uleb128	5
      0001EF 02                     652 	.db	2
      0001F0 00 00 81 68            653 	.dw	0,(Sdelay$millis$74)
      0001F4 03                     654 	.db	3
      0001F5 C6 00                  655 	.sleb128	70
      0001F7 01                     656 	.db	1
      0001F8 09                     657 	.db	9
      0001F9 00 00                  658 	.dw	Sdelay$millis$76-Sdelay$millis$74
      0001FB 03                     659 	.db	3
      0001FC 01                     660 	.sleb128	1
      0001FD 01                     661 	.db	1
      0001FE 09                     662 	.db	9
      0001FF 00 0D                  663 	.dw	Sdelay$millis$77-Sdelay$millis$76
      000201 03                     664 	.db	3
      000202 01                     665 	.sleb128	1
      000203 01                     666 	.db	1
      000204 09                     667 	.db	9
      000205 00 01                  668 	.dw	1+Sdelay$millis$78-Sdelay$millis$77
      000207 00                     669 	.db	0
      000208 01                     670 	.uleb128	1
      000209 01                     671 	.db	1
      00020A 00                     672 	.db	0
      00020B 05                     673 	.uleb128	5
      00020C 02                     674 	.db	2
      00020D 00 00 81 76            675 	.dw	0,(Sdelay$micros$80)
      000211 03                     676 	.db	3
      000212 CB 00                  677 	.sleb128	75
      000214 01                     678 	.db	1
      000215 09                     679 	.db	9
      000216 00 02                  680 	.dw	Sdelay$micros$83-Sdelay$micros$80
      000218 03                     681 	.db	3
      000219 01                     682 	.sleb128	1
      00021A 01                     683 	.db	1
      00021B 04                     684 	.db	4
      00021C 03                     685 	.uleb128	3
      00021D 09                     686 	.db	9
      00021E 00 0E                  687 	.dw	Sdelay$micros$89-Sdelay$micros$83
      000220 03                     688 	.db	3
      000221 D4 02                  689 	.sleb128	340
      000223 01                     690 	.db	1
      000224 04                     691 	.db	4
      000225 01                     692 	.uleb128	1
      000226 09                     693 	.db	9
      000227 00 0A                  694 	.dw	Sdelay$micros$93-Sdelay$micros$89
      000229 03                     695 	.db	3
      00022A AC 7D                  696 	.sleb128	-340
      00022C 01                     697 	.db	1
      00022D 09                     698 	.db	9
      00022E 00 13                  699 	.dw	Sdelay$micros$95-Sdelay$micros$93
      000230 03                     700 	.db	3
      000231 01                     701 	.sleb128	1
      000232 01                     702 	.db	1
      000233 09                     703 	.db	9
      000234 00 03                  704 	.dw	1+Sdelay$micros$97-Sdelay$micros$95
      000236 00                     705 	.db	0
      000237 01                     706 	.uleb128	1
      000238 01                     707 	.db	1
      000239                        708 Ldebug_line_end:
                                    709 
                                    710 	.area .debug_loc (NOLOAD)
      000000                        711 Ldebug_loc_start:
      000000 00 00 81 A5            712 	.dw	0,(Sdelay$micros$96)
      000004 00 00 81 A6            713 	.dw	0,(Sdelay$micros$98)
      000008 00 02                  714 	.dw	2
      00000A 78                     715 	.db	120
      00000B 01                     716 	.sleb128	1
      00000C 00 00 81 8B            717 	.dw	0,(Sdelay$micros$90)
      000010 00 00 81 A5            718 	.dw	0,(Sdelay$micros$96)
      000014 00 02                  719 	.dw	2
      000016 78                     720 	.db	120
      000017 09                     721 	.sleb128	9
      000018 00 00 81 86            722 	.dw	0,(Sdelay$micros$88)
      00001C 00 00 81 8B            723 	.dw	0,(Sdelay$micros$90)
      000020 00 02                  724 	.dw	2
      000022 78                     725 	.db	120
      000023 11                     726 	.sleb128	17
      000024 00 00 81 84            727 	.dw	0,(Sdelay$micros$87)
      000028 00 00 81 86            728 	.dw	0,(Sdelay$micros$88)
      00002C 00 02                  729 	.dw	2
      00002E 78                     730 	.db	120
      00002F 10                     731 	.sleb128	16
      000030 00 00 81 82            732 	.dw	0,(Sdelay$micros$86)
      000034 00 00 81 84            733 	.dw	0,(Sdelay$micros$87)
      000038 00 02                  734 	.dw	2
      00003A 78                     735 	.db	120
      00003B 0E                     736 	.sleb128	14
      00003C 00 00 81 80            737 	.dw	0,(Sdelay$micros$85)
      000040 00 00 81 82            738 	.dw	0,(Sdelay$micros$86)
      000044 00 02                  739 	.dw	2
      000046 78                     740 	.db	120
      000047 0D                     741 	.sleb128	13
      000048 00 00 81 7C            742 	.dw	0,(Sdelay$micros$84)
      00004C 00 00 81 80            743 	.dw	0,(Sdelay$micros$85)
      000050 00 02                  744 	.dw	2
      000052 78                     745 	.db	120
      000053 0B                     746 	.sleb128	11
      000054 00 00 81 78            747 	.dw	0,(Sdelay$micros$82)
      000058 00 00 81 7C            748 	.dw	0,(Sdelay$micros$84)
      00005C 00 02                  749 	.dw	2
      00005E 78                     750 	.db	120
      00005F 09                     751 	.sleb128	9
      000060 00 00 81 76            752 	.dw	0,(Sdelay$micros$81)
      000064 00 00 81 78            753 	.dw	0,(Sdelay$micros$82)
      000068 00 02                  754 	.dw	2
      00006A 78                     755 	.db	120
      00006B 01                     756 	.sleb128	1
      00006C 00 00 00 00            757 	.dw	0,0
      000070 00 00 00 00            758 	.dw	0,0
      000074 00 00 81 68            759 	.dw	0,(Sdelay$millis$75)
      000078 00 00 81 76            760 	.dw	0,(Sdelay$millis$79)
      00007C 00 02                  761 	.dw	2
      00007E 78                     762 	.db	120
      00007F 01                     763 	.sleb128	1
      000080 00 00 00 00            764 	.dw	0,0
      000084 00 00 00 00            765 	.dw	0,0
      000088 00 00 81 67            766 	.dw	0,(Sdelay$delay_us$71)
      00008C 00 00 81 68            767 	.dw	0,(Sdelay$delay_us$73)
      000090 00 02                  768 	.dw	2
      000092 78                     769 	.db	120
      000093 01                     770 	.sleb128	1
      000094 00 00 81 3B            771 	.dw	0,(Sdelay$delay_us$54)
      000098 00 00 81 67            772 	.dw	0,(Sdelay$delay_us$71)
      00009C 00 02                  773 	.dw	2
      00009E 78                     774 	.db	120
      00009F 06                     775 	.sleb128	6
      0000A0 00 00 81 39            776 	.dw	0,(Sdelay$delay_us$53)
      0000A4 00 00 81 3B            777 	.dw	0,(Sdelay$delay_us$54)
      0000A8 00 02                  778 	.dw	2
      0000AA 78                     779 	.db	120
      0000AB 01                     780 	.sleb128	1
      0000AC 00 00 00 00            781 	.dw	0,0
      0000B0 00 00 00 00            782 	.dw	0,0
      0000B4 00 00 81 35            783 	.dw	0,(Sdelay$delay_ms$47)
      0000B8 00 00 81 39            784 	.dw	0,(Sdelay$delay_ms$51)
      0000BC 00 02                  785 	.dw	2
      0000BE 78                     786 	.db	120
      0000BF 01                     787 	.sleb128	1
      0000C0 00 00 81 34            788 	.dw	0,(Sdelay$delay_ms$46)
      0000C4 00 00 81 35            789 	.dw	0,(Sdelay$delay_ms$47)
      0000C8 00 02                  790 	.dw	2
      0000CA 78                     791 	.db	120
      0000CB 03                     792 	.sleb128	3
      0000CC 00 00 81 30            793 	.dw	0,(Sdelay$delay_ms$45)
      0000D0 00 00 81 34            794 	.dw	0,(Sdelay$delay_ms$46)
      0000D4 00 02                  795 	.dw	2
      0000D6 78                     796 	.db	120
      0000D7 05                     797 	.sleb128	5
      0000D8 00 00 81 2E            798 	.dw	0,(Sdelay$delay_ms$44)
      0000DC 00 00 81 30            799 	.dw	0,(Sdelay$delay_ms$45)
      0000E0 00 02                  800 	.dw	2
      0000E2 78                     801 	.db	120
      0000E3 04                     802 	.sleb128	4
      0000E4 00 00 81 2C            803 	.dw	0,(Sdelay$delay_ms$43)
      0000E8 00 00 81 2E            804 	.dw	0,(Sdelay$delay_ms$44)
      0000EC 00 02                  805 	.dw	2
      0000EE 78                     806 	.db	120
      0000EF 03                     807 	.sleb128	3
      0000F0 00 00 81 22            808 	.dw	0,(Sdelay$delay_ms$39)
      0000F4 00 00 81 2C            809 	.dw	0,(Sdelay$delay_ms$43)
      0000F8 00 02                  810 	.dw	2
      0000FA 78                     811 	.db	120
      0000FB 01                     812 	.sleb128	1
      0000FC 00 00 00 00            813 	.dw	0,0
      000100 00 00 00 00            814 	.dw	0,0
      000104 00 00 81 0A            815 	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$28)
      000108 00 00 81 22            816 	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$36)
      00010C 00 02                  817 	.dw	2
      00010E 78                     818 	.db	120
      00010F 01                     819 	.sleb128	1
      000110 00 00 00 00            820 	.dw	0,0
      000114 00 00 00 00            821 	.dw	0,0
      000118 00 00 80 D4            822 	.dw	0,(Sdelay$TIM4_Config$1)
      00011C 00 00 81 0A            823 	.dw	0,(Sdelay$TIM4_Config$26)
      000120 00 02                  824 	.dw	2
      000122 78                     825 	.db	120
      000123 01                     826 	.sleb128	1
      000124 00 00 00 00            827 	.dw	0,0
      000128 00 00 00 00            828 	.dw	0,0
                                    829 
                                    830 	.area .debug_abbrev (NOLOAD)
      000000                        831 Ldebug_abbrev:
      000000 10                     832 	.uleb128	16
      000001 35                     833 	.uleb128	53
      000002 00                     834 	.db	0
      000003 49                     835 	.uleb128	73
      000004 13                     836 	.uleb128	19
      000005 00                     837 	.uleb128	0
      000006 00                     838 	.uleb128	0
      000007 05                     839 	.uleb128	5
      000008 0B                     840 	.uleb128	11
      000009 00                     841 	.db	0
      00000A 00                     842 	.uleb128	0
      00000B 00                     843 	.uleb128	0
      00000C 06                     844 	.uleb128	6
      00000D 0B                     845 	.uleb128	11
      00000E 01                     846 	.db	1
      00000F 00                     847 	.uleb128	0
      000010 00                     848 	.uleb128	0
      000011 0E                     849 	.uleb128	14
      000012 2E                     850 	.uleb128	46
      000013 00                     851 	.db	0
      000014 03                     852 	.uleb128	3
      000015 08                     853 	.uleb128	8
      000016 11                     854 	.uleb128	17
      000017 01                     855 	.uleb128	1
      000018 12                     856 	.uleb128	18
      000019 01                     857 	.uleb128	1
      00001A 3F                     858 	.uleb128	63
      00001B 0C                     859 	.uleb128	12
      00001C 40                     860 	.uleb128	64
      00001D 06                     861 	.uleb128	6
      00001E 49                     862 	.uleb128	73
      00001F 13                     863 	.uleb128	19
      000020 00                     864 	.uleb128	0
      000021 00                     865 	.uleb128	0
      000022 11                     866 	.uleb128	17
      000023 34                     867 	.uleb128	52
      000024 00                     868 	.db	0
      000025 02                     869 	.uleb128	2
      000026 0A                     870 	.uleb128	10
      000027 03                     871 	.uleb128	3
      000028 08                     872 	.uleb128	8
      000029 3F                     873 	.uleb128	63
      00002A 0C                     874 	.uleb128	12
      00002B 49                     875 	.uleb128	73
      00002C 13                     876 	.uleb128	19
      00002D 00                     877 	.uleb128	0
      00002E 00                     878 	.uleb128	0
      00002F 0B                     879 	.uleb128	11
      000030 05                     880 	.uleb128	5
      000031 00                     881 	.db	0
      000032 02                     882 	.uleb128	2
      000033 0A                     883 	.uleb128	10
      000034 03                     884 	.uleb128	3
      000035 08                     885 	.uleb128	8
      000036 49                     886 	.uleb128	73
      000037 13                     887 	.uleb128	19
      000038 00                     888 	.uleb128	0
      000039 00                     889 	.uleb128	0
      00003A 02                     890 	.uleb128	2
      00003B 2E                     891 	.uleb128	46
      00003C 01                     892 	.db	1
      00003D 01                     893 	.uleb128	1
      00003E 13                     894 	.uleb128	19
      00003F 03                     895 	.uleb128	3
      000040 08                     896 	.uleb128	8
      000041 11                     897 	.uleb128	17
      000042 01                     898 	.uleb128	1
      000043 12                     899 	.uleb128	18
      000044 01                     900 	.uleb128	1
      000045 3F                     901 	.uleb128	63
      000046 0C                     902 	.uleb128	12
      000047 40                     903 	.uleb128	64
      000048 06                     904 	.uleb128	6
      000049 00                     905 	.uleb128	0
      00004A 00                     906 	.uleb128	0
      00004B 07                     907 	.uleb128	7
      00004C 34                     908 	.uleb128	52
      00004D 00                     909 	.db	0
      00004E 02                     910 	.uleb128	2
      00004F 0A                     911 	.uleb128	10
      000050 03                     912 	.uleb128	3
      000051 08                     913 	.uleb128	8
      000052 49                     914 	.uleb128	73
      000053 13                     915 	.uleb128	19
      000054 00                     916 	.uleb128	0
      000055 00                     917 	.uleb128	0
      000056 0F                     918 	.uleb128	15
      000057 2E                     919 	.uleb128	46
      000058 01                     920 	.db	1
      000059 01                     921 	.uleb128	1
      00005A 13                     922 	.uleb128	19
      00005B 03                     923 	.uleb128	3
      00005C 08                     924 	.uleb128	8
      00005D 11                     925 	.uleb128	17
      00005E 01                     926 	.uleb128	1
      00005F 12                     927 	.uleb128	18
      000060 01                     928 	.uleb128	1
      000061 3F                     929 	.uleb128	63
      000062 0C                     930 	.uleb128	12
      000063 40                     931 	.uleb128	64
      000064 06                     932 	.uleb128	6
      000065 49                     933 	.uleb128	73
      000066 13                     934 	.uleb128	19
      000067 00                     935 	.uleb128	0
      000068 00                     936 	.uleb128	0
      000069 03                     937 	.uleb128	3
      00006A 0B                     938 	.uleb128	11
      00006B 01                     939 	.db	1
      00006C 01                     940 	.uleb128	1
      00006D 13                     941 	.uleb128	19
      00006E 00                     942 	.uleb128	0
      00006F 00                     943 	.uleb128	0
      000070 0A                     944 	.uleb128	10
      000071 2E                     945 	.uleb128	46
      000072 01                     946 	.db	1
      000073 01                     947 	.uleb128	1
      000074 13                     948 	.uleb128	19
      000075 03                     949 	.uleb128	3
      000076 08                     950 	.uleb128	8
      000077 11                     951 	.uleb128	17
      000078 01                     952 	.uleb128	1
      000079 12                     953 	.uleb128	18
      00007A 01                     954 	.uleb128	1
      00007B 36                     955 	.uleb128	54
      00007C 0B                     956 	.uleb128	11
      00007D 3F                     957 	.uleb128	63
      00007E 0C                     958 	.uleb128	12
      00007F 40                     959 	.uleb128	64
      000080 06                     960 	.uleb128	6
      000081 00                     961 	.uleb128	0
      000082 00                     962 	.uleb128	0
      000083 08                     963 	.uleb128	8
      000084 0B                     964 	.uleb128	11
      000085 00                     965 	.db	0
      000086 11                     966 	.uleb128	17
      000087 01                     967 	.uleb128	1
      000088 00                     968 	.uleb128	0
      000089 00                     969 	.uleb128	0
      00008A 01                     970 	.uleb128	1
      00008B 11                     971 	.uleb128	17
      00008C 01                     972 	.db	1
      00008D 03                     973 	.uleb128	3
      00008E 08                     974 	.uleb128	8
      00008F 10                     975 	.uleb128	16
      000090 06                     976 	.uleb128	6
      000091 13                     977 	.uleb128	19
      000092 0B                     978 	.uleb128	11
      000093 25                     979 	.uleb128	37
      000094 08                     980 	.uleb128	8
      000095 00                     981 	.uleb128	0
      000096 00                     982 	.uleb128	0
      000097 04                     983 	.uleb128	4
      000098 0B                     984 	.uleb128	11
      000099 00                     985 	.db	0
      00009A 11                     986 	.uleb128	17
      00009B 01                     987 	.uleb128	1
      00009C 12                     988 	.uleb128	18
      00009D 01                     989 	.uleb128	1
      00009E 00                     990 	.uleb128	0
      00009F 00                     991 	.uleb128	0
      0000A0 0C                     992 	.uleb128	12
      0000A1 0B                     993 	.uleb128	11
      0000A2 01                     994 	.db	1
      0000A3 11                     995 	.uleb128	17
      0000A4 01                     996 	.uleb128	1
      0000A5 12                     997 	.uleb128	18
      0000A6 01                     998 	.uleb128	1
      0000A7 00                     999 	.uleb128	0
      0000A8 00                    1000 	.uleb128	0
      0000A9 0D                    1001 	.uleb128	13
      0000AA 0B                    1002 	.uleb128	11
      0000AB 01                    1003 	.db	1
      0000AC 01                    1004 	.uleb128	1
      0000AD 13                    1005 	.uleb128	19
      0000AE 11                    1006 	.uleb128	17
      0000AF 01                    1007 	.uleb128	1
      0000B0 12                    1008 	.uleb128	18
      0000B1 01                    1009 	.uleb128	1
      0000B2 00                    1010 	.uleb128	0
      0000B3 00                    1011 	.uleb128	0
      0000B4 09                    1012 	.uleb128	9
      0000B5 24                    1013 	.uleb128	36
      0000B6 00                    1014 	.db	0
      0000B7 03                    1015 	.uleb128	3
      0000B8 08                    1016 	.uleb128	8
      0000B9 0B                    1017 	.uleb128	11
      0000BA 0B                    1018 	.uleb128	11
      0000BB 3E                    1019 	.uleb128	62
      0000BC 0B                    1020 	.uleb128	11
      0000BD 00                    1021 	.uleb128	0
      0000BE 00                    1022 	.uleb128	0
      0000BF 00                    1023 	.uleb128	0
                                   1024 
                                   1025 	.area .debug_info (NOLOAD)
      000000 00 00 04 35           1026 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000004                       1027 Ldebug_info_start:
      000004 00 02                 1028 	.dw	2
      000006 00 00 00 00           1029 	.dw	0,(Ldebug_abbrev)
      00000A 04                    1030 	.db	4
      00000B 01                    1031 	.uleb128	1
      00000C 64 65 6C 61 79 2E 63  1032 	.ascii "delay.c"
      000013 00                    1033 	.db	0
      000014 00 00 00 00           1034 	.dw	0,(Ldebug_line_start+-4)
      000018 01                    1035 	.db	1
      000019 53 44 43 43 20 76 65  1036 	.ascii "SDCC version 4.0.7 #11994"
             72 73 69 6F 6E 20 34
             2E 30 2E 37 20 23 31
             31 39 39 34
      000032 00                    1037 	.db	0
      000033 02                    1038 	.uleb128	2
      000034 00 00 02 22           1039 	.dw	0,546
      000038 54 49 4D 34 5F 43 6F  1040 	.ascii "TIM4_Config"
             6E 66 69 67
      000043 00                    1041 	.db	0
      000044 00 00 80 D4           1042 	.dw	0,(_TIM4_Config)
      000048 00 00 81 0A           1043 	.dw	0,(XG$TIM4_Config$0$0+1)
      00004C 01                    1044 	.db	1
      00004D 00 00 01 18           1045 	.dw	0,(Ldebug_loc_start+280)
      000051 03                    1046 	.uleb128	3
      000052 00 00 00 C9           1047 	.dw	0,201
      000056 03                    1048 	.uleb128	3
      000057 00 00 00 9E           1049 	.dw	0,158
      00005B 03                    1050 	.uleb128	3
      00005C 00 00 00 75           1051 	.dw	0,117
      000060 03                    1052 	.uleb128	3
      000061 00 00 00 70           1053 	.dw	0,112
      000065 04                    1054 	.uleb128	4
      000066 00 00 80 D4           1055 	.dw	0,(Sdelay$TIM4_Config$2)
      00006A 00 00 80 D8           1056 	.dw	0,(Sdelay$TIM4_Config$4)
      00006E 05                    1057 	.uleb128	5
      00006F 00                    1058 	.uleb128	0
      000070 06                    1059 	.uleb128	6
      000071 05                    1060 	.uleb128	5
      000072 05                    1061 	.uleb128	5
      000073 00                    1062 	.uleb128	0
      000074 00                    1063 	.uleb128	0
      000075 07                    1064 	.uleb128	7
      000076 02                    1065 	.db	2
      000077 91                    1066 	.db	145
      000078 00                    1067 	.sleb128	0
      000079 43 4C 4B 5F 50 65 72  1068 	.ascii "CLK_Peripheral"
             69 70 68 65 72 61 6C
      000087 00                    1069 	.db	0
      000088 00 00 02 22           1070 	.dw	0,546
      00008C 07                    1071 	.uleb128	7
      00008D 02                    1072 	.db	2
      00008E 91                    1073 	.db	145
      00008F 00                    1074 	.sleb128	0
      000090 4E 65 77 53 74 61 74  1075 	.ascii "NewState"
             65
      000098 00                    1076 	.db	0
      000099 00 00 02 22           1077 	.dw	0,546
      00009D 00                    1078 	.uleb128	0
      00009E 07                    1079 	.uleb128	7
      00009F 02                    1080 	.db	2
      0000A0 91                    1081 	.db	145
      0000A1 00                    1082 	.sleb128	0
      0000A2 5F 5F 31 33 31 30 37  1083 	.ascii "__1310720142"
             32 30 31 34 32
      0000AE 00                    1084 	.db	0
      0000AF 00 00 02 22           1085 	.dw	0,546
      0000B3 07                    1086 	.uleb128	7
      0000B4 02                    1087 	.db	2
      0000B5 91                    1088 	.db	145
      0000B6 00                    1089 	.sleb128	0
      0000B7 5F 5F 31 33 31 30 37  1090 	.ascii "__1310720143"
             32 30 31 34 33
      0000C3 00                    1091 	.db	0
      0000C4 00 00 02 22           1092 	.dw	0,546
      0000C8 00                    1093 	.uleb128	0
      0000C9 03                    1094 	.uleb128	3
      0000CA 00 00 00 DA           1095 	.dw	0,218
      0000CE 06                    1096 	.uleb128	6
      0000CF 04                    1097 	.uleb128	4
      0000D0 00 00 80 D8           1098 	.dw	0,(Sdelay$TIM4_Config$4)
      0000D4 00 00 80 F0           1099 	.dw	0,(Sdelay$TIM4_Config$11)
      0000D8 00                    1100 	.uleb128	0
      0000D9 00                    1101 	.uleb128	0
      0000DA 03                    1102 	.uleb128	3
      0000DB 00 00 01 44           1103 	.dw	0,324
      0000DF 03                    1104 	.uleb128	3
      0000E0 00 00 01 19           1105 	.dw	0,281
      0000E4 04                    1106 	.uleb128	4
      0000E5 00 00 80 F0           1107 	.dw	0,(Sdelay$TIM4_Config$11)
      0000E9 00 00 80 F8           1108 	.dw	0,(Sdelay$TIM4_Config$14)
      0000ED 07                    1109 	.uleb128	7
      0000EE 02                    1110 	.db	2
      0000EF 91                    1111 	.db	145
      0000F0 00                    1112 	.sleb128	0
      0000F1 54 49 4D 34 5F 50 72  1113 	.ascii "TIM4_Prescaler"
             65 73 63 61 6C 65 72
      0000FF 00                    1114 	.db	0
      000100 00 00 02 22           1115 	.dw	0,546
      000104 07                    1116 	.uleb128	7
      000105 02                    1117 	.db	2
      000106 91                    1118 	.db	145
      000107 00                    1119 	.sleb128	0
      000108 54 49 4D 34 5F 50 65  1120 	.ascii "TIM4_Period"
             72 69 6F 64
      000113 00                    1121 	.db	0
      000114 00 00 02 22           1122 	.dw	0,546
      000118 00                    1123 	.uleb128	0
      000119 07                    1124 	.uleb128	7
      00011A 02                    1125 	.db	2
      00011B 91                    1126 	.db	145
      00011C 00                    1127 	.sleb128	0
      00011D 5F 5F 31 33 31 30 37  1128 	.ascii "__1310720146"
             32 30 31 34 36
      000129 00                    1129 	.db	0
      00012A 00 00 02 22           1130 	.dw	0,546
      00012E 07                    1131 	.uleb128	7
      00012F 02                    1132 	.db	2
      000130 91                    1133 	.db	145
      000131 00                    1134 	.sleb128	0
      000132 5F 5F 31 33 31 30 37  1135 	.ascii "__1310720147"
             32 30 31 34 37
      00013E 00                    1136 	.db	0
      00013F 00 00 02 22           1137 	.dw	0,546
      000143 00                    1138 	.uleb128	0
      000144 03                    1139 	.uleb128	3
      000145 00 00 01 7C           1140 	.dw	0,380
      000149 03                    1141 	.uleb128	3
      00014A 00 00 01 66           1142 	.dw	0,358
      00014E 08                    1143 	.uleb128	8
      00014F 00 00 80 F8           1144 	.dw	0,(Sdelay$TIM4_Config$14)
      000153 07                    1145 	.uleb128	7
      000154 02                    1146 	.db	2
      000155 91                    1147 	.db	145
      000156 00                    1148 	.sleb128	0
      000157 54 49 4D 34 5F 46 4C  1149 	.ascii "TIM4_FLAG"
             41 47
      000160 00                    1150 	.db	0
      000161 00 00 02 22           1151 	.dw	0,546
      000165 00                    1152 	.uleb128	0
      000166 07                    1153 	.uleb128	7
      000167 02                    1154 	.db	2
      000168 91                    1155 	.db	145
      000169 00                    1156 	.sleb128	0
      00016A 5F 5F 31 33 31 30 37  1157 	.ascii "__1310720149"
             32 30 31 34 39
      000176 00                    1158 	.db	0
      000177 00 00 02 22           1159 	.dw	0,546
      00017B 00                    1160 	.uleb128	0
      00017C 03                    1161 	.uleb128	3
      00017D 00 00 01 E3           1162 	.dw	0,483
      000181 03                    1163 	.uleb128	3
      000182 00 00 01 B8           1164 	.dw	0,440
      000186 03                    1165 	.uleb128	3
      000187 00 00 01 96           1166 	.dw	0,406
      00018B 04                    1167 	.uleb128	4
      00018C 00 00 80 FC           1168 	.dw	0,(Sdelay$TIM4_Config$16)
      000190 00 00 81 04           1169 	.dw	0,(Sdelay$TIM4_Config$18)
      000194 05                    1170 	.uleb128	5
      000195 00                    1171 	.uleb128	0
      000196 07                    1172 	.uleb128	7
      000197 02                    1173 	.db	2
      000198 91                    1174 	.db	145
      000199 00                    1175 	.sleb128	0
      00019A 54 49 4D 34 5F 49 54  1176 	.ascii "TIM4_IT"
      0001A1 00                    1177 	.db	0
      0001A2 00 00 02 22           1178 	.dw	0,546
      0001A6 07                    1179 	.uleb128	7
      0001A7 02                    1180 	.db	2
      0001A8 91                    1181 	.db	145
      0001A9 00                    1182 	.sleb128	0
      0001AA 4E 65 77 53 74 61 74  1183 	.ascii "NewState"
             65
      0001B2 00                    1184 	.db	0
      0001B3 00 00 02 22           1185 	.dw	0,546
      0001B7 00                    1186 	.uleb128	0
      0001B8 07                    1187 	.uleb128	7
      0001B9 02                    1188 	.db	2
      0001BA 91                    1189 	.db	145
      0001BB 00                    1190 	.sleb128	0
      0001BC 5F 5F 31 33 31 30 37  1191 	.ascii "__1310720151"
             32 30 31 35 31
      0001C8 00                    1192 	.db	0
      0001C9 00 00 02 22           1193 	.dw	0,546
      0001CD 07                    1194 	.uleb128	7
      0001CE 02                    1195 	.db	2
      0001CF 91                    1196 	.db	145
      0001D0 00                    1197 	.sleb128	0
      0001D1 5F 5F 31 33 31 30 37  1198 	.ascii "__1310720152"
             32 30 31 35 32
      0001DD 00                    1199 	.db	0
      0001DE 00 00 02 22           1200 	.dw	0,546
      0001E2 00                    1201 	.uleb128	0
      0001E3 06                    1202 	.uleb128	6
      0001E4 03                    1203 	.uleb128	3
      0001E5 00 00 02 0B           1204 	.dw	0,523
      0001E9 03                    1205 	.uleb128	3
      0001EA 00 00 01 F9           1206 	.dw	0,505
      0001EE 04                    1207 	.uleb128	4
      0001EF 00 00 81 05           1208 	.dw	0,(Sdelay$TIM4_Config$20)
      0001F3 00 00 81 09           1209 	.dw	0,(Sdelay$TIM4_Config$22)
      0001F7 05                    1210 	.uleb128	5
      0001F8 00                    1211 	.uleb128	0
      0001F9 07                    1212 	.uleb128	7
      0001FA 02                    1213 	.db	2
      0001FB 91                    1214 	.db	145
      0001FC 00                    1215 	.sleb128	0
      0001FD 4E 65 77 53 74 61 74  1216 	.ascii "NewState"
             65
      000205 00                    1217 	.db	0
      000206 00 00 02 22           1218 	.dw	0,546
      00020A 00                    1219 	.uleb128	0
      00020B 07                    1220 	.uleb128	7
      00020C 02                    1221 	.db	2
      00020D 91                    1222 	.db	145
      00020E 00                    1223 	.sleb128	0
      00020F 5F 5F 31 33 31 30 37  1224 	.ascii "__1310720154"
             32 30 31 35 34
      00021B 00                    1225 	.db	0
      00021C 00 00 02 22           1226 	.dw	0,546
      000220 00                    1227 	.uleb128	0
      000221 00                    1228 	.uleb128	0
      000222 09                    1229 	.uleb128	9
      000223 75 6E 73 69 67 6E 65  1230 	.ascii "unsigned char"
             64 20 63 68 61 72
      000230 00                    1231 	.db	0
      000231 01                    1232 	.db	1
      000232 08                    1233 	.db	8
      000233 0A                    1234 	.uleb128	10
      000234 00 00 02 95           1235 	.dw	0,661
      000238 54 49 4D 34 5F 55 50  1236 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      00024F 00                    1237 	.db	0
      000250 00 00 81 0A           1238 	.dw	0,(_TIM4_UPD_OVF_IRQHandler)
      000254 00 00 81 22           1239 	.dw	0,(XG$TIM4_UPD_OVF_IRQHandler$0$0+1)
      000258 03                    1240 	.db	3
      000259 01                    1241 	.db	1
      00025A 00 00 01 04           1242 	.dw	0,(Ldebug_loc_start+260)
      00025E 06                    1243 	.uleb128	6
      00025F 03                    1244 	.uleb128	3
      000260 00 00 02 7E           1245 	.dw	0,638
      000264 04                    1246 	.uleb128	4
      000265 00 00 81 1D           1247 	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$30)
      000269 00 00 81 21           1248 	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$32)
      00026D 07                    1249 	.uleb128	7
      00026E 02                    1250 	.db	2
      00026F 91                    1251 	.db	145
      000270 00                    1252 	.sleb128	0
      000271 54 49 4D 34 5F 49 54  1253 	.ascii "TIM4_IT"
      000278 00                    1254 	.db	0
      000279 00 00 02 22           1255 	.dw	0,546
      00027D 00                    1256 	.uleb128	0
      00027E 07                    1257 	.uleb128	7
      00027F 02                    1258 	.db	2
      000280 91                    1259 	.db	145
      000281 00                    1260 	.sleb128	0
      000282 5F 5F 31 33 31 30 37  1261 	.ascii "__1310720156"
             32 30 31 35 36
      00028E 00                    1262 	.db	0
      00028F 00 00 02 22           1263 	.dw	0,546
      000293 00                    1264 	.uleb128	0
      000294 00                    1265 	.uleb128	0
      000295 02                    1266 	.uleb128	2
      000296 00 00 02 D4           1267 	.dw	0,724
      00029A 64 65 6C 61 79 5F 6D  1268 	.ascii "delay_ms"
             73
      0002A2 00                    1269 	.db	0
      0002A3 00 00 81 22           1270 	.dw	0,(_delay_ms)
      0002A7 00 00 81 39           1271 	.dw	0,(XG$delay_ms$0$0+1)
      0002AB 01                    1272 	.db	1
      0002AC 00 00 00 B4           1273 	.dw	0,(Ldebug_loc_start+180)
      0002B0 0B                    1274 	.uleb128	11
      0002B1 02                    1275 	.db	2
      0002B2 91                    1276 	.db	145
      0002B3 02                    1277 	.sleb128	2
      0002B4 6D 73                 1278 	.ascii "ms"
      0002B6 00                    1279 	.db	0
      0002B7 00 00 02 D4           1280 	.dw	0,724
      0002BB 0C                    1281 	.uleb128	12
      0002BC 00 00 81 22           1282 	.dw	0,(Sdelay$delay_ms$37)
      0002C0 00 00 81 22           1283 	.dw	0,(Sdelay$delay_ms$40)
      0002C4 07                    1284 	.uleb128	7
      0002C5 06                    1285 	.db	6
      0002C6 52                    1286 	.db	82
      0002C7 93                    1287 	.db	147
      0002C8 01                    1288 	.uleb128	1
      0002C9 51                    1289 	.db	81
      0002CA 93                    1290 	.db	147
      0002CB 01                    1291 	.uleb128	1
      0002CC 69                    1292 	.ascii "i"
      0002CD 00                    1293 	.db	0
      0002CE 00 00 02 E4           1294 	.dw	0,740
      0002D2 00                    1295 	.uleb128	0
      0002D3 00                    1296 	.uleb128	0
      0002D4 09                    1297 	.uleb128	9
      0002D5 75 6E 73 69 67 6E 65  1298 	.ascii "unsigned int"
             64 20 69 6E 74
      0002E1 00                    1299 	.db	0
      0002E2 02                    1300 	.db	2
      0002E3 07                    1301 	.db	7
      0002E4 09                    1302 	.uleb128	9
      0002E5 69 6E 74              1303 	.ascii "int"
      0002E8 00                    1304 	.db	0
      0002E9 02                    1305 	.db	2
      0002EA 05                    1306 	.db	5
      0002EB 02                    1307 	.uleb128	2
      0002EC 00 00 03 AB           1308 	.dw	0,939
      0002F0 64 65 6C 61 79 5F 75  1309 	.ascii "delay_us"
             73
      0002F8 00                    1310 	.db	0
      0002F9 00 00 81 39           1311 	.dw	0,(_delay_us)
      0002FD 00 00 81 68           1312 	.dw	0,(XG$delay_us$0$0+1)
      000301 01                    1313 	.db	1
      000302 00 00 00 88           1314 	.dw	0,(Ldebug_loc_start+136)
      000306 0B                    1315 	.uleb128	11
      000307 02                    1316 	.db	2
      000308 91                    1317 	.db	145
      000309 02                    1318 	.sleb128	2
      00030A 75 73                 1319 	.ascii "us"
      00030C 00                    1320 	.db	0
      00030D 00 00 02 D4           1321 	.dw	0,724
      000311 03                    1322 	.uleb128	3
      000312 00 00 03 22           1323 	.dw	0,802
      000316 06                    1324 	.uleb128	6
      000317 04                    1325 	.uleb128	4
      000318 00 00 81 3B           1326 	.dw	0,(Sdelay$delay_us$55)
      00031C 00 00 81 40           1327 	.dw	0,(Sdelay$delay_us$57)
      000320 00                    1328 	.uleb128	0
      000321 00                    1329 	.uleb128	0
      000322 0D                    1330 	.uleb128	13
      000323 00 00 03 57           1331 	.dw	0,855
      000327 00 00 81 47           1332 	.dw	0,(Sdelay$delay_us$59)
      00032B 00 00 81 5E           1333 	.dw	0,(Sdelay$delay_us$63)
      00032F 07                    1334 	.uleb128	7
      000330 02                    1335 	.db	2
      000331 91                    1336 	.db	145
      000332 7C                    1337 	.sleb128	-4
      000333 73 74 61 72 74 5F 74  1338 	.ascii "start_tick"
             69 63 6B
      00033D 00                    1339 	.db	0
      00033E 00 00 02 D4           1340 	.dw	0,724
      000342 07                    1341 	.uleb128	7
      000343 02                    1342 	.db	2
      000344 91                    1343 	.db	145
      000345 7E                    1344 	.sleb128	-2
      000346 64 65 6C 61 79 5F 74  1345 	.ascii "delay_ticks"
             69 63 6B 73
      000351 00                    1346 	.db	0
      000352 00 00 02 D4           1347 	.dw	0,724
      000356 00                    1348 	.uleb128	0
      000357 0D                    1349 	.uleb128	13
      000358 00 00 03 70           1350 	.dw	0,880
      00035C 00 00 81 61           1351 	.dw	0,(Sdelay$delay_us$67)
      000360 00 00 81 65           1352 	.dw	0,(Sdelay$delay_us$69)
      000364 06                    1353 	.uleb128	6
      000365 04                    1354 	.uleb128	4
      000366 00 00 81 5E           1355 	.dw	0,(Sdelay$delay_us$65)
      00036A 00 00 81 61           1356 	.dw	0,(Sdelay$delay_us$67)
      00036E 00                    1357 	.uleb128	0
      00036F 00                    1358 	.uleb128	0
      000370 07                    1359 	.uleb128	7
      000371 01                    1360 	.db	1
      000372 50                    1361 	.db	80
      000373 5F 5F 31 33 31 30 37  1362 	.ascii "__1310720160"
             32 30 31 36 30
      00037F 00                    1363 	.db	0
      000380 00 00 02 22           1364 	.dw	0,546
      000384 07                    1365 	.uleb128	7
      000385 02                    1366 	.db	2
      000386 91                    1367 	.db	145
      000387 00                    1368 	.sleb128	0
      000388 5F 5F 31 33 31 30 37  1369 	.ascii "__1310720158"
             32 30 31 35 38
      000394 00                    1370 	.db	0
      000395 00 00 02 22           1371 	.dw	0,546
      000399 07                    1372 	.uleb128	7
      00039A 02                    1373 	.db	2
      00039B 91                    1374 	.db	145
      00039C 7B                    1375 	.sleb128	-5
      00039D 73 74 61 72 74 5F 75  1376 	.ascii "start_us"
             73
      0003A5 00                    1377 	.db	0
      0003A6 00 00 02 22           1378 	.dw	0,546
      0003AA 00                    1379 	.uleb128	0
      0003AB 0E                    1380 	.uleb128	14
      0003AC 6D 69 6C 6C 69 73     1381 	.ascii "millis"
      0003B2 00                    1382 	.db	0
      0003B3 00 00 81 68           1383 	.dw	0,(_millis)
      0003B7 00 00 81 76           1384 	.dw	0,(XG$millis$0$0+1)
      0003BB 01                    1385 	.db	1
      0003BC 00 00 00 74           1386 	.dw	0,(Ldebug_loc_start+116)
      0003C0 00 00 02 D4           1387 	.dw	0,724
      0003C4 09                    1388 	.uleb128	9
      0003C5 75 6E 73 69 67 6E 65  1389 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      0003D2 00                    1390 	.db	0
      0003D3 04                    1391 	.db	4
      0003D4 07                    1392 	.db	7
      0003D5 0F                    1393 	.uleb128	15
      0003D6 00 00 04 20           1394 	.dw	0,1056
      0003DA 6D 69 63 72 6F 73     1395 	.ascii "micros"
      0003E0 00                    1396 	.db	0
      0003E1 00 00 81 76           1397 	.dw	0,(_micros)
      0003E5 00 00 81 A6           1398 	.dw	0,(XG$micros$0$0+1)
      0003E9 01                    1399 	.db	1
      0003EA 00 00 00 00           1400 	.dw	0,(Ldebug_loc_start)
      0003EE 00 00 03 C4           1401 	.dw	0,964
      0003F2 0D                    1402 	.uleb128	13
      0003F3 00 00 04 0B           1403 	.dw	0,1035
      0003F7 00 00 81 90           1404 	.dw	0,(Sdelay$micros$92)
      0003FB 00 00 81 A3           1405 	.dw	0,(Sdelay$micros$94)
      0003FF 06                    1406 	.uleb128	6
      000400 04                    1407 	.uleb128	4
      000401 00 00 81 8D           1408 	.dw	0,(Sdelay$micros$91)
      000405 00 00 81 90           1409 	.dw	0,(Sdelay$micros$92)
      000409 00                    1410 	.uleb128	0
      00040A 00                    1411 	.uleb128	0
      00040B 07                    1412 	.uleb128	7
      00040C 01                    1413 	.db	1
      00040D 50                    1414 	.db	80
      00040E 5F 5F 31 33 31 30 37  1415 	.ascii "__1310720162"
             32 30 31 36 32
      00041A 00                    1416 	.db	0
      00041B 00 00 02 22           1417 	.dw	0,546
      00041F 00                    1418 	.uleb128	0
      000420 10                    1419 	.uleb128	16
      000421 00 00 03 C4           1420 	.dw	0,964
      000425 11                    1421 	.uleb128	17
      000426 05                    1422 	.db	5
      000427 03                    1423 	.db	3
      000428 00 00 00 05           1424 	.dw	0,(_tick)
      00042C 74 69 63 6B           1425 	.ascii "tick"
      000430 00                    1426 	.db	0
      000431 01                    1427 	.db	1
      000432 00 00 04 20           1428 	.dw	0,1056
      000436 00                    1429 	.uleb128	0
      000437 00                    1430 	.uleb128	0
      000438 00                    1431 	.uleb128	0
      000439                       1432 Ldebug_info_end:
                                   1433 
                                   1434 	.area .debug_pubnames (NOLOAD)
      000000 00 00 00 73           1435 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      000004                       1436 Ldebug_pubnames_start:
      000004 00 02                 1437 	.dw	2
      000006 00 00 00 00           1438 	.dw	0,(Ldebug_info_start-4)
      00000A 00 00 04 39           1439 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      00000E 00 00 00 33           1440 	.dw	0,51
      000012 54 49 4D 34 5F 43 6F  1441 	.ascii "TIM4_Config"
             6E 66 69 67
      00001D 00                    1442 	.db	0
      00001E 00 00 02 33           1443 	.dw	0,563
      000022 54 49 4D 34 5F 55 50  1444 	.ascii "TIM4_UPD_OVF_IRQHandler"
             44 5F 4F 56 46 5F 49
             52 51 48 61 6E 64 6C
             65 72
      000039 00                    1445 	.db	0
      00003A 00 00 02 95           1446 	.dw	0,661
      00003E 64 65 6C 61 79 5F 6D  1447 	.ascii "delay_ms"
             73
      000046 00                    1448 	.db	0
      000047 00 00 02 EB           1449 	.dw	0,747
      00004B 64 65 6C 61 79 5F 75  1450 	.ascii "delay_us"
             73
      000053 00                    1451 	.db	0
      000054 00 00 03 AB           1452 	.dw	0,939
      000058 6D 69 6C 6C 69 73     1453 	.ascii "millis"
      00005E 00                    1454 	.db	0
      00005F 00 00 03 D5           1455 	.dw	0,981
      000063 6D 69 63 72 6F 73     1456 	.ascii "micros"
      000069 00                    1457 	.db	0
      00006A 00 00 04 25           1458 	.dw	0,1061
      00006E 74 69 63 6B           1459 	.ascii "tick"
      000072 00                    1460 	.db	0
      000073 00 00 00 00           1461 	.dw	0,0
      000077                       1462 Ldebug_pubnames_end:
                                   1463 
                                   1464 	.area .debug_frame (NOLOAD)
      000000 00 00                 1465 	.dw	0
      000002 00 0E                 1466 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000004                       1467 Ldebug_CIE0_start:
      000004 FF FF                 1468 	.dw	0xffff
      000006 FF FF                 1469 	.dw	0xffff
      000008 01                    1470 	.db	1
      000009 00                    1471 	.db	0
      00000A 01                    1472 	.uleb128	1
      00000B 7F                    1473 	.sleb128	-1
      00000C 09                    1474 	.db	9
      00000D 0C                    1475 	.db	12
      00000E 08                    1476 	.uleb128	8
      00000F 02                    1477 	.uleb128	2
      000010 89                    1478 	.db	137
      000011 01                    1479 	.uleb128	1
      000012                       1480 Ldebug_CIE0_end:
      000012 00 00 00 4B           1481 	.dw	0,75
      000016 00 00 00 00           1482 	.dw	0,(Ldebug_CIE0_start-4)
      00001A 00 00 81 76           1483 	.dw	0,(Sdelay$micros$81)	;initial loc
      00001E 00 00 00 30           1484 	.dw	0,Sdelay$micros$98-Sdelay$micros$81
      000022 01                    1485 	.db	1
      000023 00 00 81 76           1486 	.dw	0,(Sdelay$micros$81)
      000027 0E                    1487 	.db	14
      000028 02                    1488 	.uleb128	2
      000029 01                    1489 	.db	1
      00002A 00 00 81 78           1490 	.dw	0,(Sdelay$micros$82)
      00002E 0E                    1491 	.db	14
      00002F 0A                    1492 	.uleb128	10
      000030 01                    1493 	.db	1
      000031 00 00 81 7C           1494 	.dw	0,(Sdelay$micros$84)
      000035 0E                    1495 	.db	14
      000036 0C                    1496 	.uleb128	12
      000037 01                    1497 	.db	1
      000038 00 00 81 80           1498 	.dw	0,(Sdelay$micros$85)
      00003C 0E                    1499 	.db	14
      00003D 0E                    1500 	.uleb128	14
      00003E 01                    1501 	.db	1
      00003F 00 00 81 82           1502 	.dw	0,(Sdelay$micros$86)
      000043 0E                    1503 	.db	14
      000044 0F                    1504 	.uleb128	15
      000045 01                    1505 	.db	1
      000046 00 00 81 84           1506 	.dw	0,(Sdelay$micros$87)
      00004A 0E                    1507 	.db	14
      00004B 11                    1508 	.uleb128	17
      00004C 01                    1509 	.db	1
      00004D 00 00 81 86           1510 	.dw	0,(Sdelay$micros$88)
      000051 0E                    1511 	.db	14
      000052 12                    1512 	.uleb128	18
      000053 01                    1513 	.db	1
      000054 00 00 81 8B           1514 	.dw	0,(Sdelay$micros$90)
      000058 0E                    1515 	.db	14
      000059 0A                    1516 	.uleb128	10
      00005A 01                    1517 	.db	1
      00005B 00 00 81 A5           1518 	.dw	0,(Sdelay$micros$96)
      00005F 0E                    1519 	.db	14
      000060 02                    1520 	.uleb128	2
                                   1521 
                                   1522 	.area .debug_frame (NOLOAD)
      000061 00 00                 1523 	.dw	0
      000063 00 0E                 1524 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      000065                       1525 Ldebug_CIE1_start:
      000065 FF FF                 1526 	.dw	0xffff
      000067 FF FF                 1527 	.dw	0xffff
      000069 01                    1528 	.db	1
      00006A 00                    1529 	.db	0
      00006B 01                    1530 	.uleb128	1
      00006C 7F                    1531 	.sleb128	-1
      00006D 09                    1532 	.db	9
      00006E 0C                    1533 	.db	12
      00006F 08                    1534 	.uleb128	8
      000070 02                    1535 	.uleb128	2
      000071 89                    1536 	.db	137
      000072 01                    1537 	.uleb128	1
      000073                       1538 Ldebug_CIE1_end:
      000073 00 00 00 13           1539 	.dw	0,19
      000077 00 00 00 61           1540 	.dw	0,(Ldebug_CIE1_start-4)
      00007B 00 00 81 68           1541 	.dw	0,(Sdelay$millis$75)	;initial loc
      00007F 00 00 00 0E           1542 	.dw	0,Sdelay$millis$79-Sdelay$millis$75
      000083 01                    1543 	.db	1
      000084 00 00 81 68           1544 	.dw	0,(Sdelay$millis$75)
      000088 0E                    1545 	.db	14
      000089 02                    1546 	.uleb128	2
                                   1547 
                                   1548 	.area .debug_frame (NOLOAD)
      00008A 00 00                 1549 	.dw	0
      00008C 00 0E                 1550 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      00008E                       1551 Ldebug_CIE2_start:
      00008E FF FF                 1552 	.dw	0xffff
      000090 FF FF                 1553 	.dw	0xffff
      000092 01                    1554 	.db	1
      000093 00                    1555 	.db	0
      000094 01                    1556 	.uleb128	1
      000095 7F                    1557 	.sleb128	-1
      000096 09                    1558 	.db	9
      000097 0C                    1559 	.db	12
      000098 08                    1560 	.uleb128	8
      000099 02                    1561 	.uleb128	2
      00009A 89                    1562 	.db	137
      00009B 01                    1563 	.uleb128	1
      00009C                       1564 Ldebug_CIE2_end:
      00009C 00 00 00 21           1565 	.dw	0,33
      0000A0 00 00 00 8A           1566 	.dw	0,(Ldebug_CIE2_start-4)
      0000A4 00 00 81 39           1567 	.dw	0,(Sdelay$delay_us$53)	;initial loc
      0000A8 00 00 00 2F           1568 	.dw	0,Sdelay$delay_us$73-Sdelay$delay_us$53
      0000AC 01                    1569 	.db	1
      0000AD 00 00 81 39           1570 	.dw	0,(Sdelay$delay_us$53)
      0000B1 0E                    1571 	.db	14
      0000B2 02                    1572 	.uleb128	2
      0000B3 01                    1573 	.db	1
      0000B4 00 00 81 3B           1574 	.dw	0,(Sdelay$delay_us$54)
      0000B8 0E                    1575 	.db	14
      0000B9 07                    1576 	.uleb128	7
      0000BA 01                    1577 	.db	1
      0000BB 00 00 81 67           1578 	.dw	0,(Sdelay$delay_us$71)
      0000BF 0E                    1579 	.db	14
      0000C0 02                    1580 	.uleb128	2
                                   1581 
                                   1582 	.area .debug_frame (NOLOAD)
      0000C1 00 00                 1583 	.dw	0
      0000C3 00 0E                 1584 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0000C5                       1585 Ldebug_CIE3_start:
      0000C5 FF FF                 1586 	.dw	0xffff
      0000C7 FF FF                 1587 	.dw	0xffff
      0000C9 01                    1588 	.db	1
      0000CA 00                    1589 	.db	0
      0000CB 01                    1590 	.uleb128	1
      0000CC 7F                    1591 	.sleb128	-1
      0000CD 09                    1592 	.db	9
      0000CE 0C                    1593 	.db	12
      0000CF 08                    1594 	.uleb128	8
      0000D0 02                    1595 	.uleb128	2
      0000D1 89                    1596 	.db	137
      0000D2 01                    1597 	.uleb128	1
      0000D3                       1598 Ldebug_CIE3_end:
      0000D3 00 00 00 36           1599 	.dw	0,54
      0000D7 00 00 00 C1           1600 	.dw	0,(Ldebug_CIE3_start-4)
      0000DB 00 00 81 22           1601 	.dw	0,(Sdelay$delay_ms$39)	;initial loc
      0000DF 00 00 00 17           1602 	.dw	0,Sdelay$delay_ms$51-Sdelay$delay_ms$39
      0000E3 01                    1603 	.db	1
      0000E4 00 00 81 22           1604 	.dw	0,(Sdelay$delay_ms$39)
      0000E8 0E                    1605 	.db	14
      0000E9 02                    1606 	.uleb128	2
      0000EA 01                    1607 	.db	1
      0000EB 00 00 81 2C           1608 	.dw	0,(Sdelay$delay_ms$43)
      0000EF 0E                    1609 	.db	14
      0000F0 04                    1610 	.uleb128	4
      0000F1 01                    1611 	.db	1
      0000F2 00 00 81 2E           1612 	.dw	0,(Sdelay$delay_ms$44)
      0000F6 0E                    1613 	.db	14
      0000F7 05                    1614 	.uleb128	5
      0000F8 01                    1615 	.db	1
      0000F9 00 00 81 30           1616 	.dw	0,(Sdelay$delay_ms$45)
      0000FD 0E                    1617 	.db	14
      0000FE 06                    1618 	.uleb128	6
      0000FF 01                    1619 	.db	1
      000100 00 00 81 34           1620 	.dw	0,(Sdelay$delay_ms$46)
      000104 0E                    1621 	.db	14
      000105 04                    1622 	.uleb128	4
      000106 01                    1623 	.db	1
      000107 00 00 81 35           1624 	.dw	0,(Sdelay$delay_ms$47)
      00010B 0E                    1625 	.db	14
      00010C 02                    1626 	.uleb128	2
                                   1627 
                                   1628 	.area .debug_frame (NOLOAD)
      00010D 00 00                 1629 	.dw	0
      00010F 00 0E                 1630 	.dw	Ldebug_CIE4_end-Ldebug_CIE4_start
      000111                       1631 Ldebug_CIE4_start:
      000111 FF FF                 1632 	.dw	0xffff
      000113 FF FF                 1633 	.dw	0xffff
      000115 01                    1634 	.db	1
      000116 00                    1635 	.db	0
      000117 01                    1636 	.uleb128	1
      000118 7F                    1637 	.sleb128	-1
      000119 09                    1638 	.db	9
      00011A 0C                    1639 	.db	12
      00011B 08                    1640 	.uleb128	8
      00011C 09                    1641 	.uleb128	9
      00011D 89                    1642 	.db	137
      00011E 01                    1643 	.uleb128	1
      00011F                       1644 Ldebug_CIE4_end:
      00011F 00 00 00 13           1645 	.dw	0,19
      000123 00 00 01 0D           1646 	.dw	0,(Ldebug_CIE4_start-4)
      000127 00 00 81 0A           1647 	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$28)	;initial loc
      00012B 00 00 00 18           1648 	.dw	0,Sdelay$TIM4_UPD_OVF_IRQHandler$36-Sdelay$TIM4_UPD_OVF_IRQHandler$28
      00012F 01                    1649 	.db	1
      000130 00 00 81 0A           1650 	.dw	0,(Sdelay$TIM4_UPD_OVF_IRQHandler$28)
      000134 0E                    1651 	.db	14
      000135 09                    1652 	.uleb128	9
                                   1653 
                                   1654 	.area .debug_frame (NOLOAD)
      000136 00 00                 1655 	.dw	0
      000138 00 0E                 1656 	.dw	Ldebug_CIE5_end-Ldebug_CIE5_start
      00013A                       1657 Ldebug_CIE5_start:
      00013A FF FF                 1658 	.dw	0xffff
      00013C FF FF                 1659 	.dw	0xffff
      00013E 01                    1660 	.db	1
      00013F 00                    1661 	.db	0
      000140 01                    1662 	.uleb128	1
      000141 7F                    1663 	.sleb128	-1
      000142 09                    1664 	.db	9
      000143 0C                    1665 	.db	12
      000144 08                    1666 	.uleb128	8
      000145 02                    1667 	.uleb128	2
      000146 89                    1668 	.db	137
      000147 01                    1669 	.uleb128	1
      000148                       1670 Ldebug_CIE5_end:
      000148 00 00 00 13           1671 	.dw	0,19
      00014C 00 00 01 36           1672 	.dw	0,(Ldebug_CIE5_start-4)
      000150 00 00 80 D4           1673 	.dw	0,(Sdelay$TIM4_Config$1)	;initial loc
      000154 00 00 00 36           1674 	.dw	0,Sdelay$TIM4_Config$26-Sdelay$TIM4_Config$1
      000158 01                    1675 	.db	1
      000159 00 00 80 D4           1676 	.dw	0,(Sdelay$TIM4_Config$1)
      00015D 0E                    1677 	.db	14
      00015E 02                    1678 	.uleb128	2
