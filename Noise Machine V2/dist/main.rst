                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.7 #11994 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _micros
                                     13 	.globl _TIM4_Config
                                     14 	.globl _lfsr
                                     15 	.globl _lastClick
                                     16 	.globl _setup
                                     17 	.globl _generateNoise
                                     18 	.globl _loop
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area DATA
                           000000    23 G$lastClick$0_0$0==.
      000001                         24 _lastClick::
      000001                         25 	.ds 4
                                     26 ;--------------------------------------------------------
                                     27 ; ram data
                                     28 ;--------------------------------------------------------
                                     29 	.area INITIALIZED
                           000000    30 G$lfsr$0_0$0==.
      000009                         31 _lfsr::
      000009                         32 	.ds 4
                                     33 ;--------------------------------------------------------
                                     34 ; Stack segment in internal ram 
                                     35 ;--------------------------------------------------------
                                     36 	.area	SSEG
      0082F8                         37 __start__stack:
      0082F8                         38 	.ds	1
                                     39 
                                     40 ;--------------------------------------------------------
                                     41 ; absolute external ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area DABS (ABS)
                                     44 
                                     45 ; default segment ordering for linker
                                     46 	.area HOME
                                     47 	.area GSINIT
                                     48 	.area GSFINAL
                                     49 	.area CONST
                                     50 	.area INITIALIZER
                                     51 	.area CODE
                                     52 
                                     53 ;--------------------------------------------------------
                                     54 ; interrupt vector 
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
      008000                         57 __interrupt_vect:
      008000 82 00 80 6B             58 	int s_GSINIT ; reset
      008004 82 00 00 00             59 	int 0x000000 ; trap
      008008 82 00 00 00             60 	int 0x000000 ; int0
      00800C 82 00 00 00             61 	int 0x000000 ; int1
      008010 82 00 00 00             62 	int 0x000000 ; int2
      008014 82 00 00 00             63 	int 0x000000 ; int3
      008018 82 00 00 00             64 	int 0x000000 ; int4
      00801C 82 00 00 00             65 	int 0x000000 ; int5
      008020 82 00 00 00             66 	int 0x000000 ; int6
      008024 82 00 00 00             67 	int 0x000000 ; int7
      008028 82 00 00 00             68 	int 0x000000 ; int8
      00802C 82 00 00 00             69 	int 0x000000 ; int9
      008030 82 00 00 00             70 	int 0x000000 ; int10
      008034 82 00 00 00             71 	int 0x000000 ; int11
      008038 82 00 00 00             72 	int 0x000000 ; int12
      00803C 82 00 00 00             73 	int 0x000000 ; int13
      008040 82 00 00 00             74 	int 0x000000 ; int14
      008044 82 00 00 00             75 	int 0x000000 ; int15
      008048 82 00 00 00             76 	int 0x000000 ; int16
      00804C 82 00 00 00             77 	int 0x000000 ; int17
      008050 82 00 00 00             78 	int 0x000000 ; int18
      008054 82 00 00 00             79 	int 0x000000 ; int19
      008058 82 00 00 00             80 	int 0x000000 ; int20
      00805C 82 00 00 00             81 	int 0x000000 ; int21
      008060 82 00 00 00             82 	int 0x000000 ; int22
      008064 82 00 81 0A             83 	int _TIM4_UPD_OVF_IRQHandler ; int23
                                     84 ;--------------------------------------------------------
                                     85 ; global & static initialisations
                                     86 ;--------------------------------------------------------
                                     87 	.area HOME
                                     88 	.area GSINIT
                                     89 	.area GSFINAL
                                     90 	.area GSINIT
      00806B                         91 __sdcc_init_data:
                                     92 ; stm8_genXINIT() start
      00806B AE 00 04         [ 2]   93 	ldw x, #l_DATA
      00806E 27 07            [ 1]   94 	jreq	00002$
      008070                         95 00001$:
      008070 72 4F 00 00      [ 1]   96 	clr (s_DATA - 1, x)
      008074 5A               [ 2]   97 	decw x
      008075 26 F9            [ 1]   98 	jrne	00001$
      008077                         99 00002$:
      008077 AE 00 08         [ 2]  100 	ldw	x, #l_INITIALIZER
      00807A 27 09            [ 1]  101 	jreq	00004$
      00807C                        102 00003$:
      00807C D6 80 CB         [ 1]  103 	ld	a, (s_INITIALIZER - 1, x)
      00807F D7 00 04         [ 1]  104 	ld	(s_INITIALIZED - 1, x), a
      008082 5A               [ 2]  105 	decw	x
      008083 26 F7            [ 1]  106 	jrne	00003$
      008085                        107 00004$:
                                    108 ; stm8_genXINIT() end
                                    109 	.area GSFINAL
      008085 CC 80 68         [ 2]  110 	jp	__sdcc_program_startup
                                    111 ;--------------------------------------------------------
                                    112 ; Home
                                    113 ;--------------------------------------------------------
                                    114 	.area HOME
                                    115 	.area HOME
      008068                        116 __sdcc_program_startup:
      008068 CC 82 73         [ 2]  117 	jp	_main
                                    118 ;	return from main will return to caller
                                    119 ;--------------------------------------------------------
                                    120 ; code
                                    121 ;--------------------------------------------------------
                                    122 	.area CODE
                           000000   123 	Smain$setup$0 ==.
                                    124 ;	main.c: 21: void setup() {
                                    125 ;	-----------------------------------------
                                    126 ;	 function setup
                                    127 ;	-----------------------------------------
      0081A6                        128 _setup:
                           000000   129 	Smain$setup$1 ==.
                           000000   130 	Smain$setup$2 ==.
                           000000   131 	Smain$setup$3 ==.
                                    132 ;	inc/stm8s_clk.h: 741: CLK->CKDIVR &= (uint8_t) (~CLK_CKDIVR_HSIDIV);
      0081A6 C6 50 C6         [ 1]  133 	ld	a, 0x50c6
      0081A9 A4 E7            [ 1]  134 	and	a, #0xe7
      0081AB C7 50 C6         [ 1]  135 	ld	0x50c6, a
                           000008   136 	Smain$setup$4 ==.
                                    137 ;	inc/stm8s_clk.h: 744: CLK->CKDIVR |= (uint8_t) HSIPrescaler;
      0081AE C6 50 C6         [ 1]  138 	ld	a, 0x50c6
      0081B1 C7 50 C6         [ 1]  139 	ld	0x50c6, a
                           00000E   140 	Smain$setup$5 ==.
                           00000E   141 	Smain$setup$5 ==.
                           00000E   142 	Smain$setup$6 ==.
                                    143 ;	inc/stm8s_gpio.h: 186: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      0081B4 35 00 50 0F      [ 1]  144 	mov	0x500f+0, #0x00
                           000012   145 	Smain$setup$7 ==.
                                    146 ;	inc/stm8s_gpio.h: 187: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      0081B8 35 00 50 11      [ 1]  147 	mov	0x5011+0, #0x00
                           000016   148 	Smain$setup$8 ==.
                                    149 ;	inc/stm8s_gpio.h: 188: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      0081BC 35 00 50 12      [ 1]  150 	mov	0x5012+0, #0x00
                           00001A   151 	Smain$setup$9 ==.
                                    152 ;	inc/stm8s_gpio.h: 189: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      0081C0 35 00 50 13      [ 1]  153 	mov	0x5013+0, #0x00
                           00001E   154 	Smain$setup$10 ==.
                           00001E   155 	Smain$setup$10 ==.
                           00001E   156 	Smain$setup$11 ==.
                                    157 ;	inc/stm8s_gpio.h: 212: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
      0081C4 72 19 50 13      [ 1]  158 	bres	20499, #4
                           000022   159 	Smain$setup$12 ==.
                           000022   160 	Smain$setup$13 ==.
                                    161 ;	inc/stm8s_gpio.h: 222: GPIOx->ODR |= (uint8_t) GPIO_Pin;
      0081C8 72 18 50 0F      [ 1]  162 	bset	20495, #4
                           000026   163 	Smain$setup$14 ==.
                           000026   164 	Smain$setup$14 ==.
                           000026   165 	Smain$setup$15 ==.
                                    166 ;	inc/stm8s_gpio.h: 228: GPIOx->DDR |= (uint8_t) GPIO_Pin;
      0081CC 72 18 50 11      [ 1]  167 	bset	20497, #4
                           00002A   168 	Smain$setup$16 ==.
                           00002A   169 	Smain$setup$16 ==.
                           00002A   170 	Smain$setup$17 ==.
                                    171 ;	inc/stm8s_gpio.h: 241: GPIOx->CR1 |= (uint8_t) GPIO_Pin;
      0081D0 72 18 50 12      [ 1]  172 	bset	20498, #4
                           00002E   173 	Smain$setup$18 ==.
                           00002E   174 	Smain$setup$18 ==.
                           00002E   175 	Smain$setup$19 ==.
                                    176 ;	inc/stm8s_gpio.h: 256: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
      0081D4 72 19 50 13      [ 1]  177 	bres	20499, #4
                           000032   178 	Smain$setup$20 ==.
                           000032   179 	Smain$setup$20 ==.
                           000032   180 	Smain$setup$21 ==.
                                    181 ;	inc/stm8s_gpio.h: 212: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
      0081D8 72 1B 50 13      [ 1]  182 	bres	20499, #5
                           000036   183 	Smain$setup$22 ==.
                           000036   184 	Smain$setup$23 ==.
                                    185 ;	inc/stm8s_gpio.h: 222: GPIOx->ODR |= (uint8_t) GPIO_Pin;
      0081DC 72 1A 50 0F      [ 1]  186 	bset	20495, #5
                           00003A   187 	Smain$setup$24 ==.
                           00003A   188 	Smain$setup$24 ==.
                           00003A   189 	Smain$setup$25 ==.
                                    190 ;	inc/stm8s_gpio.h: 228: GPIOx->DDR |= (uint8_t) GPIO_Pin;
      0081E0 72 1A 50 11      [ 1]  191 	bset	20497, #5
                           00003E   192 	Smain$setup$26 ==.
                           00003E   193 	Smain$setup$26 ==.
                           00003E   194 	Smain$setup$27 ==.
                                    195 ;	inc/stm8s_gpio.h: 241: GPIOx->CR1 |= (uint8_t) GPIO_Pin;
      0081E4 72 1A 50 12      [ 1]  196 	bset	20498, #5
                           000042   197 	Smain$setup$28 ==.
                           000042   198 	Smain$setup$28 ==.
                           000042   199 	Smain$setup$29 ==.
                                    200 ;	inc/stm8s_gpio.h: 256: GPIOx->CR2 &= (uint8_t) (~(GPIO_Pin));
      0081E8 72 1B 50 13      [ 1]  201 	bres	20499, #5
                           000046   202 	Smain$setup$30 ==.
                           000046   203 	Smain$setup$31 ==.
                                    204 ;	main.c: 26: TIM4_Config(); //start system timer
      0081EC CD 80 D4         [ 4]  205 	call	_TIM4_Config
                           000049   206 	Smain$setup$32 ==.
                                    207 ;	main.c: 27: lastClick = micros();
      0081EF CD 81 76         [ 4]  208 	call	_micros
      0081F2 CF 00 03         [ 2]  209 	ldw	_lastClick+2, x
      0081F5 90 CF 00 01      [ 2]  210 	ldw	_lastClick+0, y
                           000053   211 	Smain$setup$33 ==.
                                    212 ;	main.c: 28: }
                           000053   213 	Smain$setup$34 ==.
                           000053   214 	XG$setup$0$0 ==.
      0081F9 81               [ 4]  215 	ret
                           000054   216 	Smain$setup$35 ==.
                           000054   217 	Smain$generateNoise$36 ==.
                                    218 ;	main.c: 30: unsigned int generateNoise(){ 
                                    219 ;	-----------------------------------------
                                    220 ;	 function generateNoise
                                    221 ;	-----------------------------------------
      0081FA                        222 _generateNoise:
                           000054   223 	Smain$generateNoise$37 ==.
      0081FA 52 04            [ 2]  224 	sub	sp, #4
                           000056   225 	Smain$generateNoise$38 ==.
                           000056   226 	Smain$generateNoise$39 ==.
                                    227 ;	main.c: 36: if(lfsr & 1) { lfsr =  (lfsr >>1) ^ LFSR_MASK ; return(1);}
      0081FC CE 00 0B         [ 2]  228 	ldw	x, _lfsr+2
      0081FF 90 CE 00 09      [ 2]  229 	ldw	y, _lfsr+0
      008203 17 01            [ 2]  230 	ldw	(0x01, sp), y
      008205 04 01            [ 1]  231 	srl	(0x01, sp)
      008207 06 02            [ 1]  232 	rrc	(0x02, sp)
      008209 56               [ 2]  233 	rrcw	x
      00820A 72 01 00 0C 1C   [ 2]  234 	btjf	_lfsr+3, #0, 00102$
                           000069   235 	Smain$generateNoise$40 ==.
      00820F 9F               [ 1]  236 	ld	a, xl
      008210 A8 06            [ 1]  237 	xor	a, #0x06
      008212 02               [ 1]  238 	rlwa	x
      008213 A8 80            [ 1]  239 	xor	a, #0x80
      008215 95               [ 1]  240 	ld	xh, a
      008216 7B 02            [ 1]  241 	ld	a, (0x02, sp)
      008218 90 97            [ 1]  242 	ld	yl, a
      00821A 7B 01            [ 1]  243 	ld	a, (0x01, sp)
      00821C A8 80            [ 1]  244 	xor	a, #0x80
      00821E 90 95            [ 1]  245 	ld	yh, a
      008220 CF 00 0B         [ 2]  246 	ldw	_lfsr+2, x
      008223 90 CF 00 09      [ 2]  247 	ldw	_lfsr+0, y
      008227 5F               [ 1]  248 	clrw	x
      008228 5C               [ 1]  249 	incw	x
      008229 20 09            [ 2]  250 	jra	00104$
                           000085   251 	Smain$generateNoise$41 ==.
      00822B                        252 00102$:
                           000085   253 	Smain$generateNoise$42 ==.
                           000085   254 	Smain$generateNoise$43 ==.
                                    255 ;	main.c: 37: else         { lfsr >>= 1;                      return(0);}
      00822B CF 00 0B         [ 2]  256 	ldw	_lfsr+2, x
      00822E 1E 01            [ 2]  257 	ldw	x, (0x01, sp)
      008230 CF 00 09         [ 2]  258 	ldw	_lfsr+0, x
      008233 5F               [ 1]  259 	clrw	x
                           00008E   260 	Smain$generateNoise$44 ==.
      008234                        261 00104$:
                           00008E   262 	Smain$generateNoise$45 ==.
                                    263 ;	main.c: 38: }
      008234 5B 04            [ 2]  264 	addw	sp, #4
                           000090   265 	Smain$generateNoise$46 ==.
                           000090   266 	Smain$generateNoise$47 ==.
                           000090   267 	XG$generateNoise$0$0 ==.
      008236 81               [ 4]  268 	ret
                           000091   269 	Smain$generateNoise$48 ==.
                           000091   270 	Smain$loop$49 ==.
                                    271 ;	main.c: 41: void loop() {
                                    272 ;	-----------------------------------------
                                    273 ;	 function loop
                                    274 ;	-----------------------------------------
      008237                        275 _loop:
                           000091   276 	Smain$loop$50 ==.
      008237 52 04            [ 2]  277 	sub	sp, #4
                           000093   278 	Smain$loop$51 ==.
                           000093   279 	Smain$loop$52 ==.
                                    280 ;	main.c: 42: if ((micros() - lastClick) > 200 ) { // Changing this value changes the frequency.
      008239 CD 81 76         [ 4]  281 	call	_micros
      00823C 51               [ 1]  282 	exgw	x, y
      00823D 72 B2 00 03      [ 2]  283 	subw	y, _lastClick+2
      008241 17 03            [ 2]  284 	ldw	(0x03, sp), y
      008243 9F               [ 1]  285 	ld	a, xl
      008244 C2 00 02         [ 1]  286 	sbc	a, _lastClick+1
      008247 6B 02            [ 1]  287 	ld	(0x02, sp), a
      008249 9E               [ 1]  288 	ld	a, xh
      00824A C2 00 01         [ 1]  289 	sbc	a, _lastClick+0
      00824D 6B 01            [ 1]  290 	ld	(0x01, sp), a
      00824F AE 00 C8         [ 2]  291 	ldw	x, #0x00c8
      008252 13 03            [ 2]  292 	cpw	x, (0x03, sp)
      008254 4F               [ 1]  293 	clr	a
      008255 12 02            [ 1]  294 	sbc	a, (0x02, sp)
      008257 4F               [ 1]  295 	clr	a
      008258 12 01            [ 1]  296 	sbc	a, (0x01, sp)
      00825A 24 14            [ 1]  297 	jrnc	00106$
                           0000B6   298 	Smain$loop$53 ==.
                           0000B6   299 	Smain$loop$54 ==.
                                    300 ;	main.c: 43: lastClick = micros();
      00825C CD 81 76         [ 4]  301 	call	_micros
      00825F CF 00 03         [ 2]  302 	ldw	_lastClick+2, x
      008262 90 CF 00 01      [ 2]  303 	ldw	_lastClick+0, y
                           0000C0   304 	Smain$loop$55 ==.
                                    305 ;	main.c: 44: if (generateNoise())
      008266 CD 81 FA         [ 4]  306 	call	_generateNoise
      008269 5D               [ 2]  307 	tnzw	x
      00826A 27 04            [ 1]  308 	jreq	00106$
                           0000C6   309 	Smain$loop$56 ==.
                           0000C6   310 	Smain$loop$57 ==.
                                    311 ;	inc/stm8s_gpio.h: 309: GPIOx->ODR ^= (uint8_t) PortPins;
      00826C 90 18 50 0F      [ 1]  312 	bcpl	20495, #4
                           0000CA   313 	Smain$loop$58 ==.
                           0000CA   314 	Smain$loop$59 ==.
                                    315 ;	main.c: 45: GPIO_WriteReverse(speakerPin);
      008270                        316 00106$:
                           0000CA   317 	Smain$loop$60 ==.
                                    318 ;	main.c: 47: }
      008270 5B 04            [ 2]  319 	addw	sp, #4
                           0000CC   320 	Smain$loop$61 ==.
                           0000CC   321 	Smain$loop$62 ==.
                           0000CC   322 	XG$loop$0$0 ==.
      008272 81               [ 4]  323 	ret
                           0000CD   324 	Smain$loop$63 ==.
                           0000CD   325 	Smain$main$64 ==.
                                    326 ;	main.c: 49: void main(){
                                    327 ;	-----------------------------------------
                                    328 ;	 function main
                                    329 ;	-----------------------------------------
      008273                        330 _main:
                           0000CD   331 	Smain$main$65 ==.
                           0000CD   332 	Smain$main$66 ==.
                                    333 ;	main.c: 50: setup();
      008273 CD 81 A6         [ 4]  334 	call	_setup
                           0000D0   335 	Smain$main$67 ==.
                                    336 ;	main.c: 51: while(1)
      008276                        337 00102$:
                           0000D0   338 	Smain$main$68 ==.
                                    339 ;	main.c: 52: loop();
      008276 CD 82 37         [ 4]  340 	call	_loop
      008279 20 FB            [ 2]  341 	jra	00102$
                           0000D5   342 	Smain$main$69 ==.
                                    343 ;	main.c: 53: }
                           0000D5   344 	Smain$main$70 ==.
                           0000D5   345 	XG$main$0$0 ==.
      00827B 81               [ 4]  346 	ret
                           0000D6   347 	Smain$main$71 ==.
                                    348 	.area CODE
                                    349 	.area CONST
                           000000   350 Lmain.AWU_Init$APR_Array$1_0$122 == .
      0080AA                        351 _AWU_Init_APR_Array_65536_122:
      0080AA 00                     352 	.db #0x00	; 0
      0080AB 1E                     353 	.db #0x1e	; 30
      0080AC 1E                     354 	.db #0x1e	; 30
      0080AD 1E                     355 	.db #0x1e	; 30
      0080AE 1E                     356 	.db #0x1e	; 30
      0080AF 1E                     357 	.db #0x1e	; 30
      0080B0 1E                     358 	.db #0x1e	; 30
      0080B1 1E                     359 	.db #0x1e	; 30
      0080B2 1E                     360 	.db #0x1e	; 30
      0080B3 1E                     361 	.db #0x1e	; 30
      0080B4 1E                     362 	.db #0x1e	; 30
      0080B5 1E                     363 	.db #0x1e	; 30
      0080B6 1E                     364 	.db #0x1e	; 30
      0080B7 3D                     365 	.db #0x3d	; 61
      0080B8 17                     366 	.db #0x17	; 23
      0080B9 17                     367 	.db #0x17	; 23
      0080BA 3E                     368 	.db #0x3e	; 62
                           000011   369 Lmain.AWU_Init$TBR_Array$1_0$122 == .
      0080BB                        370 _AWU_Init_TBR_Array_65536_122:
      0080BB 00                     371 	.db #0x00	; 0
      0080BC 01                     372 	.db #0x01	; 1
      0080BD 02                     373 	.db #0x02	; 2
      0080BE 03                     374 	.db #0x03	; 3
      0080BF 04                     375 	.db #0x04	; 4
      0080C0 05                     376 	.db #0x05	; 5
      0080C1 06                     377 	.db #0x06	; 6
      0080C2 07                     378 	.db #0x07	; 7
      0080C3 08                     379 	.db #0x08	; 8
      0080C4 09                     380 	.db #0x09	; 9
      0080C5 0A                     381 	.db #0x0a	; 10
      0080C6 0B                     382 	.db #0x0b	; 11
      0080C7 0C                     383 	.db #0x0c	; 12
      0080C8 0C                     384 	.db #0x0c	; 12
      0080C9 0E                     385 	.db #0x0e	; 14
      0080CA 0F                     386 	.db #0x0f	; 15
      0080CB 0F                     387 	.db #0x0f	; 15
                                    388 	.area INITIALIZER
                           000000   389 Fmain$__xinit_lfsr$0_0$0 == .
      0080D0                        390 __xinit__lfsr:
      0080D0 FE ED FA CE            391 	.byte #0xfe, #0xed, #0xfa, #0xce	; 4277009102
                                    392 	.area CABS (ABS)
                                    393 
                                    394 	.area .debug_line (NOLOAD)
      000239 00 00 01 DA            395 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00023D                        396 Ldebug_line_start:
      00023D 00 02                  397 	.dw	2
      00023F 00 00 00 C5            398 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000243 01                     399 	.db	1
      000244 01                     400 	.db	1
      000245 FB                     401 	.db	-5
      000246 0F                     402 	.db	15
      000247 0A                     403 	.db	10
      000248 00                     404 	.db	0
      000249 01                     405 	.db	1
      00024A 01                     406 	.db	1
      00024B 01                     407 	.db	1
      00024C 01                     408 	.db	1
      00024D 00                     409 	.db	0
      00024E 00                     410 	.db	0
      00024F 00                     411 	.db	0
      000250 01                     412 	.db	1
      000251 2F 75 73 72 2F 62 69   413 	.ascii "/usr/bin/../share/sdcc/include/stm8"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000274 00                     414 	.db	0
      000275 2F 75 73 72 2F 6C 6F   415 	.ascii "/usr/local/share/sdcc/include/stm8"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65 2F 73 74 6D 38
      000297 00                     416 	.db	0
      000298 2F 75 73 72 2F 62 69   417 	.ascii "/usr/bin/../share/sdcc/include"
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      0002B6 00                     418 	.db	0
      0002B7 2F 75 73 72 2F 6C 6F   419 	.ascii "/usr/local/share/sdcc/include"
             63 61 6C 2F 73 68 61
             72 65 2F 73 64 63 63
             2F 69 6E 63 6C 75 64
             65
      0002D4 00                     420 	.db	0
      0002D5 00                     421 	.db	0
      0002D6 6D 61 69 6E 2E 63      422 	.ascii "main.c"
      0002DC 00                     423 	.db	0
      0002DD 00                     424 	.uleb128	0
      0002DE 00                     425 	.uleb128	0
      0002DF 00                     426 	.uleb128	0
      0002E0 69 6E 63 2F 73 74 6D   427 	.ascii "inc/stm8s_clk.h"
             38 73 5F 63 6C 6B 2E
             68
      0002EF 00                     428 	.db	0
      0002F0 00                     429 	.uleb128	0
      0002F1 00                     430 	.uleb128	0
      0002F2 00                     431 	.uleb128	0
      0002F3 69 6E 63 2F 73 74 6D   432 	.ascii "inc/stm8s_gpio.h"
             38 73 5F 67 70 69 6F
             2E 68
      000303 00                     433 	.db	0
      000304 00                     434 	.uleb128	0
      000305 00                     435 	.uleb128	0
      000306 00                     436 	.uleb128	0
      000307 00                     437 	.db	0
      000308                        438 Ldebug_line_stmt:
      000308 00                     439 	.db	0
      000309 05                     440 	.uleb128	5
      00030A 02                     441 	.db	2
      00030B 00 00 81 A6            442 	.dw	0,(Smain$setup$0)
      00030F 03                     443 	.db	3
      000310 14                     444 	.sleb128	20
      000311 01                     445 	.db	1
      000312 04                     446 	.db	4
      000313 02                     447 	.uleb128	2
      000314 09                     448 	.db	9
      000315 00 00                  449 	.dw	Smain$setup$3-Smain$setup$0
      000317 03                     450 	.db	3
      000318 D0 05                  451 	.sleb128	720
      00031A 01                     452 	.db	1
      00031B 09                     453 	.db	9
      00031C 00 08                  454 	.dw	Smain$setup$4-Smain$setup$3
      00031E 03                     455 	.db	3
      00031F 03                     456 	.sleb128	3
      000320 01                     457 	.db	1
      000321 04                     458 	.db	4
      000322 03                     459 	.uleb128	3
      000323 09                     460 	.db	9
      000324 00 06                  461 	.dw	Smain$setup$6-Smain$setup$4
      000326 03                     462 	.db	3
      000327 D2 7B                  463 	.sleb128	-558
      000329 01                     464 	.db	1
      00032A 09                     465 	.db	9
      00032B 00 04                  466 	.dw	Smain$setup$7-Smain$setup$6
      00032D 03                     467 	.db	3
      00032E 01                     468 	.sleb128	1
      00032F 01                     469 	.db	1
      000330 09                     470 	.db	9
      000331 00 04                  471 	.dw	Smain$setup$8-Smain$setup$7
      000333 03                     472 	.db	3
      000334 01                     473 	.sleb128	1
      000335 01                     474 	.db	1
      000336 09                     475 	.db	9
      000337 00 04                  476 	.dw	Smain$setup$9-Smain$setup$8
      000339 03                     477 	.db	3
      00033A 01                     478 	.sleb128	1
      00033B 01                     479 	.db	1
      00033C 09                     480 	.db	9
      00033D 00 04                  481 	.dw	Smain$setup$11-Smain$setup$9
      00033F 03                     482 	.db	3
      000340 17                     483 	.sleb128	23
      000341 01                     484 	.db	1
      000342 09                     485 	.db	9
      000343 00 04                  486 	.dw	Smain$setup$13-Smain$setup$11
      000345 03                     487 	.db	3
      000346 0A                     488 	.sleb128	10
      000347 01                     489 	.db	1
      000348 09                     490 	.db	9
      000349 00 04                  491 	.dw	Smain$setup$15-Smain$setup$13
      00034B 03                     492 	.db	3
      00034C 06                     493 	.sleb128	6
      00034D 01                     494 	.db	1
      00034E 09                     495 	.db	9
      00034F 00 04                  496 	.dw	Smain$setup$17-Smain$setup$15
      000351 03                     497 	.db	3
      000352 0D                     498 	.sleb128	13
      000353 01                     499 	.db	1
      000354 09                     500 	.db	9
      000355 00 04                  501 	.dw	Smain$setup$19-Smain$setup$17
      000357 03                     502 	.db	3
      000358 0F                     503 	.sleb128	15
      000359 01                     504 	.db	1
      00035A 09                     505 	.db	9
      00035B 00 04                  506 	.dw	Smain$setup$21-Smain$setup$19
      00035D 03                     507 	.db	3
      00035E 54                     508 	.sleb128	-44
      00035F 01                     509 	.db	1
      000360 09                     510 	.db	9
      000361 00 04                  511 	.dw	Smain$setup$23-Smain$setup$21
      000363 03                     512 	.db	3
      000364 0A                     513 	.sleb128	10
      000365 01                     514 	.db	1
      000366 09                     515 	.db	9
      000367 00 04                  516 	.dw	Smain$setup$25-Smain$setup$23
      000369 03                     517 	.db	3
      00036A 06                     518 	.sleb128	6
      00036B 01                     519 	.db	1
      00036C 09                     520 	.db	9
      00036D 00 04                  521 	.dw	Smain$setup$27-Smain$setup$25
      00036F 03                     522 	.db	3
      000370 0D                     523 	.sleb128	13
      000371 01                     524 	.db	1
      000372 09                     525 	.db	9
      000373 00 04                  526 	.dw	Smain$setup$29-Smain$setup$27
      000375 03                     527 	.db	3
      000376 0F                     528 	.sleb128	15
      000377 01                     529 	.db	1
      000378 04                     530 	.db	4
      000379 01                     531 	.uleb128	1
      00037A 09                     532 	.db	9
      00037B 00 04                  533 	.dw	Smain$setup$31-Smain$setup$29
      00037D 03                     534 	.db	3
      00037E 9A 7E                  535 	.sleb128	-230
      000380 01                     536 	.db	1
      000381 09                     537 	.db	9
      000382 00 03                  538 	.dw	Smain$setup$32-Smain$setup$31
      000384 03                     539 	.db	3
      000385 01                     540 	.sleb128	1
      000386 01                     541 	.db	1
      000387 09                     542 	.db	9
      000388 00 0A                  543 	.dw	Smain$setup$33-Smain$setup$32
      00038A 03                     544 	.db	3
      00038B 01                     545 	.sleb128	1
      00038C 01                     546 	.db	1
      00038D 09                     547 	.db	9
      00038E 00 01                  548 	.dw	1+Smain$setup$34-Smain$setup$33
      000390 00                     549 	.db	0
      000391 01                     550 	.uleb128	1
      000392 01                     551 	.db	1
      000393 00                     552 	.db	0
      000394 05                     553 	.uleb128	5
      000395 02                     554 	.db	2
      000396 00 00 81 FA            555 	.dw	0,(Smain$generateNoise$36)
      00039A 03                     556 	.db	3
      00039B 1D                     557 	.sleb128	29
      00039C 01                     558 	.db	1
      00039D 09                     559 	.db	9
      00039E 00 02                  560 	.dw	Smain$generateNoise$39-Smain$generateNoise$36
      0003A0 03                     561 	.db	3
      0003A1 06                     562 	.sleb128	6
      0003A2 01                     563 	.db	1
      0003A3 09                     564 	.db	9
      0003A4 00 2F                  565 	.dw	Smain$generateNoise$43-Smain$generateNoise$39
      0003A6 03                     566 	.db	3
      0003A7 01                     567 	.sleb128	1
      0003A8 01                     568 	.db	1
      0003A9 09                     569 	.db	9
      0003AA 00 09                  570 	.dw	Smain$generateNoise$45-Smain$generateNoise$43
      0003AC 03                     571 	.db	3
      0003AD 01                     572 	.sleb128	1
      0003AE 01                     573 	.db	1
      0003AF 09                     574 	.db	9
      0003B0 00 03                  575 	.dw	1+Smain$generateNoise$47-Smain$generateNoise$45
      0003B2 00                     576 	.db	0
      0003B3 01                     577 	.uleb128	1
      0003B4 01                     578 	.db	1
      0003B5 00                     579 	.db	0
      0003B6 05                     580 	.uleb128	5
      0003B7 02                     581 	.db	2
      0003B8 00 00 82 37            582 	.dw	0,(Smain$loop$49)
      0003BC 03                     583 	.db	3
      0003BD 28                     584 	.sleb128	40
      0003BE 01                     585 	.db	1
      0003BF 09                     586 	.db	9
      0003C0 00 02                  587 	.dw	Smain$loop$52-Smain$loop$49
      0003C2 03                     588 	.db	3
      0003C3 01                     589 	.sleb128	1
      0003C4 01                     590 	.db	1
      0003C5 09                     591 	.db	9
      0003C6 00 23                  592 	.dw	Smain$loop$54-Smain$loop$52
      0003C8 03                     593 	.db	3
      0003C9 01                     594 	.sleb128	1
      0003CA 01                     595 	.db	1
      0003CB 09                     596 	.db	9
      0003CC 00 0A                  597 	.dw	Smain$loop$55-Smain$loop$54
      0003CE 03                     598 	.db	3
      0003CF 01                     599 	.sleb128	1
      0003D0 01                     600 	.db	1
      0003D1 04                     601 	.db	4
      0003D2 03                     602 	.uleb128	3
      0003D3 09                     603 	.db	9
      0003D4 00 06                  604 	.dw	Smain$loop$57-Smain$loop$55
      0003D6 03                     605 	.db	3
      0003D7 89 02                  606 	.sleb128	265
      0003D9 01                     607 	.db	1
      0003DA 04                     608 	.db	4
      0003DB 01                     609 	.uleb128	1
      0003DC 09                     610 	.db	9
      0003DD 00 04                  611 	.dw	Smain$loop$59-Smain$loop$57
      0003DF 03                     612 	.db	3
      0003E0 F8 7D                  613 	.sleb128	-264
      0003E2 01                     614 	.db	1
      0003E3 09                     615 	.db	9
      0003E4 00 00                  616 	.dw	Smain$loop$60-Smain$loop$59
      0003E6 03                     617 	.db	3
      0003E7 02                     618 	.sleb128	2
      0003E8 01                     619 	.db	1
      0003E9 09                     620 	.db	9
      0003EA 00 03                  621 	.dw	1+Smain$loop$62-Smain$loop$60
      0003EC 00                     622 	.db	0
      0003ED 01                     623 	.uleb128	1
      0003EE 01                     624 	.db	1
      0003EF 00                     625 	.db	0
      0003F0 05                     626 	.uleb128	5
      0003F1 02                     627 	.db	2
      0003F2 00 00 82 73            628 	.dw	0,(Smain$main$64)
      0003F6 03                     629 	.db	3
      0003F7 30                     630 	.sleb128	48
      0003F8 01                     631 	.db	1
      0003F9 09                     632 	.db	9
      0003FA 00 00                  633 	.dw	Smain$main$66-Smain$main$64
      0003FC 03                     634 	.db	3
      0003FD 01                     635 	.sleb128	1
      0003FE 01                     636 	.db	1
      0003FF 09                     637 	.db	9
      000400 00 03                  638 	.dw	Smain$main$67-Smain$main$66
      000402 03                     639 	.db	3
      000403 01                     640 	.sleb128	1
      000404 01                     641 	.db	1
      000405 09                     642 	.db	9
      000406 00 00                  643 	.dw	Smain$main$68-Smain$main$67
      000408 03                     644 	.db	3
      000409 01                     645 	.sleb128	1
      00040A 01                     646 	.db	1
      00040B 09                     647 	.db	9
      00040C 00 05                  648 	.dw	Smain$main$69-Smain$main$68
      00040E 03                     649 	.db	3
      00040F 01                     650 	.sleb128	1
      000410 01                     651 	.db	1
      000411 09                     652 	.db	9
      000412 00 01                  653 	.dw	1+Smain$main$70-Smain$main$69
      000414 00                     654 	.db	0
      000415 01                     655 	.uleb128	1
      000416 01                     656 	.db	1
      000417                        657 Ldebug_line_end:
                                    658 
                                    659 	.area .debug_loc (NOLOAD)
      00012C                        660 Ldebug_loc_start:
      00012C 00 00 82 73            661 	.dw	0,(Smain$main$65)
      000130 00 00 82 7C            662 	.dw	0,(Smain$main$71)
      000134 00 02                  663 	.dw	2
      000136 78                     664 	.db	120
      000137 01                     665 	.sleb128	1
      000138 00 00 00 00            666 	.dw	0,0
      00013C 00 00 00 00            667 	.dw	0,0
      000140 00 00 82 72            668 	.dw	0,(Smain$loop$61)
      000144 00 00 82 73            669 	.dw	0,(Smain$loop$63)
      000148 00 02                  670 	.dw	2
      00014A 78                     671 	.db	120
      00014B 01                     672 	.sleb128	1
      00014C 00 00 82 39            673 	.dw	0,(Smain$loop$51)
      000150 00 00 82 72            674 	.dw	0,(Smain$loop$61)
      000154 00 02                  675 	.dw	2
      000156 78                     676 	.db	120
      000157 05                     677 	.sleb128	5
      000158 00 00 82 37            678 	.dw	0,(Smain$loop$50)
      00015C 00 00 82 39            679 	.dw	0,(Smain$loop$51)
      000160 00 02                  680 	.dw	2
      000162 78                     681 	.db	120
      000163 01                     682 	.sleb128	1
      000164 00 00 00 00            683 	.dw	0,0
      000168 00 00 00 00            684 	.dw	0,0
      00016C 00 00 82 36            685 	.dw	0,(Smain$generateNoise$46)
      000170 00 00 82 37            686 	.dw	0,(Smain$generateNoise$48)
      000174 00 02                  687 	.dw	2
      000176 78                     688 	.db	120
      000177 01                     689 	.sleb128	1
      000178 00 00 81 FC            690 	.dw	0,(Smain$generateNoise$38)
      00017C 00 00 82 36            691 	.dw	0,(Smain$generateNoise$46)
      000180 00 02                  692 	.dw	2
      000182 78                     693 	.db	120
      000183 05                     694 	.sleb128	5
      000184 00 00 81 FA            695 	.dw	0,(Smain$generateNoise$37)
      000188 00 00 81 FC            696 	.dw	0,(Smain$generateNoise$38)
      00018C 00 02                  697 	.dw	2
      00018E 78                     698 	.db	120
      00018F 01                     699 	.sleb128	1
      000190 00 00 00 00            700 	.dw	0,0
      000194 00 00 00 00            701 	.dw	0,0
      000198 00 00 81 A6            702 	.dw	0,(Smain$setup$1)
      00019C 00 00 81 FA            703 	.dw	0,(Smain$setup$35)
      0001A0 00 02                  704 	.dw	2
      0001A2 78                     705 	.db	120
      0001A3 01                     706 	.sleb128	1
      0001A4 00 00 00 00            707 	.dw	0,0
      0001A8 00 00 00 00            708 	.dw	0,0
                                    709 
                                    710 	.area .debug_abbrev (NOLOAD)
      0000C0                        711 Ldebug_abbrev:
      0000C0 09                     712 	.uleb128	9
      0000C1 0F                     713 	.uleb128	15
      0000C2 00                     714 	.db	0
      0000C3 0B                     715 	.uleb128	11
      0000C4 0B                     716 	.uleb128	11
      0000C5 49                     717 	.uleb128	73
      0000C6 13                     718 	.uleb128	19
      0000C7 00                     719 	.uleb128	0
      0000C8 00                     720 	.uleb128	0
      0000C9 07                     721 	.uleb128	7
      0000CA 35                     722 	.uleb128	53
      0000CB 00                     723 	.db	0
      0000CC 49                     724 	.uleb128	73
      0000CD 13                     725 	.uleb128	19
      0000CE 00                     726 	.uleb128	0
      0000CF 00                     727 	.uleb128	0
      0000D0 0C                     728 	.uleb128	12
      0000D1 0B                     729 	.uleb128	11
      0000D2 00                     730 	.db	0
      0000D3 00                     731 	.uleb128	0
      0000D4 00                     732 	.uleb128	0
      0000D5 0D                     733 	.uleb128	13
      0000D6 0B                     734 	.uleb128	11
      0000D7 01                     735 	.db	1
      0000D8 00                     736 	.uleb128	0
      0000D9 00                     737 	.uleb128	0
      0000DA 12                     738 	.uleb128	18
      0000DB 34                     739 	.uleb128	52
      0000DC 00                     740 	.db	0
      0000DD 02                     741 	.uleb128	2
      0000DE 0A                     742 	.uleb128	10
      0000DF 03                     743 	.uleb128	3
      0000E0 08                     744 	.uleb128	8
      0000E1 3F                     745 	.uleb128	63
      0000E2 0C                     746 	.uleb128	12
      0000E3 49                     747 	.uleb128	73
      0000E4 13                     748 	.uleb128	19
      0000E5 00                     749 	.uleb128	0
      0000E6 00                     750 	.uleb128	0
      0000E7 02                     751 	.uleb128	2
      0000E8 2E                     752 	.uleb128	46
      0000E9 01                     753 	.db	1
      0000EA 01                     754 	.uleb128	1
      0000EB 13                     755 	.uleb128	19
      0000EC 03                     756 	.uleb128	3
      0000ED 08                     757 	.uleb128	8
      0000EE 11                     758 	.uleb128	17
      0000EF 01                     759 	.uleb128	1
      0000F0 12                     760 	.uleb128	18
      0000F1 01                     761 	.uleb128	1
      0000F2 3F                     762 	.uleb128	63
      0000F3 0C                     763 	.uleb128	12
      0000F4 40                     764 	.uleb128	64
      0000F5 06                     765 	.uleb128	6
      0000F6 00                     766 	.uleb128	0
      0000F7 00                     767 	.uleb128	0
      0000F8 05                     768 	.uleb128	5
      0000F9 34                     769 	.uleb128	52
      0000FA 00                     770 	.db	0
      0000FB 02                     771 	.uleb128	2
      0000FC 0A                     772 	.uleb128	10
      0000FD 03                     773 	.uleb128	3
      0000FE 08                     774 	.uleb128	8
      0000FF 49                     775 	.uleb128	73
      000100 13                     776 	.uleb128	19
      000101 00                     777 	.uleb128	0
      000102 00                     778 	.uleb128	0
      000103 0F                     779 	.uleb128	15
      000104 2E                     780 	.uleb128	46
      000105 01                     781 	.db	1
      000106 01                     782 	.uleb128	1
      000107 13                     783 	.uleb128	19
      000108 03                     784 	.uleb128	3
      000109 08                     785 	.uleb128	8
      00010A 11                     786 	.uleb128	17
      00010B 01                     787 	.uleb128	1
      00010C 12                     788 	.uleb128	18
      00010D 01                     789 	.uleb128	1
      00010E 3F                     790 	.uleb128	63
      00010F 0C                     791 	.uleb128	12
      000110 40                     792 	.uleb128	64
      000111 06                     793 	.uleb128	6
      000112 49                     794 	.uleb128	73
      000113 13                     795 	.uleb128	19
      000114 00                     796 	.uleb128	0
      000115 00                     797 	.uleb128	0
      000116 03                     798 	.uleb128	3
      000117 0B                     799 	.uleb128	11
      000118 01                     800 	.db	1
      000119 01                     801 	.uleb128	1
      00011A 13                     802 	.uleb128	19
      00011B 00                     803 	.uleb128	0
      00011C 00                     804 	.uleb128	0
      00011D 10                     805 	.uleb128	16
      00011E 0B                     806 	.uleb128	11
      00011F 01                     807 	.db	1
      000120 11                     808 	.uleb128	17
      000121 01                     809 	.uleb128	1
      000122 00                     810 	.uleb128	0
      000123 00                     811 	.uleb128	0
      000124 01                     812 	.uleb128	1
      000125 11                     813 	.uleb128	17
      000126 01                     814 	.db	1
      000127 03                     815 	.uleb128	3
      000128 08                     816 	.uleb128	8
      000129 10                     817 	.uleb128	16
      00012A 06                     818 	.uleb128	6
      00012B 13                     819 	.uleb128	19
      00012C 0B                     820 	.uleb128	11
      00012D 25                     821 	.uleb128	37
      00012E 08                     822 	.uleb128	8
      00012F 00                     823 	.uleb128	0
      000130 00                     824 	.uleb128	0
      000131 04                     825 	.uleb128	4
      000132 0B                     826 	.uleb128	11
      000133 00                     827 	.db	0
      000134 11                     828 	.uleb128	17
      000135 01                     829 	.uleb128	1
      000136 12                     830 	.uleb128	18
      000137 01                     831 	.uleb128	1
      000138 00                     832 	.uleb128	0
      000139 00                     833 	.uleb128	0
      00013A 08                     834 	.uleb128	8
      00013B 0D                     835 	.uleb128	13
      00013C 00                     836 	.db	0
      00013D 03                     837 	.uleb128	3
      00013E 08                     838 	.uleb128	8
      00013F 38                     839 	.uleb128	56
      000140 0A                     840 	.uleb128	10
      000141 49                     841 	.uleb128	73
      000142 13                     842 	.uleb128	19
      000143 00                     843 	.uleb128	0
      000144 00                     844 	.uleb128	0
      000145 0A                     845 	.uleb128	10
      000146 0B                     846 	.uleb128	11
      000147 01                     847 	.db	1
      000148 01                     848 	.uleb128	1
      000149 13                     849 	.uleb128	19
      00014A 11                     850 	.uleb128	17
      00014B 01                     851 	.uleb128	1
      00014C 00                     852 	.uleb128	0
      00014D 00                     853 	.uleb128	0
      00014E 11                     854 	.uleb128	17
      00014F 2E                     855 	.uleb128	46
      000150 00                     856 	.db	0
      000151 03                     857 	.uleb128	3
      000152 08                     858 	.uleb128	8
      000153 11                     859 	.uleb128	17
      000154 01                     860 	.uleb128	1
      000155 12                     861 	.uleb128	18
      000156 01                     862 	.uleb128	1
      000157 3F                     863 	.uleb128	63
      000158 0C                     864 	.uleb128	12
      000159 40                     865 	.uleb128	64
      00015A 06                     866 	.uleb128	6
      00015B 00                     867 	.uleb128	0
      00015C 00                     868 	.uleb128	0
      00015D 0B                     869 	.uleb128	11
      00015E 0B                     870 	.uleb128	11
      00015F 01                     871 	.db	1
      000160 01                     872 	.uleb128	1
      000161 13                     873 	.uleb128	19
      000162 11                     874 	.uleb128	17
      000163 01                     875 	.uleb128	1
      000164 12                     876 	.uleb128	18
      000165 01                     877 	.uleb128	1
      000166 00                     878 	.uleb128	0
      000167 00                     879 	.uleb128	0
      000168 06                     880 	.uleb128	6
      000169 13                     881 	.uleb128	19
      00016A 01                     882 	.db	1
      00016B 01                     883 	.uleb128	1
      00016C 13                     884 	.uleb128	19
      00016D 03                     885 	.uleb128	3
      00016E 08                     886 	.uleb128	8
      00016F 0B                     887 	.uleb128	11
      000170 0B                     888 	.uleb128	11
      000171 00                     889 	.uleb128	0
      000172 00                     890 	.uleb128	0
      000173 0E                     891 	.uleb128	14
      000174 24                     892 	.uleb128	36
      000175 00                     893 	.db	0
      000176 03                     894 	.uleb128	3
      000177 08                     895 	.uleb128	8
      000178 0B                     896 	.uleb128	11
      000179 0B                     897 	.uleb128	11
      00017A 3E                     898 	.uleb128	62
      00017B 0B                     899 	.uleb128	11
      00017C 00                     900 	.uleb128	0
      00017D 00                     901 	.uleb128	0
      00017E 00                     902 	.uleb128	0
                                    903 
                                    904 	.area .debug_info (NOLOAD)
      000439 00 00 03 98            905 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00043D                        906 Ldebug_info_start:
      00043D 00 02                  907 	.dw	2
      00043F 00 00 00 C0            908 	.dw	0,(Ldebug_abbrev)
      000443 04                     909 	.db	4
      000444 01                     910 	.uleb128	1
      000445 6D 61 69 6E 2E 63      911 	.ascii "main.c"
      00044B 00                     912 	.db	0
      00044C 00 00 02 39            913 	.dw	0,(Ldebug_line_start+-4)
      000450 01                     914 	.db	1
      000451 53 44 43 43 20 76 65   915 	.ascii "SDCC version 4.0.7 #11994"
             72 73 69 6F 6E 20 34
             2E 30 2E 37 20 23 31
             31 39 39 34
      00046A 00                     916 	.db	0
      00046B 02                     917 	.uleb128	2
      00046C 00 00 02 7E            918 	.dw	0,638
      000470 73 65 74 75 70         919 	.ascii "setup"
      000475 00                     920 	.db	0
      000476 00 00 81 A6            921 	.dw	0,(_setup)
      00047A 00 00 81 FA            922 	.dw	0,(XG$setup$0$0+1)
      00047E 01                     923 	.db	1
      00047F 00 00 01 98            924 	.dw	0,(Ldebug_loc_start+108)
      000483 03                     925 	.uleb128	3
      000484 00 00 00 89            926 	.dw	0,137
      000488 03                     927 	.uleb128	3
      000489 00 00 00 73            928 	.dw	0,115
      00048D 04                     929 	.uleb128	4
      00048E 00 00 81 A6            930 	.dw	0,(Smain$setup$2)
      000492 00 00 81 B4            931 	.dw	0,(Smain$setup$5)
      000496 05                     932 	.uleb128	5
      000497 02                     933 	.db	2
      000498 91                     934 	.db	145
      000499 00                     935 	.sleb128	0
      00049A 48 53 49 50 72 65 73   936 	.ascii "HSIPrescaler"
             63 61 6C 65 72
      0004A6 00                     937 	.db	0
      0004A7 00 00 02 7E            938 	.dw	0,638
      0004AB 00                     939 	.uleb128	0
      0004AC 05                     940 	.uleb128	5
      0004AD 02                     941 	.db	2
      0004AE 91                     942 	.db	145
      0004AF 00                     943 	.sleb128	0
      0004B0 5F 5F 31 33 31 30 37   944 	.ascii "__1310720142"
             32 30 31 34 32
      0004BC 00                     945 	.db	0
      0004BD 00 00 02 7E            946 	.dw	0,638
      0004C1 00                     947 	.uleb128	0
      0004C2 03                     948 	.uleb128	3
      0004C3 00 00 01 1B            949 	.dw	0,283
      0004C7 03                     950 	.uleb128	3
      0004C8 00 00 00 AB            951 	.dw	0,171
      0004CC 04                     952 	.uleb128	4
      0004CD 00 00 81 B4            953 	.dw	0,(Smain$setup$5)
      0004D1 00 00 81 C4            954 	.dw	0,(Smain$setup$10)
      0004D5 05                     955 	.uleb128	5
      0004D6 02                     956 	.db	2
      0004D7 91                     957 	.db	145
      0004D8 00                     958 	.sleb128	0
      0004D9 47 50 49 4F 78         959 	.ascii "GPIOx"
      0004DE 00                     960 	.db	0
      0004DF 00 00 00 FF            961 	.dw	0,255
      0004E3 00                     962 	.uleb128	0
      0004E4 06                     963 	.uleb128	6
      0004E5 00 00 00 FF            964 	.dw	0,255
      0004E9 47 50 49 4F 5F 73 74   965 	.ascii "GPIO_struct"
             72 75 63 74
      0004F4 00                     966 	.db	0
      0004F5 05                     967 	.db	5
      0004F6 07                     968 	.uleb128	7
      0004F7 00 00 02 7E            969 	.dw	0,638
      0004FB 08                     970 	.uleb128	8
      0004FC 4F 44 52               971 	.ascii "ODR"
      0004FF 00                     972 	.db	0
      000500 02                     973 	.db	2
      000501 23                     974 	.db	35
      000502 00                     975 	.uleb128	0
      000503 00 00 00 BD            976 	.dw	0,189
      000507 08                     977 	.uleb128	8
      000508 49 44 52               978 	.ascii "IDR"
      00050B 00                     979 	.db	0
      00050C 02                     980 	.db	2
      00050D 23                     981 	.db	35
      00050E 01                     982 	.uleb128	1
      00050F 00 00 00 BD            983 	.dw	0,189
      000513 08                     984 	.uleb128	8
      000514 44 44 52               985 	.ascii "DDR"
      000517 00                     986 	.db	0
      000518 02                     987 	.db	2
      000519 23                     988 	.db	35
      00051A 02                     989 	.uleb128	2
      00051B 00 00 00 BD            990 	.dw	0,189
      00051F 08                     991 	.uleb128	8
      000520 43 52 31               992 	.ascii "CR1"
      000523 00                     993 	.db	0
      000524 02                     994 	.db	2
      000525 23                     995 	.db	35
      000526 03                     996 	.uleb128	3
      000527 00 00 00 BD            997 	.dw	0,189
      00052B 08                     998 	.uleb128	8
      00052C 43 52 32               999 	.ascii "CR2"
      00052F 00                    1000 	.db	0
      000530 02                    1001 	.db	2
      000531 23                    1002 	.db	35
      000532 04                    1003 	.uleb128	4
      000533 00 00 00 BD           1004 	.dw	0,189
      000537 00                    1005 	.uleb128	0
      000538 09                    1006 	.uleb128	9
      000539 02                    1007 	.db	2
      00053A 00 00 00 AB           1008 	.dw	0,171
      00053E 05                    1009 	.uleb128	5
      00053F 02                    1010 	.db	2
      000540 91                    1011 	.db	145
      000541 00                    1012 	.sleb128	0
      000542 5F 5F 31 33 31 30 37  1013 	.ascii "__1310720144"
             32 30 31 34 34
      00054E 00                    1014 	.db	0
      00054F 00 00 00 FF           1015 	.dw	0,255
      000553 00                    1016 	.uleb128	0
      000554 03                    1017 	.uleb128	3
      000555 00 00 01 CE           1018 	.dw	0,462
      000559 03                    1019 	.uleb128	3
      00055A 00 00 01 8E           1020 	.dw	0,398
      00055E 0A                    1021 	.uleb128	10
      00055F 00 00 01 5C           1022 	.dw	0,348
      000563 00 00 81 C4           1023 	.dw	0,(Smain$setup$10)
      000567 0B                    1024 	.uleb128	11
      000568 00 00 01 46           1025 	.dw	0,326
      00056C 00 00 81 CC           1026 	.dw	0,(Smain$setup$14)
      000570 00 00 81 D0           1027 	.dw	0,(Smain$setup$16)
      000574 04                    1028 	.uleb128	4
      000575 00 00 81 C8           1029 	.dw	0,(Smain$setup$12)
      000579 00 00 81 CC           1030 	.dw	0,(Smain$setup$14)
      00057D 0C                    1031 	.uleb128	12
      00057E 00                    1032 	.uleb128	0
      00057F 0C                    1033 	.uleb128	12
      000580 04                    1034 	.uleb128	4
      000581 00 00 81 D0           1035 	.dw	0,(Smain$setup$16)
      000585 00 00 81 D4           1036 	.dw	0,(Smain$setup$18)
      000589 0C                    1037 	.uleb128	12
      00058A 0C                    1038 	.uleb128	12
      00058B 04                    1039 	.uleb128	4
      00058C 00 00 81 D4           1040 	.dw	0,(Smain$setup$18)
      000590 00 00 81 D8           1041 	.dw	0,(Smain$setup$20)
      000594 00                    1042 	.uleb128	0
      000595 05                    1043 	.uleb128	5
      000596 02                    1044 	.db	2
      000597 91                    1045 	.db	145
      000598 00                    1046 	.sleb128	0
      000599 47 50 49 4F 78        1047 	.ascii "GPIOx"
      00059E 00                    1048 	.db	0
      00059F 00 00 00 FF           1049 	.dw	0,255
      0005A3 05                    1050 	.uleb128	5
      0005A4 02                    1051 	.db	2
      0005A5 91                    1052 	.db	145
      0005A6 00                    1053 	.sleb128	0
      0005A7 47 50 49 4F 5F 50 69  1054 	.ascii "GPIO_Pin"
             6E
      0005AF 00                    1055 	.db	0
      0005B0 00 00 02 7E           1056 	.dw	0,638
      0005B4 05                    1057 	.uleb128	5
      0005B5 02                    1058 	.db	2
      0005B6 91                    1059 	.db	145
      0005B7 00                    1060 	.sleb128	0
      0005B8 47 50 49 4F 5F 4D 6F  1061 	.ascii "GPIO_Mode"
             64 65
      0005C1 00                    1062 	.db	0
      0005C2 00 00 02 7E           1063 	.dw	0,638
      0005C6 00                    1064 	.uleb128	0
      0005C7 05                    1065 	.uleb128	5
      0005C8 02                    1066 	.db	2
      0005C9 91                    1067 	.db	145
      0005CA 00                    1068 	.sleb128	0
      0005CB 5F 5F 31 33 31 30 37  1069 	.ascii "__1310720146"
             32 30 31 34 36
      0005D7 00                    1070 	.db	0
      0005D8 00 00 00 FF           1071 	.dw	0,255
      0005DC 05                    1072 	.uleb128	5
      0005DD 02                    1073 	.db	2
      0005DE 91                    1074 	.db	145
      0005DF 00                    1075 	.sleb128	0
      0005E0 5F 5F 31 33 31 30 37  1076 	.ascii "__1310720147"
             32 30 31 34 37
      0005EC 00                    1077 	.db	0
      0005ED 00 00 02 7E           1078 	.dw	0,638
      0005F1 05                    1079 	.uleb128	5
      0005F2 02                    1080 	.db	2
      0005F3 91                    1081 	.db	145
      0005F4 00                    1082 	.sleb128	0
      0005F5 5F 5F 31 33 31 30 37  1083 	.ascii "__1310720148"
             32 30 31 34 38
      000601 00                    1084 	.db	0
      000602 00 00 02 7E           1085 	.dw	0,638
      000606 00                    1086 	.uleb128	0
      000607 0D                    1087 	.uleb128	13
      000608 03                    1088 	.uleb128	3
      000609 00 00 02 3D           1089 	.dw	0,573
      00060D 0A                    1090 	.uleb128	10
      00060E 00 00 02 0B           1091 	.dw	0,523
      000612 00 00 81 D8           1092 	.dw	0,(Smain$setup$20)
      000616 0B                    1093 	.uleb128	11
      000617 00 00 01 F5           1094 	.dw	0,501
      00061B 00 00 81 E0           1095 	.dw	0,(Smain$setup$24)
      00061F 00 00 81 E4           1096 	.dw	0,(Smain$setup$26)
      000623 04                    1097 	.uleb128	4
      000624 00 00 81 DC           1098 	.dw	0,(Smain$setup$22)
      000628 00 00 81 E0           1099 	.dw	0,(Smain$setup$24)
      00062C 0C                    1100 	.uleb128	12
      00062D 00                    1101 	.uleb128	0
      00062E 0C                    1102 	.uleb128	12
      00062F 04                    1103 	.uleb128	4
      000630 00 00 81 E4           1104 	.dw	0,(Smain$setup$26)
      000634 00 00 81 E8           1105 	.dw	0,(Smain$setup$28)
      000638 0C                    1106 	.uleb128	12
      000639 0C                    1107 	.uleb128	12
      00063A 04                    1108 	.uleb128	4
      00063B 00 00 81 E8           1109 	.dw	0,(Smain$setup$28)
      00063F 00 00 81 EC           1110 	.dw	0,(Smain$setup$30)
      000643 00                    1111 	.uleb128	0
      000644 05                    1112 	.uleb128	5
      000645 02                    1113 	.db	2
      000646 91                    1114 	.db	145
      000647 00                    1115 	.sleb128	0
      000648 47 50 49 4F 78        1116 	.ascii "GPIOx"
      00064D 00                    1117 	.db	0
      00064E 00 00 00 FF           1118 	.dw	0,255
      000652 05                    1119 	.uleb128	5
      000653 02                    1120 	.db	2
      000654 91                    1121 	.db	145
      000655 00                    1122 	.sleb128	0
      000656 47 50 49 4F 5F 50 69  1123 	.ascii "GPIO_Pin"
             6E
      00065E 00                    1124 	.db	0
      00065F 00 00 02 7E           1125 	.dw	0,638
      000663 05                    1126 	.uleb128	5
      000664 02                    1127 	.db	2
      000665 91                    1128 	.db	145
      000666 00                    1129 	.sleb128	0
      000667 47 50 49 4F 5F 4D 6F  1130 	.ascii "GPIO_Mode"
             64 65
      000670 00                    1131 	.db	0
      000671 00 00 02 7E           1132 	.dw	0,638
      000675 00                    1133 	.uleb128	0
      000676 05                    1134 	.uleb128	5
      000677 02                    1135 	.db	2
      000678 91                    1136 	.db	145
      000679 00                    1137 	.sleb128	0
      00067A 5F 5F 31 33 31 30 37  1138 	.ascii "__1310720150"
             32 30 31 35 30
      000686 00                    1139 	.db	0
      000687 00 00 00 FF           1140 	.dw	0,255
      00068B 05                    1141 	.uleb128	5
      00068C 02                    1142 	.db	2
      00068D 91                    1143 	.db	145
      00068E 00                    1144 	.sleb128	0
      00068F 5F 5F 31 33 31 30 37  1145 	.ascii "__1310720151"
             32 30 31 35 31
      00069B 00                    1146 	.db	0
      00069C 00 00 02 7E           1147 	.dw	0,638
      0006A0 05                    1148 	.uleb128	5
      0006A1 02                    1149 	.db	2
      0006A2 91                    1150 	.db	145
      0006A3 00                    1151 	.sleb128	0
      0006A4 5F 5F 31 33 31 30 37  1152 	.ascii "__1310720152"
             32 30 31 35 32
      0006B0 00                    1153 	.db	0
      0006B1 00 00 02 7E           1154 	.dw	0,638
      0006B5 00                    1155 	.uleb128	0
      0006B6 00                    1156 	.uleb128	0
      0006B7 0E                    1157 	.uleb128	14
      0006B8 75 6E 73 69 67 6E 65  1158 	.ascii "unsigned char"
             64 20 63 68 61 72
      0006C5 00                    1159 	.db	0
      0006C6 01                    1160 	.db	1
      0006C7 08                    1161 	.db	8
      0006C8 0E                    1162 	.uleb128	14
      0006C9 75 6E 73 69 67 6E 65  1163 	.ascii "unsigned int"
             64 20 69 6E 74
      0006D5 00                    1164 	.db	0
      0006D6 02                    1165 	.db	2
      0006D7 07                    1166 	.db	7
      0006D8 0F                    1167 	.uleb128	15
      0006D9 00 00 02 D6           1168 	.dw	0,726
      0006DD 67 65 6E 65 72 61 74  1169 	.ascii "generateNoise"
             65 4E 6F 69 73 65
      0006EA 00                    1170 	.db	0
      0006EB 00 00 81 FA           1171 	.dw	0,(_generateNoise)
      0006EF 00 00 82 37           1172 	.dw	0,(XG$generateNoise$0$0+1)
      0006F3 01                    1173 	.db	1
      0006F4 00 00 01 6C           1174 	.dw	0,(Ldebug_loc_start+64)
      0006F8 00 00 02 8F           1175 	.dw	0,655
      0006FC 04                    1176 	.uleb128	4
      0006FD 00 00 82 0F           1177 	.dw	0,(Smain$generateNoise$40)
      000701 00 00 82 2B           1178 	.dw	0,(Smain$generateNoise$41)
      000705 04                    1179 	.uleb128	4
      000706 00 00 82 2B           1180 	.dw	0,(Smain$generateNoise$42)
      00070A 00 00 82 34           1181 	.dw	0,(Smain$generateNoise$44)
      00070E 00                    1182 	.uleb128	0
      00070F 02                    1183 	.uleb128	2
      000710 00 00 03 4E           1184 	.dw	0,846
      000714 6C 6F 6F 70           1185 	.ascii "loop"
      000718 00                    1186 	.db	0
      000719 00 00 82 37           1187 	.dw	0,(_loop)
      00071D 00 00 82 73           1188 	.dw	0,(XG$loop$0$0+1)
      000721 01                    1189 	.db	1
      000722 00 00 01 40           1190 	.dw	0,(Ldebug_loc_start+20)
      000726 10                    1191 	.uleb128	16
      000727 00 00 82 5C           1192 	.dw	0,(Smain$loop$53)
      00072B 0D                    1193 	.uleb128	13
      00072C 03                    1194 	.uleb128	3
      00072D 00 00 03 21           1195 	.dw	0,801
      000731 04                    1196 	.uleb128	4
      000732 00 00 82 6C           1197 	.dw	0,(Smain$loop$56)
      000736 00 00 82 70           1198 	.dw	0,(Smain$loop$58)
      00073A 05                    1199 	.uleb128	5
      00073B 02                    1200 	.db	2
      00073C 91                    1201 	.db	145
      00073D 00                    1202 	.sleb128	0
      00073E 47 50 49 4F 78        1203 	.ascii "GPIOx"
      000743 00                    1204 	.db	0
      000744 00 00 00 FF           1205 	.dw	0,255
      000748 05                    1206 	.uleb128	5
      000749 02                    1207 	.db	2
      00074A 91                    1208 	.db	145
      00074B 00                    1209 	.sleb128	0
      00074C 50 6F 72 74 50 69 6E  1210 	.ascii "PortPins"
             73
      000754 00                    1211 	.db	0
      000755 00 00 02 7E           1212 	.dw	0,638
      000759 00                    1213 	.uleb128	0
      00075A 05                    1214 	.uleb128	5
      00075B 02                    1215 	.db	2
      00075C 91                    1216 	.db	145
      00075D 00                    1217 	.sleb128	0
      00075E 5F 5F 31 39 36 36 30  1218 	.ascii "__1966080154"
             38 30 31 35 34
      00076A 00                    1219 	.db	0
      00076B 00 00 00 FF           1220 	.dw	0,255
      00076F 05                    1221 	.uleb128	5
      000770 02                    1222 	.db	2
      000771 91                    1223 	.db	145
      000772 00                    1224 	.sleb128	0
      000773 5F 5F 31 39 36 36 30  1225 	.ascii "__1966080155"
             38 30 31 35 35
      00077F 00                    1226 	.db	0
      000780 00 00 02 7E           1227 	.dw	0,638
      000784 00                    1228 	.uleb128	0
      000785 00                    1229 	.uleb128	0
      000786 00                    1230 	.uleb128	0
      000787 11                    1231 	.uleb128	17
      000788 6D 61 69 6E           1232 	.ascii "main"
      00078C 00                    1233 	.db	0
      00078D 00 00 82 73           1234 	.dw	0,(_main)
      000791 00 00 82 7C           1235 	.dw	0,(XG$main$0$0+1)
      000795 01                    1236 	.db	1
      000796 00 00 01 2C           1237 	.dw	0,(Ldebug_loc_start)
      00079A 0E                    1238 	.uleb128	14
      00079B 75 6E 73 69 67 6E 65  1239 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      0007A8 00                    1240 	.db	0
      0007A9 04                    1241 	.db	4
      0007AA 07                    1242 	.db	7
      0007AB 12                    1243 	.uleb128	18
      0007AC 05                    1244 	.db	5
      0007AD 03                    1245 	.db	3
      0007AE 00 00 00 09           1246 	.dw	0,(_lfsr)
      0007B2 6C 66 73 72           1247 	.ascii "lfsr"
      0007B6 00                    1248 	.db	0
      0007B7 01                    1249 	.db	1
      0007B8 00 00 03 61           1250 	.dw	0,865
      0007BC 12                    1251 	.uleb128	18
      0007BD 05                    1252 	.db	5
      0007BE 03                    1253 	.db	3
      0007BF 00 00 00 01           1254 	.dw	0,(_lastClick)
      0007C3 6C 61 73 74 43 6C 69  1255 	.ascii "lastClick"
             63 6B
      0007CC 00                    1256 	.db	0
      0007CD 01                    1257 	.db	1
      0007CE 00 00 03 61           1258 	.dw	0,865
      0007D2 00                    1259 	.uleb128	0
      0007D3 00                    1260 	.uleb128	0
      0007D4 00                    1261 	.uleb128	0
      0007D5                       1262 Ldebug_info_end:
                                   1263 
                                   1264 	.area .debug_pubnames (NOLOAD)
      000077 00 00 00 53           1265 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00007B                       1266 Ldebug_pubnames_start:
      00007B 00 02                 1267 	.dw	2
      00007D 00 00 04 39           1268 	.dw	0,(Ldebug_info_start-4)
      000081 00 00 03 9C           1269 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000085 00 00 00 32           1270 	.dw	0,50
      000089 73 65 74 75 70        1271 	.ascii "setup"
      00008E 00                    1272 	.db	0
      00008F 00 00 02 9F           1273 	.dw	0,671
      000093 67 65 6E 65 72 61 74  1274 	.ascii "generateNoise"
             65 4E 6F 69 73 65
      0000A0 00                    1275 	.db	0
      0000A1 00 00 02 D6           1276 	.dw	0,726
      0000A5 6C 6F 6F 70           1277 	.ascii "loop"
      0000A9 00                    1278 	.db	0
      0000AA 00 00 03 4E           1279 	.dw	0,846
      0000AE 6D 61 69 6E           1280 	.ascii "main"
      0000B2 00                    1281 	.db	0
      0000B3 00 00 03 72           1282 	.dw	0,882
      0000B7 6C 66 73 72           1283 	.ascii "lfsr"
      0000BB 00                    1284 	.db	0
      0000BC 00 00 03 83           1285 	.dw	0,899
      0000C0 6C 61 73 74 43 6C 69  1286 	.ascii "lastClick"
             63 6B
      0000C9 00                    1287 	.db	0
      0000CA 00 00 00 00           1288 	.dw	0,0
      0000CE                       1289 Ldebug_pubnames_end:
                                   1290 
                                   1291 	.area .debug_frame (NOLOAD)
      00015F 00 00                 1292 	.dw	0
      000161 00 0E                 1293 	.dw	Ldebug_CIE0_end-Ldebug_CIE0_start
      000163                       1294 Ldebug_CIE0_start:
      000163 FF FF                 1295 	.dw	0xffff
      000165 FF FF                 1296 	.dw	0xffff
      000167 01                    1297 	.db	1
      000168 00                    1298 	.db	0
      000169 01                    1299 	.uleb128	1
      00016A 7F                    1300 	.sleb128	-1
      00016B 09                    1301 	.db	9
      00016C 0C                    1302 	.db	12
      00016D 08                    1303 	.uleb128	8
      00016E 02                    1304 	.uleb128	2
      00016F 89                    1305 	.db	137
      000170 01                    1306 	.uleb128	1
      000171                       1307 Ldebug_CIE0_end:
      000171 00 00 00 13           1308 	.dw	0,19
      000175 00 00 01 5F           1309 	.dw	0,(Ldebug_CIE0_start-4)
      000179 00 00 82 73           1310 	.dw	0,(Smain$main$65)	;initial loc
      00017D 00 00 00 09           1311 	.dw	0,Smain$main$71-Smain$main$65
      000181 01                    1312 	.db	1
      000182 00 00 82 73           1313 	.dw	0,(Smain$main$65)
      000186 0E                    1314 	.db	14
      000187 02                    1315 	.uleb128	2
                                   1316 
                                   1317 	.area .debug_frame (NOLOAD)
      000188 00 00                 1318 	.dw	0
      00018A 00 0E                 1319 	.dw	Ldebug_CIE1_end-Ldebug_CIE1_start
      00018C                       1320 Ldebug_CIE1_start:
      00018C FF FF                 1321 	.dw	0xffff
      00018E FF FF                 1322 	.dw	0xffff
      000190 01                    1323 	.db	1
      000191 00                    1324 	.db	0
      000192 01                    1325 	.uleb128	1
      000193 7F                    1326 	.sleb128	-1
      000194 09                    1327 	.db	9
      000195 0C                    1328 	.db	12
      000196 08                    1329 	.uleb128	8
      000197 02                    1330 	.uleb128	2
      000198 89                    1331 	.db	137
      000199 01                    1332 	.uleb128	1
      00019A                       1333 Ldebug_CIE1_end:
      00019A 00 00 00 21           1334 	.dw	0,33
      00019E 00 00 01 88           1335 	.dw	0,(Ldebug_CIE1_start-4)
      0001A2 00 00 82 37           1336 	.dw	0,(Smain$loop$50)	;initial loc
      0001A6 00 00 00 3C           1337 	.dw	0,Smain$loop$63-Smain$loop$50
      0001AA 01                    1338 	.db	1
      0001AB 00 00 82 37           1339 	.dw	0,(Smain$loop$50)
      0001AF 0E                    1340 	.db	14
      0001B0 02                    1341 	.uleb128	2
      0001B1 01                    1342 	.db	1
      0001B2 00 00 82 39           1343 	.dw	0,(Smain$loop$51)
      0001B6 0E                    1344 	.db	14
      0001B7 06                    1345 	.uleb128	6
      0001B8 01                    1346 	.db	1
      0001B9 00 00 82 72           1347 	.dw	0,(Smain$loop$61)
      0001BD 0E                    1348 	.db	14
      0001BE 02                    1349 	.uleb128	2
                                   1350 
                                   1351 	.area .debug_frame (NOLOAD)
      0001BF 00 00                 1352 	.dw	0
      0001C1 00 0E                 1353 	.dw	Ldebug_CIE2_end-Ldebug_CIE2_start
      0001C3                       1354 Ldebug_CIE2_start:
      0001C3 FF FF                 1355 	.dw	0xffff
      0001C5 FF FF                 1356 	.dw	0xffff
      0001C7 01                    1357 	.db	1
      0001C8 00                    1358 	.db	0
      0001C9 01                    1359 	.uleb128	1
      0001CA 7F                    1360 	.sleb128	-1
      0001CB 09                    1361 	.db	9
      0001CC 0C                    1362 	.db	12
      0001CD 08                    1363 	.uleb128	8
      0001CE 02                    1364 	.uleb128	2
      0001CF 89                    1365 	.db	137
      0001D0 01                    1366 	.uleb128	1
      0001D1                       1367 Ldebug_CIE2_end:
      0001D1 00 00 00 21           1368 	.dw	0,33
      0001D5 00 00 01 BF           1369 	.dw	0,(Ldebug_CIE2_start-4)
      0001D9 00 00 81 FA           1370 	.dw	0,(Smain$generateNoise$37)	;initial loc
      0001DD 00 00 00 3D           1371 	.dw	0,Smain$generateNoise$48-Smain$generateNoise$37
      0001E1 01                    1372 	.db	1
      0001E2 00 00 81 FA           1373 	.dw	0,(Smain$generateNoise$37)
      0001E6 0E                    1374 	.db	14
      0001E7 02                    1375 	.uleb128	2
      0001E8 01                    1376 	.db	1
      0001E9 00 00 81 FC           1377 	.dw	0,(Smain$generateNoise$38)
      0001ED 0E                    1378 	.db	14
      0001EE 06                    1379 	.uleb128	6
      0001EF 01                    1380 	.db	1
      0001F0 00 00 82 36           1381 	.dw	0,(Smain$generateNoise$46)
      0001F4 0E                    1382 	.db	14
      0001F5 02                    1383 	.uleb128	2
                                   1384 
                                   1385 	.area .debug_frame (NOLOAD)
      0001F6 00 00                 1386 	.dw	0
      0001F8 00 0E                 1387 	.dw	Ldebug_CIE3_end-Ldebug_CIE3_start
      0001FA                       1388 Ldebug_CIE3_start:
      0001FA FF FF                 1389 	.dw	0xffff
      0001FC FF FF                 1390 	.dw	0xffff
      0001FE 01                    1391 	.db	1
      0001FF 00                    1392 	.db	0
      000200 01                    1393 	.uleb128	1
      000201 7F                    1394 	.sleb128	-1
      000202 09                    1395 	.db	9
      000203 0C                    1396 	.db	12
      000204 08                    1397 	.uleb128	8
      000205 02                    1398 	.uleb128	2
      000206 89                    1399 	.db	137
      000207 01                    1400 	.uleb128	1
      000208                       1401 Ldebug_CIE3_end:
      000208 00 00 00 13           1402 	.dw	0,19
      00020C 00 00 01 F6           1403 	.dw	0,(Ldebug_CIE3_start-4)
      000210 00 00 81 A6           1404 	.dw	0,(Smain$setup$1)	;initial loc
      000214 00 00 00 54           1405 	.dw	0,Smain$setup$35-Smain$setup$1
      000218 01                    1406 	.db	1
      000219 00 00 81 A6           1407 	.dw	0,(Smain$setup$1)
      00021D 0E                    1408 	.db	14
      00021E 02                    1409 	.uleb128	2
