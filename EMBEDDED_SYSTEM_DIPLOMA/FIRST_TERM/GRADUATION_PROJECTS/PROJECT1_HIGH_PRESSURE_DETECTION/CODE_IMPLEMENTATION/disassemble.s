
pressure_detection.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20000409 	andcs	r0, r0, r9, lsl #8
 8000004:	08000349 	stmdaeq	r0, {r0, r3, r6, r8, r9}
 8000008:	0800033d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r8, r9}
 800000c:	0800033d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r8, r9}
 8000010:	0800033d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r8, r9}
 8000014:	0800033d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r8, r9}
 8000018:	0800033d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r8, r9}
 800001c:	0800033d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r8, r9}

08000020 <actuator_init>:
 8000020:	b480      	push	{r7}
 8000022:	af00      	add	r7, sp, #0
 8000024:	46bd      	mov	sp, r7
 8000026:	bc80      	pop	{r7}
 8000028:	4770      	bx	lr
 800002a:	bf00      	nop

0800002c <start_alarm>:
 800002c:	b580      	push	{r7, lr}
 800002e:	af00      	add	r7, sp, #0
 8000030:	f04f 0000 	mov.w	r0, #0
 8000034:	f000 f898 	bl	8000168 <Set_Alarm_actuator>
 8000038:	bd80      	pop	{r7, pc}
 800003a:	bf00      	nop

0800003c <stop_alarm>:
 800003c:	b580      	push	{r7, lr}
 800003e:	af00      	add	r7, sp, #0
 8000040:	f04f 0001 	mov.w	r0, #1
 8000044:	f000 f890 	bl	8000168 <Set_Alarm_actuator>
 8000048:	bd80      	pop	{r7, pc}
 800004a:	bf00      	nop

0800004c <high_pressure_detected>:
 800004c:	b480      	push	{r7}
 800004e:	af00      	add	r7, sp, #0
 8000050:	f240 030c 	movw	r3, #12
 8000054:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000058:	f240 02b1 	movw	r2, #177	; 0xb1
 800005c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8000060:	601a      	str	r2, [r3, #0]
 8000062:	46bd      	mov	sp, r7
 8000064:	bc80      	pop	{r7}
 8000066:	4770      	bx	lr

08000068 <st_am_waiting>:
 8000068:	b580      	push	{r7, lr}
 800006a:	af00      	add	r7, sp, #0
 800006c:	f240 0310 	movw	r3, #16
 8000070:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000074:	f04f 0200 	mov.w	r2, #0
 8000078:	701a      	strb	r2, [r3, #0]
 800007a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800007e:	f000 f855 	bl	800012c <delay>
 8000082:	f240 030c 	movw	r3, #12
 8000086:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800008a:	f240 0299 	movw	r2, #153	; 0x99
 800008e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8000092:	601a      	str	r2, [r3, #0]
 8000094:	bd80      	pop	{r7, pc}
 8000096:	bf00      	nop

08000098 <st_alarm_off>:
 8000098:	b580      	push	{r7, lr}
 800009a:	af00      	add	r7, sp, #0
 800009c:	f240 0310 	movw	r3, #16
 80000a0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80000a4:	f04f 0201 	mov.w	r2, #1
 80000a8:	701a      	strb	r2, [r3, #0]
 80000aa:	f7ff ffc7 	bl	800003c <stop_alarm>
 80000ae:	bd80      	pop	{r7, pc}

080000b0 <st_alarm_on>:
 80000b0:	b580      	push	{r7, lr}
 80000b2:	af00      	add	r7, sp, #0
 80000b4:	f240 0310 	movw	r3, #16
 80000b8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80000bc:	f04f 0202 	mov.w	r2, #2
 80000c0:	701a      	strb	r2, [r3, #0]
 80000c2:	f7ff ffb3 	bl	800002c <start_alarm>
 80000c6:	f240 030c 	movw	r3, #12
 80000ca:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80000ce:	f240 0269 	movw	r2, #105	; 0x69
 80000d2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80000d6:	601a      	str	r2, [r3, #0]
 80000d8:	bd80      	pop	{r7, pc}
 80000da:	bf00      	nop

080000dc <set_pressure_val>:
 80000dc:	b480      	push	{r7}
 80000de:	b083      	sub	sp, #12
 80000e0:	af00      	add	r7, sp, #0
 80000e2:	6078      	str	r0, [r7, #4]
 80000e4:	f240 0304 	movw	r3, #4
 80000e8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80000ec:	687a      	ldr	r2, [r7, #4]
 80000ee:	601a      	str	r2, [r3, #0]
 80000f0:	f107 070c 	add.w	r7, r7, #12
 80000f4:	46bd      	mov	sp, r7
 80000f6:	bc80      	pop	{r7}
 80000f8:	4770      	bx	lr
 80000fa:	bf00      	nop

080000fc <st_high_pressure_detect>:
 80000fc:	b580      	push	{r7, lr}
 80000fe:	af00      	add	r7, sp, #0
 8000100:	f240 0314 	movw	r3, #20
 8000104:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000108:	f04f 0200 	mov.w	r2, #0
 800010c:	701a      	strb	r2, [r3, #0]
 800010e:	f240 0304 	movw	r3, #4
 8000112:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000116:	681a      	ldr	r2, [r3, #0]
 8000118:	f240 0300 	movw	r3, #0
 800011c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000120:	681b      	ldr	r3, [r3, #0]
 8000122:	429a      	cmp	r2, r3
 8000124:	d901      	bls.n	800012a <st_high_pressure_detect+0x2e>
 8000126:	f7ff ff91 	bl	800004c <high_pressure_detected>
 800012a:	bd80      	pop	{r7, pc}

0800012c <delay>:
 800012c:	b480      	push	{r7}
 800012e:	b083      	sub	sp, #12
 8000130:	af00      	add	r7, sp, #0
 8000132:	6078      	str	r0, [r7, #4]
 8000134:	e003      	b.n	800013e <delay+0x12>
 8000136:	687b      	ldr	r3, [r7, #4]
 8000138:	f103 33ff 	add.w	r3, r3, #4294967295
 800013c:	607b      	str	r3, [r7, #4]
 800013e:	687b      	ldr	r3, [r7, #4]
 8000140:	2b00      	cmp	r3, #0
 8000142:	d1f8      	bne.n	8000136 <delay+0xa>
 8000144:	f107 070c 	add.w	r7, r7, #12
 8000148:	46bd      	mov	sp, r7
 800014a:	bc80      	pop	{r7}
 800014c:	4770      	bx	lr
 800014e:	bf00      	nop

08000150 <getPressureVal>:
 8000150:	b480      	push	{r7}
 8000152:	af00      	add	r7, sp, #0
 8000154:	f640 0308 	movw	r3, #2056	; 0x808
 8000158:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800015c:	681b      	ldr	r3, [r3, #0]
 800015e:	b2db      	uxtb	r3, r3
 8000160:	4618      	mov	r0, r3
 8000162:	46bd      	mov	sp, r7
 8000164:	bc80      	pop	{r7}
 8000166:	4770      	bx	lr

08000168 <Set_Alarm_actuator>:
 8000168:	b480      	push	{r7}
 800016a:	b083      	sub	sp, #12
 800016c:	af00      	add	r7, sp, #0
 800016e:	6078      	str	r0, [r7, #4]
 8000170:	687b      	ldr	r3, [r7, #4]
 8000172:	2b01      	cmp	r3, #1
 8000174:	d10c      	bne.n	8000190 <Set_Alarm_actuator+0x28>
 8000176:	f640 030c 	movw	r3, #2060	; 0x80c
 800017a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800017e:	f640 020c 	movw	r2, #2060	; 0x80c
 8000182:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8000186:	6812      	ldr	r2, [r2, #0]
 8000188:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800018c:	601a      	str	r2, [r3, #0]
 800018e:	e00e      	b.n	80001ae <Set_Alarm_actuator+0x46>
 8000190:	687b      	ldr	r3, [r7, #4]
 8000192:	2b00      	cmp	r3, #0
 8000194:	d10b      	bne.n	80001ae <Set_Alarm_actuator+0x46>
 8000196:	f640 030c 	movw	r3, #2060	; 0x80c
 800019a:	f2c4 0301 	movt	r3, #16385	; 0x4001
 800019e:	f640 020c 	movw	r2, #2060	; 0x80c
 80001a2:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80001a6:	6812      	ldr	r2, [r2, #0]
 80001a8:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80001ac:	601a      	str	r2, [r3, #0]
 80001ae:	f107 070c 	add.w	r7, r7, #12
 80001b2:	46bd      	mov	sp, r7
 80001b4:	bc80      	pop	{r7}
 80001b6:	4770      	bx	lr

080001b8 <GPIO_INITIALIZATION>:
 80001b8:	b480      	push	{r7}
 80001ba:	af00      	add	r7, sp, #0
 80001bc:	f241 0318 	movw	r3, #4120	; 0x1018
 80001c0:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80001c4:	f241 0218 	movw	r2, #4120	; 0x1018
 80001c8:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80001cc:	6812      	ldr	r2, [r2, #0]
 80001ce:	f042 0204 	orr.w	r2, r2, #4
 80001d2:	601a      	str	r2, [r3, #0]
 80001d4:	f44f 6300 	mov.w	r3, #2048	; 0x800
 80001d8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80001dc:	f44f 6200 	mov.w	r2, #2048	; 0x800
 80001e0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80001e4:	6812      	ldr	r2, [r2, #0]
 80001e6:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 80001ea:	601a      	str	r2, [r3, #0]
 80001ec:	f44f 6300 	mov.w	r3, #2048	; 0x800
 80001f0:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80001f4:	f44f 6200 	mov.w	r2, #2048	; 0x800
 80001f8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80001fc:	6812      	ldr	r2, [r2, #0]
 80001fe:	601a      	str	r2, [r3, #0]
 8000200:	f640 0304 	movw	r3, #2052	; 0x804
 8000204:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000208:	f640 0204 	movw	r2, #2052	; 0x804
 800020c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8000210:	6812      	ldr	r2, [r2, #0]
 8000212:	f422 0270 	bic.w	r2, r2, #15728640	; 0xf00000
 8000216:	601a      	str	r2, [r3, #0]
 8000218:	f640 0304 	movw	r3, #2052	; 0x804
 800021c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8000220:	f640 0204 	movw	r2, #2052	; 0x804
 8000224:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8000228:	6812      	ldr	r2, [r2, #0]
 800022a:	f042 3222 	orr.w	r2, r2, #572662306	; 0x22222222
 800022e:	601a      	str	r2, [r3, #0]
 8000230:	46bd      	mov	sp, r7
 8000232:	bc80      	pop	{r7}
 8000234:	4770      	bx	lr
 8000236:	bf00      	nop

08000238 <init>:
 8000238:	b580      	push	{r7, lr}
 800023a:	af00      	add	r7, sp, #0
 800023c:	f7ff ffbc 	bl	80001b8 <GPIO_INITIALIZATION>
 8000240:	f000 f83a 	bl	80002b8 <ps_init>
 8000244:	f7ff feec 	bl	8000020 <actuator_init>
 8000248:	f240 031c 	movw	r3, #28
 800024c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000250:	f240 22f5 	movw	r2, #757	; 0x2f5
 8000254:	f6c0 0200 	movt	r2, #2048	; 0x800
 8000258:	601a      	str	r2, [r3, #0]
 800025a:	f240 0318 	movw	r3, #24
 800025e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000262:	f240 02fd 	movw	r2, #253	; 0xfd
 8000266:	f6c0 0200 	movt	r2, #2048	; 0x800
 800026a:	601a      	str	r2, [r3, #0]
 800026c:	f240 030c 	movw	r3, #12
 8000270:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000274:	f240 0299 	movw	r2, #153	; 0x99
 8000278:	f6c0 0200 	movt	r2, #2048	; 0x800
 800027c:	601a      	str	r2, [r3, #0]
 800027e:	bd80      	pop	{r7, pc}

08000280 <main>:
 8000280:	b580      	push	{r7, lr}
 8000282:	af00      	add	r7, sp, #0
 8000284:	f7ff ffd8 	bl	8000238 <init>
 8000288:	f240 031c 	movw	r3, #28
 800028c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000290:	681b      	ldr	r3, [r3, #0]
 8000292:	4798      	blx	r3
 8000294:	f240 0318 	movw	r3, #24
 8000298:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800029c:	681b      	ldr	r3, [r3, #0]
 800029e:	4798      	blx	r3
 80002a0:	f240 030c 	movw	r3, #12
 80002a4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80002a8:	681b      	ldr	r3, [r3, #0]
 80002aa:	4798      	blx	r3
 80002ac:	f04f 0064 	mov.w	r0, #100	; 0x64
 80002b0:	f7ff ff3c 	bl	800012c <delay>
 80002b4:	e7e8      	b.n	8000288 <main+0x8>
 80002b6:	bf00      	nop

080002b8 <ps_init>:
 80002b8:	b480      	push	{r7}
 80002ba:	af00      	add	r7, sp, #0
 80002bc:	46bd      	mov	sp, r7
 80002be:	bc80      	pop	{r7}
 80002c0:	4770      	bx	lr
 80002c2:	bf00      	nop

080002c4 <st_ps_waiting>:
 80002c4:	b580      	push	{r7, lr}
 80002c6:	af00      	add	r7, sp, #0
 80002c8:	f240 0320 	movw	r3, #32
 80002cc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80002d0:	f04f 0201 	mov.w	r2, #1
 80002d4:	701a      	strb	r2, [r3, #0]
 80002d6:	f04f 0014 	mov.w	r0, #20
 80002da:	f7ff ff27 	bl	800012c <delay>
 80002de:	f240 031c 	movw	r3, #28
 80002e2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80002e6:	f240 22f5 	movw	r2, #757	; 0x2f5
 80002ea:	f6c0 0200 	movt	r2, #2048	; 0x800
 80002ee:	601a      	str	r2, [r3, #0]
 80002f0:	bd80      	pop	{r7, pc}
 80002f2:	bf00      	nop

080002f4 <st_ps_reading>:
 80002f4:	b580      	push	{r7, lr}
 80002f6:	af00      	add	r7, sp, #0
 80002f8:	f240 0320 	movw	r3, #32
 80002fc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000300:	f04f 0201 	mov.w	r2, #1
 8000304:	701a      	strb	r2, [r3, #0]
 8000306:	f7ff ff23 	bl	8000150 <getPressureVal>
 800030a:	4603      	mov	r3, r0
 800030c:	461a      	mov	r2, r3
 800030e:	f240 0308 	movw	r3, #8
 8000312:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000316:	601a      	str	r2, [r3, #0]
 8000318:	f240 0308 	movw	r3, #8
 800031c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000320:	681b      	ldr	r3, [r3, #0]
 8000322:	4618      	mov	r0, r3
 8000324:	f7ff feda 	bl	80000dc <set_pressure_val>
 8000328:	f240 031c 	movw	r3, #28
 800032c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000330:	f240 22c5 	movw	r2, #709	; 0x2c5
 8000334:	f6c0 0200 	movt	r2, #2048	; 0x800
 8000338:	601a      	str	r2, [r3, #0]
 800033a:	bd80      	pop	{r7, pc}

0800033c <vector_handler>:
 800033c:	b580      	push	{r7, lr}
 800033e:	af00      	add	r7, sp, #0
 8000340:	f000 f802 	bl	8000348 <reset_handler>
 8000344:	bd80      	pop	{r7, pc}
 8000346:	bf00      	nop

08000348 <reset_handler>:
 8000348:	b580      	push	{r7, lr}
 800034a:	b086      	sub	sp, #24
 800034c:	af00      	add	r7, sp, #0
 800034e:	f240 0304 	movw	r3, #4
 8000352:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000356:	617b      	str	r3, [r7, #20]
 8000358:	f240 33f8 	movw	r3, #1016	; 0x3f8
 800035c:	f6c0 0300 	movt	r3, #2048	; 0x800
 8000360:	613b      	str	r3, [r7, #16]
 8000362:	f240 0300 	movw	r3, #0
 8000366:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800036a:	60fb      	str	r3, [r7, #12]
 800036c:	f240 0200 	movw	r2, #0
 8000370:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8000374:	f240 0304 	movw	r3, #4
 8000378:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800037c:	1ad3      	subs	r3, r2, r3
 800037e:	607b      	str	r3, [r7, #4]
 8000380:	f240 0204 	movw	r2, #4
 8000384:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8000388:	f240 030c 	movw	r3, #12
 800038c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8000390:	1ad3      	subs	r3, r2, r3
 8000392:	603b      	str	r3, [r7, #0]
 8000394:	f04f 0300 	mov.w	r3, #0
 8000398:	60bb      	str	r3, [r7, #8]
 800039a:	e00f      	b.n	80003bc <reset_handler+0x74>
 800039c:	693b      	ldr	r3, [r7, #16]
 800039e:	781a      	ldrb	r2, [r3, #0]
 80003a0:	68fb      	ldr	r3, [r7, #12]
 80003a2:	701a      	strb	r2, [r3, #0]
 80003a4:	68fb      	ldr	r3, [r7, #12]
 80003a6:	f103 0301 	add.w	r3, r3, #1
 80003aa:	60fb      	str	r3, [r7, #12]
 80003ac:	693b      	ldr	r3, [r7, #16]
 80003ae:	f103 0301 	add.w	r3, r3, #1
 80003b2:	613b      	str	r3, [r7, #16]
 80003b4:	68bb      	ldr	r3, [r7, #8]
 80003b6:	f103 0301 	add.w	r3, r3, #1
 80003ba:	60bb      	str	r3, [r7, #8]
 80003bc:	68ba      	ldr	r2, [r7, #8]
 80003be:	687b      	ldr	r3, [r7, #4]
 80003c0:	429a      	cmp	r2, r3
 80003c2:	d3eb      	bcc.n	800039c <reset_handler+0x54>
 80003c4:	f04f 0300 	mov.w	r3, #0
 80003c8:	60bb      	str	r3, [r7, #8]
 80003ca:	e00b      	b.n	80003e4 <reset_handler+0x9c>
 80003cc:	697b      	ldr	r3, [r7, #20]
 80003ce:	f04f 0200 	mov.w	r2, #0
 80003d2:	701a      	strb	r2, [r3, #0]
 80003d4:	697b      	ldr	r3, [r7, #20]
 80003d6:	f103 0301 	add.w	r3, r3, #1
 80003da:	617b      	str	r3, [r7, #20]
 80003dc:	68bb      	ldr	r3, [r7, #8]
 80003de:	f103 0301 	add.w	r3, r3, #1
 80003e2:	60bb      	str	r3, [r7, #8]
 80003e4:	68ba      	ldr	r2, [r7, #8]
 80003e6:	683b      	ldr	r3, [r7, #0]
 80003e8:	429a      	cmp	r2, r3
 80003ea:	d3ef      	bcc.n	80003cc <reset_handler+0x84>
 80003ec:	f7ff ff48 	bl	8000280 <main>
 80003f0:	f107 0718 	add.w	r7, r7, #24
 80003f4:	46bd      	mov	sp, r7
 80003f6:	bd80      	pop	{r7, pc}

Disassembly of section .data:

20000000 <S_vdata>:
20000000:	00000014 	andeq	r0, r0, r4, lsl r0

Disassembly of section .bss:

20000004 <S_bss>:
20000004:	00000000 	andeq	r0, r0, r0

20000008 <pressure_val>:
20000008:	00000000 	andeq	r0, r0, r0

2000000c <E_bss>:
2000000c:	00000000 	andeq	r0, r0, r0

20000010 <am_state_id>:
20000010:	00000000 	andeq	r0, r0, r0

20000014 <alg_state_id>:
20000014:	00000000 	andeq	r0, r0, r0

20000018 <alg_state>:
20000018:	00000000 	andeq	r0, r0, r0

2000001c <ps_state>:
2000001c:	00000000 	andeq	r0, r0, r0

20000020 <ps_state_id>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000000b5 	strheq	r0, [r0], -r5
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000000e 	andeq	r0, r0, lr
  10:	00003d01 	andeq	r3, r0, r1, lsl #26
  14:	00005c00 	andeq	r5, r0, r0, lsl #24
  18:	00002000 	andeq	r2, r0, r0
  1c:	00004a08 	andeq	r4, r0, r8, lsl #20
  20:	00000008 	andeq	r0, r0, r8
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000050 	andeq	r0, r0, r0, asr r0
  2c:	4e080102 	adfmie	f0, f0, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	010d0502 	tsteq	sp, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	0000ef07 	andeq	lr, r0, r7, lsl #30
  40:	05040200 	streq	r0, [r4, #-512]	; 0x200
  44:	00000005 	andeq	r0, r0, r5
  48:	2b070402 	blcs	1c1058 <vectors-0x7e3efa8>
  4c:	02000000 	andeq	r0, r0, #0
  50:	00000508 	andeq	r0, r0, r8, lsl #10
  54:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  58:	00002607 	andeq	r2, r0, r7, lsl #12
  5c:	05040300 	streq	r0, [r4, #-768]	; 0x300
  60:	00746e69 	rsbseq	r6, r4, r9, ror #28
  64:	30070402 	andcc	r0, r7, r2, lsl #8
  68:	02000000 	andeq	r0, r0, #0
  6c:	01250704 	teqeq	r5, r4, lsl #14
  70:	01020000 	mrseq	r0, (UNDEF: 2)
  74:	00005708 	andeq	r5, r0, r8, lsl #14
  78:	17010400 	strne	r0, [r1, -r0, lsl #8]
  7c:	01000001 	tsteq	r0, r1
  80:	00002003 	andeq	r2, r0, r3
  84:	00002a08 	andeq	r2, r0, r8, lsl #20
  88:	00000008 	andeq	r0, r0, r8
  8c:	01050100 	mrseq	r0, (UNDEF: 21)
  90:	0000001a 	andeq	r0, r0, sl, lsl r0
  94:	002c0601 	eoreq	r0, ip, r1, lsl #12
  98:	003a0800 	eorseq	r0, sl, r0, lsl #16
  9c:	002c0800 	eoreq	r0, ip, r0, lsl #16
  a0:	05010000 	streq	r0, [r1, #-0]
  a4:	00010201 	andeq	r0, r1, r1, lsl #4
  a8:	3c0b0100 	stfccs	f0, [fp], {-0}
  ac:	4a080000 	bmi	2000b4 <vectors-0x7dfff4c>
  b0:	58080000 	stmdapl	r8, {}	; <UNPREDICTABLE>
  b4:	01000000 	mrseq	r0, (UNDEF: 0)
  b8:	00011a00 	andeq	r1, r1, r0, lsl #20
  bc:	56000200 	strpl	r0, [r0], -r0, lsl #4
  c0:	04000000 	streq	r0, [r0], #-0
  c4:	00000e01 	andeq	r0, r0, r1, lsl #28
  c8:	013b0100 	teqeq	fp, r0, lsl #2
  cc:	005c0000 	subseq	r0, ip, r0
  d0:	004c0000 	subeq	r0, ip, r0
  d4:	00da0800 	sbcseq	r0, sl, r0, lsl #16
  d8:	00450800 	subeq	r0, r5, r0, lsl #16
  dc:	01020000 	mrseq	r0, (UNDEF: 2)
  e0:	00005006 	andeq	r5, r0, r6
  e4:	08010200 	stmdaeq	r1, {r9}
  e8:	0000004e 	andeq	r0, r0, lr, asr #32
  ec:	0d050202 	sfmeq	f0, 4, [r5, #-8]
  f0:	02000001 	andeq	r0, r0, #1
  f4:	00ef0702 	rsceq	r0, pc, r2, lsl #14
  f8:	04020000 	streq	r0, [r2], #-0
  fc:	00000505 	andeq	r0, r0, r5, lsl #10
 100:	07040200 	streq	r0, [r4, -r0, lsl #4]
 104:	0000002b 	andeq	r0, r0, fp, lsr #32
 108:	00050802 	andeq	r0, r5, r2, lsl #16
 10c:	02000000 	andeq	r0, r0, #0
 110:	00260708 	eoreq	r0, r6, r8, lsl #14
 114:	04030000 	streq	r0, [r3], #-0
 118:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
 11c:	07040200 	streq	r0, [r4, -r0, lsl #4]
 120:	00000030 	andeq	r0, r0, r0, lsr r0
 124:	25070402 	strcs	r0, [r7, #-1026]	; 0x402
 128:	02000001 	andeq	r0, r0, #1
 12c:	00570801 	subseq	r0, r7, r1, lsl #16
 130:	4b040000 	blmi	100138 <vectors-0x7effec8>
 134:	01000001 	tsteq	r0, r1
 138:	00980501 	addseq	r0, r8, r1, lsl #10
 13c:	71050000 	mrsvc	r0, (UNDEF: 5)
 140:	00000001 	andeq	r0, r0, r1
 144:	00013105 	andeq	r3, r1, r5, lsl #2
 148:	7f050100 	svcvc	0x00050100
 14c:	02000001 	andeq	r0, r0, #1
 150:	57010600 	strpl	r0, [r1, -r0, lsl #12]
 154:	01000001 	tsteq	r0, r1
 158:	00004c0b 	andeq	r4, r0, fp, lsl #24
 15c:	00006808 	andeq	r6, r0, r8, lsl #16
 160:	00008408 	andeq	r8, r0, r8, lsl #8
 164:	01070100 	mrseq	r0, (UNDEF: 23)
 168:	0000016e 	andeq	r0, r0, lr, ror #2
 16c:	00680f01 	rsbeq	r0, r8, r1, lsl #30
 170:	00960800 	addseq	r0, r6, r0, lsl #16
 174:	00b00800 	adcseq	r0, r0, r0, lsl #16
 178:	07010000 	streq	r0, [r1, -r0]
 17c:	00012e01 	andeq	r2, r1, r1, lsl #28
 180:	98150100 	ldmdals	r5, {r8}
 184:	b0080000 	andlt	r0, r8, r0
 188:	dc080000 	stcle	0, cr0, [r8], {-0}
 18c:	01000000 	mrseq	r0, (UNDEF: 0)
 190:	017c0107 	cmneq	ip, r7, lsl #2
 194:	1c010000 	stcne	0, cr0, [r1], {-0}
 198:	080000b0 	stmdaeq	r0, {r4, r5, r7}
 19c:	080000da 	stmdaeq	r0, {r1, r3, r4, r6, r7}
 1a0:	00000108 	andeq	r0, r0, r8, lsl #2
 1a4:	00f30801 	rscseq	r0, r3, r1, lsl #16
 1a8:	00090000 	andeq	r0, r9, r0
 1ac:	0001880a 	andeq	r8, r1, sl, lsl #16
 1b0:	05040100 	streq	r0, [r4, #-256]	; 0x100
 1b4:	01000001 	tsteq	r0, r1
 1b8:	000c0305 	andeq	r0, ip, r5, lsl #6
 1bc:	040b2000 	streq	r2, [fp], #-0
 1c0:	000000ec 	andeq	r0, r0, ip, ror #1
 1c4:	00014b0a 	andeq	r4, r1, sl, lsl #22
 1c8:	79090100 	stmdbvc	r9, {r8}
 1cc:	01000000 	mrseq	r0, (UNDEF: 0)
 1d0:	00100305 	andseq	r0, r0, r5, lsl #6
 1d4:	27002000 	strcs	r2, [r0, -r0]
 1d8:	02000001 	andeq	r0, r0, #1
 1dc:	0000ea00 	andeq	lr, r0, r0, lsl #20
 1e0:	0e010400 	cfcpyseq	mvf0, mvf1
 1e4:	01000000 	mrseq	r0, (UNDEF: 0)
 1e8:	000001ac 	andeq	r0, r0, ip, lsr #3
 1ec:	0000005c 	andeq	r0, r0, ip, asr r0
 1f0:	080000dc 	stmdaeq	r0, {r2, r3, r4, r6, r7}
 1f4:	0800012c 	stmdaeq	r0, {r2, r3, r5, r8}
 1f8:	00000094 	muleq	r0, r4, r0
 1fc:	50060102 	andpl	r0, r6, r2, lsl #2
 200:	02000000 	andeq	r0, r0, #0
 204:	004e0801 	subeq	r0, lr, r1, lsl #16
 208:	02020000 	andeq	r0, r2, #0
 20c:	00010d05 	andeq	r0, r1, r5, lsl #26
 210:	07020200 	streq	r0, [r2, -r0, lsl #4]
 214:	000000ef 	andeq	r0, r0, pc, ror #1
 218:	05050402 	streq	r0, [r5, #-1026]	; 0x402
 21c:	03000000 	movweq	r0, #0
 220:	000001e2 	andeq	r0, r0, r2, ror #3
 224:	00535002 	subseq	r5, r3, r2
 228:	04020000 	streq	r0, [r2], #-0
 22c:	00002b07 	andeq	r2, r0, r7, lsl #22
 230:	05080200 	streq	r0, [r8, #-512]	; 0x200
 234:	00000000 	andeq	r0, r0, r0
 238:	26070802 	strcs	r0, [r7], -r2, lsl #16
 23c:	04000000 	streq	r0, [r0], #-0
 240:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 244:	04020074 	streq	r0, [r2], #-116	; 0x74
 248:	00003007 	andeq	r3, r0, r7
 24c:	07040200 	streq	r0, [r4, -r0, lsl #4]
 250:	00000125 	andeq	r0, r0, r5, lsr #2
 254:	57080102 	strpl	r0, [r8, -r2, lsl #2]
 258:	05000000 	streq	r0, [r0, #-0]
 25c:	00000191 	muleq	r0, r1, r1
 260:	97100101 	ldrls	r0, [r0, -r1, lsl #2]
 264:	06000000 	streq	r0, [r0], -r0
 268:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
 26c:	01070000 	mrseq	r0, (UNDEF: 7)
 270:	000001d1 	ldrdeq	r0, [r0], -r1
 274:	dc010801 	stcle	8, cr0, [r1], {1}
 278:	fa080000 	blx	200280 <vectors-0x7dffd80>
 27c:	34080000 	strcc	r0, [r8], #-0
 280:	01000001 	tsteq	r0, r1
 284:	000000c0 	andeq	r0, r0, r0, asr #1
 288:	6c617608 	stclvs	6, cr7, [r1], #-32	; 0xffffffe0
 28c:	48080100 	stmdami	r8, {r8}
 290:	02000000 	andeq	r0, r0, #0
 294:	09007491 	stmdbeq	r0, {r0, r4, r7, sl, ip, sp, lr}
 298:	0001b901 	andeq	fp, r1, r1, lsl #18
 29c:	fc180100 	ldc2	1, cr0, [r8], {-0}
 2a0:	2c080000 	stccs	0, cr0, [r8], {-0}
 2a4:	6c080001 	stcvs	0, cr0, [r8], {1}
 2a8:	01000001 	tsteq	r0, r1
 2ac:	0000dc0a 	andeq	sp, r0, sl, lsl #24
 2b0:	0c000b00 	stceq	11, cr0, [r0], {-0}
 2b4:	000001eb 	andeq	r0, r0, fp, ror #3
 2b8:	00ee0601 	rsceq	r0, lr, r1, lsl #12
 2bc:	05010000 	streq	r0, [r1, #-0]
 2c0:	00001803 	andeq	r1, r0, r3, lsl #16
 2c4:	d5040d20 	strle	r0, [r4, #-3360]	; 0xd20
 2c8:	0c000000 	stceq	0, cr0, [r0], {-0}
 2cc:	0000019e 	muleq	r0, lr, r1
 2d0:	00480401 	subeq	r0, r8, r1, lsl #8
 2d4:	05010000 	streq	r0, [r1, #-0]
 2d8:	00000403 	andeq	r0, r0, r3, lsl #8
 2dc:	01f50c20 	mvnseq	r0, r0, lsr #24
 2e0:	05010000 	streq	r0, [r1, #-0]
 2e4:	00000048 	andeq	r0, r0, r8, asr #32
 2e8:	00030501 	andeq	r0, r3, r1, lsl #10
 2ec:	0c200000 	stceq	0, cr0, [r0], #-0
 2f0:	00000191 	muleq	r0, r1, r1
 2f4:	00841301 	addeq	r1, r4, r1, lsl #6
 2f8:	05010000 	streq	r0, [r1, #-0]
 2fc:	00001403 	andeq	r1, r0, r3, lsl #8
 300:	00ff0020 	rscseq	r0, pc, r0, lsr #32
 304:	00020000 	andeq	r0, r2, r0
 308:	0000019e 	muleq	r0, lr, r1
 30c:	000e0104 	andeq	r0, lr, r4, lsl #2
 310:	06010000 	streq	r0, [r1], -r0
 314:	5c000002 	stcpl	0, cr0, [r0], {2}
 318:	2c000000 	stccs	0, cr0, [r0], {-0}
 31c:	36080001 	strcc	r0, [r8], -r1
 320:	1c080002 	stcne	0, cr0, [r8], {2}
 324:	02000001 	andeq	r0, r0, #1
 328:	00500601 	subseq	r0, r0, r1, lsl #12
 32c:	01020000 	mrseq	r0, (UNDEF: 2)
 330:	00004e08 	andeq	r4, r0, r8, lsl #28
 334:	05020200 	streq	r0, [r2, #-512]	; 0x200
 338:	0000010d 	andeq	r0, r0, sp, lsl #2
 33c:	ef070202 	svc	0x00070202
 340:	02000000 	andeq	r0, r0, #0
 344:	00050504 	andeq	r0, r5, r4, lsl #10
 348:	e2030000 	and	r0, r3, #0
 34c:	02000001 	andeq	r0, r0, #1
 350:	00005350 	andeq	r5, r0, r0, asr r3
 354:	07040200 	streq	r0, [r4, -r0, lsl #4]
 358:	0000002b 	andeq	r0, r0, fp, lsr #32
 35c:	00050802 	andeq	r0, r5, r2, lsl #16
 360:	02000000 	andeq	r0, r0, #0
 364:	00260708 	eoreq	r0, r6, r8, lsl #14
 368:	04040000 	streq	r0, [r4], #-0
 36c:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
 370:	07040200 	streq	r0, [r4, -r0, lsl #4]
 374:	00000030 	andeq	r0, r0, r0, lsr r0
 378:	25070402 	strcs	r0, [r7, #-1026]	; 0x402
 37c:	02000001 	andeq	r0, r0, #1
 380:	00570801 	subseq	r0, r7, r1, lsl #16
 384:	01050000 	mrseq	r0, (UNDEF: 5)
 388:	00000236 	andeq	r0, r0, r6, lsr r2
 38c:	2c010401 	cfstrscs	mvf0, [r1], {1}
 390:	4e080001 	cdpmi	0, 0, cr0, cr8, cr1, {0}
 394:	98080001 	stmdals	r8, {r0}
 398:	01000001 	tsteq	r0, r1
 39c:	000000ad 	andeq	r0, r0, sp, lsr #1
 3a0:	0001ff06 	andeq	pc, r1, r6, lsl #30
 3a4:	68040100 	stmdavs	r4, {r8}
 3a8:	02000000 	andeq	r0, r0, #0
 3ac:	07007491 			; <UNDEFINED> instruction: 0x07007491
 3b0:	00023c01 	andeq	r3, r2, r1, lsl #24
 3b4:	68090100 	stmdavs	r9, {r8}
 3b8:	50000000 	andpl	r0, r0, r0
 3bc:	68080001 	stmdavs	r8, {r0}
 3c0:	d0080001 	andle	r0, r8, r1
 3c4:	01000001 	tsteq	r0, r1
 3c8:	02230105 	eoreq	r0, r3, #1073741825	; 0x40000001
 3cc:	0d010000 	stceq	0, cr0, [r1, #-0]
 3d0:	00016801 	andeq	r6, r1, r1, lsl #16
 3d4:	0001b808 	andeq	fp, r1, r8, lsl #16
 3d8:	0001fc08 	andeq	pc, r1, r8, lsl #24
 3dc:	00ed0100 	rsceq	r0, sp, r0, lsl #2
 3e0:	69080000 	stmdbvs	r8, {}	; <UNPREDICTABLE>
 3e4:	680d0100 	stmdavs	sp, {r8}
 3e8:	02000000 	andeq	r0, r0, #0
 3ec:	09007491 	stmdbeq	r0, {r0, r4, r7, sl, ip, sp, lr}
 3f0:	00020f01 	andeq	r0, r2, r1, lsl #30
 3f4:	b8160100 	ldmdalt	r6, {r8}
 3f8:	36080001 	strcc	r0, [r8], -r1
 3fc:	34080002 	strcc	r0, [r8], #-2
 400:	01000002 	tsteq	r0, r2
 404:	0000d400 	andeq	sp, r0, r0, lsl #8
 408:	3b000200 	blcc	c10 <vectors-0x7fff3f0>
 40c:	04000002 	streq	r0, [r0], #-2
 410:	00000e01 	andeq	r0, r0, r1, lsl #28
 414:	024b0100 	subeq	r0, fp, #0, 2
 418:	005c0000 	subseq	r0, ip, r0
 41c:	02380000 	eorseq	r0, r8, #0
 420:	02b60800 	adcseq	r0, r6, #0, 16
 424:	01b50800 			; <UNDEFINED> instruction: 0x01b50800
 428:	01020000 	mrseq	r0, (UNDEF: 2)
 42c:	00005006 	andeq	r5, r0, r6
 430:	08010200 	stmdaeq	r1, {r9}
 434:	0000004e 	andeq	r0, r0, lr, asr #32
 438:	0d050202 	sfmeq	f0, 4, [r5, #-8]
 43c:	02000001 	andeq	r0, r0, #1
 440:	00ef0702 	rsceq	r0, pc, r2, lsl #14
 444:	04020000 	streq	r0, [r2], #-0
 448:	00000505 	andeq	r0, r0, r5, lsl #10
 44c:	07040200 	streq	r0, [r4, -r0, lsl #4]
 450:	0000002b 	andeq	r0, r0, fp, lsr #32
 454:	00050802 	andeq	r0, r5, r2, lsl #16
 458:	02000000 	andeq	r0, r0, #0
 45c:	00260708 	eoreq	r0, r6, r8, lsl #14
 460:	04030000 	streq	r0, [r3], #-0
 464:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
 468:	07040200 	streq	r0, [r4, -r0, lsl #4]
 46c:	00000030 	andeq	r0, r0, r0, lsr r0
 470:	25070402 	strcs	r0, [r7, #-1026]	; 0x402
 474:	02000001 	andeq	r0, r0, #1
 478:	00570801 	subseq	r0, r7, r1, lsl #16
 47c:	01040000 	mrseq	r0, (UNDEF: 4)
 480:	00000120 	andeq	r0, r0, r0, lsr #2
 484:	02380701 	eorseq	r0, r8, #262144	; 0x40000
 488:	02800800 	addeq	r0, r0, #0, 16
 48c:	02600800 	rsbeq	r0, r0, #0, 16
 490:	04010000 	streq	r0, [r1], #-0
 494:	00025201 	andeq	r5, r2, r1, lsl #4
 498:	80110100 	andshi	r0, r1, r0, lsl #2
 49c:	b6080002 	strlt	r0, [r8], -r2
 4a0:	8c080002 	stchi	0, cr0, [r8], {2}
 4a4:	01000002 	tsteq	r0, r2
 4a8:	0000aa05 	andeq	sl, r0, r5, lsl #20
 4ac:	07000600 	streq	r0, [r0, -r0, lsl #12]
 4b0:	00000257 	andeq	r0, r0, r7, asr r2
 4b4:	00b70602 	adcseq	r0, r7, r2, lsl #12
 4b8:	01010000 	mrseq	r0, (UNDEF: 1)
 4bc:	00a30408 	adceq	r0, r3, r8, lsl #8
 4c0:	88070000 	stmdahi	r7, {}	; <UNPREDICTABLE>
 4c4:	03000001 	movweq	r0, #1
 4c8:	0000b705 	andeq	fp, r0, r5, lsl #14
 4cc:	07010100 	streq	r0, [r1, -r0, lsl #2]
 4d0:	000001eb 	andeq	r0, r0, fp, ror #3
 4d4:	00b70304 	adcseq	r0, r7, r4, lsl #6
 4d8:	01010000 	mrseq	r0, (UNDEF: 1)
 4dc:	00011c00 	andeq	r1, r1, r0, lsl #24
 4e0:	a1000200 	mrsge	r0, R8_usr
 4e4:	04000002 	streq	r0, [r0], #-2
 4e8:	00000e01 	andeq	r0, r0, r1, lsl #28
 4ec:	027a0100 	rsbseq	r0, sl, #0, 2
 4f0:	005c0000 	subseq	r0, ip, r0
 4f4:	02b80000 	adcseq	r0, r8, #0
 4f8:	033c0800 	teqeq	ip, #0, 16
 4fc:	02430800 	subeq	r0, r3, #0, 16
 500:	01020000 	mrseq	r0, (UNDEF: 2)
 504:	00005006 	andeq	r5, r0, r6
 508:	08010200 	stmdaeq	r1, {r9}
 50c:	0000004e 	andeq	r0, r0, lr, asr #32
 510:	0d050202 	sfmeq	f0, 4, [r5, #-8]
 514:	02000001 	andeq	r0, r0, #1
 518:	00ef0702 	rsceq	r0, pc, r2, lsl #14
 51c:	04020000 	streq	r0, [r2], #-0
 520:	00000505 	andeq	r0, r0, r5, lsl #10
 524:	01e20300 	mvneq	r0, r0, lsl #6
 528:	50020000 	andpl	r0, r2, r0
 52c:	00000053 	andeq	r0, r0, r3, asr r0
 530:	2b070402 	blcs	1c1540 <vectors-0x7e3eac0>
 534:	02000000 	andeq	r0, r0, #0
 538:	00000508 	andeq	r0, r0, r8, lsl #10
 53c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 540:	00002607 	andeq	r2, r0, r7, lsl #12
 544:	05040400 	streq	r0, [r4, #-1024]	; 0x400
 548:	00746e69 	rsbseq	r6, r4, r9, ror #28
 54c:	30070402 	andcc	r0, r7, r2, lsl #8
 550:	02000000 	andeq	r0, r0, #0
 554:	01250704 	teqeq	r5, r4, lsl #14
 558:	01020000 	mrseq	r0, (UNDEF: 2)
 55c:	00005708 	andeq	r5, r0, r8, lsl #14
 560:	026e0500 	rsbeq	r0, lr, #0, 10
 564:	01010000 	mrseq	r0, (UNDEF: 1)
 568:	00009d06 	andeq	r9, r0, r6, lsl #26
 56c:	02970600 	addseq	r0, r7, #0, 12
 570:	06000000 	streq	r0, [r0], -r0
 574:	00000263 	andeq	r0, r0, r3, ror #4
 578:	01070001 	tsteq	r7, r1
 57c:	0000028c 	andeq	r0, r0, ip, lsl #5
 580:	02b80c01 	adcseq	r0, r8, #256	; 0x100
 584:	02c20800 	sbceq	r0, r2, #0, 16
 588:	02b80800 	adcseq	r0, r8, #0, 16
 58c:	08010000 	stmdaeq	r1, {}	; <UNPREDICTABLE>
 590:	00026001 	andeq	r6, r2, r1
 594:	c40f0100 	strgt	r0, [pc], #-256	; 59c <vectors-0x7fffa64>
 598:	f2080002 	vhadd.s8	d0, d8, d2
 59c:	e4080002 	str	r0, [r8], #-2
 5a0:	01000002 	tsteq	r0, r2
 5a4:	02940108 	addseq	r0, r4, #8, 2
 5a8:	16010000 	strne	r0, [r1], -r0
 5ac:	080002f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r9}
 5b0:	0800033c 	stmdaeq	r0, {r2, r3, r4, r5, r8, r9}
 5b4:	00000310 	andeq	r0, r0, r0, lsl r3
 5b8:	00e30901 	rsceq	r0, r3, r1, lsl #18
 5bc:	000a0000 	andeq	r0, sl, r0
 5c0:	0002570b 	andeq	r5, r2, fp, lsl #14
 5c4:	f5050100 			; <UNDEFINED> instruction: 0xf5050100
 5c8:	01000000 	mrseq	r0, (UNDEF: 0)
 5cc:	001c0305 	andseq	r0, ip, r5, lsl #6
 5d0:	040c2000 	streq	r2, [ip], #-0
 5d4:	000000dc 	ldrdeq	r0, [r0], -ip
 5d8:	0001d50b 	andeq	sp, r1, fp, lsl #10
 5dc:	48040100 	stmdami	r4, {r8}
 5e0:	01000000 	mrseq	r0, (UNDEF: 0)
 5e4:	00080305 	andeq	r0, r8, r5, lsl #6
 5e8:	6e0b2000 	cdpvs	0, 0, cr2, cr11, cr0, {0}
 5ec:	01000002 	tsteq	r0, r2
 5f0:	0000840b 	andeq	r8, r0, fp, lsl #8
 5f4:	03050100 	movweq	r0, #20736	; 0x5100
 5f8:	20000020 	andcs	r0, r0, r0, lsr #32
 5fc:	00018900 	andeq	r8, r1, r0, lsl #18
 600:	42000200 	andmi	r0, r0, #0, 4
 604:	04000003 	streq	r0, [r0], #-3
 608:	00000e01 	andeq	r0, r0, r1, lsl #28
 60c:	02a20100 	adceq	r0, r2, #0, 2
 610:	005c0000 	subseq	r0, ip, r0
 614:	033c0000 	teqeq	ip, #0
 618:	03f80800 	mvnseq	r0, #0, 16
 61c:	02d50800 	sbcseq	r0, r5, #0, 16
 620:	01020000 	mrseq	r0, (UNDEF: 2)
 624:	00005006 	andeq	r5, r0, r6
 628:	03010300 	movweq	r0, #4864	; 0x1300
 62c:	2a020000 	bcs	80634 <vectors-0x7f7f9cc>
 630:	00000037 	andeq	r0, r0, r7, lsr r0
 634:	4e080102 	adfmie	f0, f0, f2
 638:	02000000 	andeq	r0, r0, #0
 63c:	010d0502 	tsteq	sp, r2, lsl #10
 640:	02020000 	andeq	r0, r2, #0
 644:	0000ef07 	andeq	lr, r0, r7, lsl #30
 648:	05040200 	streq	r0, [r4, #-512]	; 0x200
 64c:	00000005 	andeq	r0, r0, r5
 650:	0001e203 	andeq	lr, r1, r3, lsl #4
 654:	5e500200 	cdppl	2, 5, cr0, cr0, cr0, {0}
 658:	02000000 	andeq	r0, r0, #0
 65c:	002b0704 	eoreq	r0, fp, r4, lsl #14
 660:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 664:	00000005 	andeq	r0, r0, r5
 668:	07080200 	streq	r0, [r8, -r0, lsl #4]
 66c:	00000026 	andeq	r0, r0, r6, lsr #32
 670:	69050404 	stmdbvs	r5, {r2, sl}
 674:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
 678:	00300704 	eorseq	r0, r0, r4, lsl #14
 67c:	01050000 	mrseq	r0, (UNDEF: 5)
 680:	000002b6 			; <UNDEFINED> instruction: 0x000002b6
 684:	033c1201 	teqeq	ip, #268435456	; 0x10000000
 688:	03460800 	movteq	r0, #26624	; 0x6800
 68c:	033c0800 	teqeq	ip, #0, 16
 690:	06010000 	streq	r0, [r1], -r0
 694:	00031201 	andeq	r1, r3, r1, lsl #4
 698:	48240100 	stmdami	r4!, {r8}
 69c:	f8080003 			; <UNDEFINED> instruction: 0xf8080003
 6a0:	68080003 	stmdavs	r8, {r0, r1}
 6a4:	01000003 	tsteq	r0, r3
 6a8:	00000102 	andeq	r0, r0, r2, lsl #2
 6ac:	0002cf07 	andeq	ip, r2, r7, lsl #30
 6b0:	02260100 	eoreq	r0, r6, #0, 2
 6b4:	02000001 	andeq	r0, r0, #1
 6b8:	e9077491 	stmdb	r7, {r0, r4, r7, sl, ip, sp, lr}
 6bc:	01000002 	tsteq	r0, r2
 6c0:	00010227 	andeq	r0, r1, r7, lsr #4
 6c4:	70910200 	addsvc	r0, r1, r0, lsl #4
 6c8:	0002d707 	andeq	sp, r2, r7, lsl #14
 6cc:	02280100 	eoreq	r0, r8, #0, 2
 6d0:	02000001 	andeq	r0, r0, #1
 6d4:	ac076c91 	stcge	12, cr6, [r7], {145}	; 0x91
 6d8:	01000002 	tsteq	r0, r2
 6dc:	00005329 	andeq	r5, r0, r9, lsr #6
 6e0:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 6e4:	01006908 	tsteq	r0, r8, lsl #18
 6e8:	00005329 	andeq	r5, r0, r9, lsr #6
 6ec:	68910200 	ldmvs	r1, {r9}
 6f0:	00030907 	andeq	r0, r3, r7, lsl #18
 6f4:	532a0100 	teqpl	sl, #0, 2
 6f8:	02000000 	andeq	r0, r0, #0
 6fc:	09006091 	stmdbeq	r0, {r0, r4, r7, sp, lr}
 700:	00002c04 	andeq	r2, r0, r4, lsl #24
 704:	03200a00 	teqeq	r0, #0, 20
 708:	02010000 	andeq	r0, r1, #0
 70c:	00000053 	andeq	r0, r0, r3, asr r0
 710:	e10a0101 	tst	sl, r1, lsl #2
 714:	01000002 	tsteq	r0, r2
 718:	00005303 	andeq	r5, r0, r3, lsl #6
 71c:	0a010100 	beq	40b24 <vectors-0x7fbf4dc>
 720:	0000032e 	andeq	r0, r0, lr, lsr #6
 724:	00530401 	subseq	r0, r3, r1, lsl #8
 728:	01010000 	mrseq	r0, (UNDEF: 1)
 72c:	0003280a 	andeq	r2, r3, sl, lsl #16
 730:	53050100 	movwpl	r0, #20736	; 0x5100
 734:	01000000 	mrseq	r0, (UNDEF: 0)
 738:	02fb0a01 	rscseq	r0, fp, #4096	; 0x1000
 73c:	06010000 	streq	r0, [r1], -r0
 740:	00000053 	andeq	r0, r0, r3, asr r0
 744:	c50a0101 	strgt	r0, [sl, #-257]	; 0x101
 748:	01000002 	tsteq	r0, r2
 74c:	00005307 	andeq	r5, r0, r7, lsl #6
 750:	0b010100 	bleq	40b58 <vectors-0x7fbf4a8>
 754:	00000174 	andeq	r0, r0, r4, ror r1
 758:	00000166 	andeq	r0, r0, r6, ror #2
 75c:	0001660c 	andeq	r6, r1, ip, lsl #12
 760:	02000700 	andeq	r0, r0, #0, 14
 764:	01250704 	teqeq	r5, r4, lsl #14
 768:	740d0000 	strvc	r0, [sp], #-0
 76c:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
 770:	6d040900 	stcvs	9, cr0, [r4, #-0]
 774:	0f000001 	svceq	0x00000001
 778:	000002f3 	strdeq	r0, [r0], -r3
 77c:	01561701 	cmpeq	r6, r1, lsl #14
 780:	05010000 	streq	r0, [r1, #-0]
 784:	00000003 	andeq	r0, r0, r3
 788:	Address 0x00000788 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	002e0400 	eoreq	r0, lr, r0, lsl #8
  2c:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
  30:	0b3b0b3a 	bleq	ec2d20 <vectors-0x713d2e0>
  34:	01120111 	tsteq	r2, r1, lsl r1
  38:	42970640 	addsmi	r0, r7, #64, 12	; 0x4000000
  3c:	0500000c 	streq	r0, [r0, #-12]
  40:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; ffffff90 <stack_top+0xdffffb87>
  44:	0b3a0e03 	bleq	e83858 <vectors-0x717c7a8>
  48:	01110b3b 	tsteq	r1, fp, lsr fp
  4c:	06400112 			; <UNDEFINED> instruction: 0x06400112
  50:	000c4296 	muleq	ip, r6, r2
  54:	11010000 	mrsne	r0, (UNDEF: 1)
  58:	130e2501 	movwne	r2, #58625	; 0xe501
  5c:	1b0e030b 	blne	380c90 <vectors-0x7c7f370>
  60:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
  64:	00061001 	andeq	r1, r6, r1
  68:	00240200 	eoreq	r0, r4, r0, lsl #4
  6c:	0b3e0b0b 	bleq	f82ca0 <vectors-0x707d360>
  70:	00000e03 	andeq	r0, r0, r3, lsl #28
  74:	0b002403 	bleq	9088 <vectors-0x7ff6f78>
  78:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
  7c:	04000008 	streq	r0, [r0], #-8
  80:	0e030104 	adfeqs	f0, f3, f4
  84:	0b3a0b0b 	bleq	e82cb8 <vectors-0x717d348>
  88:	13010b3b 	movwne	r0, #6971	; 0x1b3b
  8c:	28050000 	stmdacs	r5, {}	; <UNPREDICTABLE>
  90:	1c0e0300 	stcne	3, cr0, [lr], {-0}
  94:	0600000d 	streq	r0, [r0], -sp
  98:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; ffffffe8 <stack_top+0xdffffbdf>
  9c:	0b3a0e03 	bleq	e838b0 <vectors-0x717c750>
  a0:	01110b3b 	tsteq	r1, fp, lsr fp
  a4:	06400112 			; <UNDEFINED> instruction: 0x06400112
  a8:	000c4297 	muleq	ip, r7, r2
  ac:	002e0700 	eoreq	r0, lr, r0, lsl #14
  b0:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
  b4:	0b3b0b3a 	bleq	ec2da4 <vectors-0x713d25c>
  b8:	01120111 	tsteq	r2, r1, lsl r1
  bc:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
  c0:	0800000c 	stmdaeq	r0, {r2, r3}
  c4:	13010115 	movwne	r0, #4373	; 0x1115
  c8:	18090000 	stmdane	r9, {}	; <UNPREDICTABLE>
  cc:	0a000000 	beq	d4 <vectors-0x7ffff2c>
  d0:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  d4:	0b3b0b3a 	bleq	ec2dc4 <vectors-0x713d23c>
  d8:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; ffffffbc <stack_top+0xdffffbb3>
  dc:	00000a02 	andeq	r0, r0, r2, lsl #20
  e0:	0b000f0b 	bleq	3d14 <vectors-0x7ffc2ec>
  e4:	0013490b 	andseq	r4, r3, fp, lsl #18
  e8:	11010000 	mrsne	r0, (UNDEF: 1)
  ec:	130e2501 	movwne	r2, #58625	; 0xe501
  f0:	1b0e030b 	blne	380d24 <vectors-0x7c7f2dc>
  f4:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
  f8:	00061001 	andeq	r1, r6, r1
  fc:	00240200 	eoreq	r0, r4, r0, lsl #4
 100:	0b3e0b0b 	bleq	f82d34 <vectors-0x707d2cc>
 104:	00000e03 	andeq	r0, r0, r3, lsl #28
 108:	03001603 	movweq	r1, #1539	; 0x603
 10c:	3b0b3a0e 	blcc	2ce94c <vectors-0x7d316b4>
 110:	0013490b 	andseq	r4, r3, fp, lsl #18
 114:	00240400 	eoreq	r0, r4, r0, lsl #8
 118:	0b3e0b0b 	bleq	f82d4c <vectors-0x707d2b4>
 11c:	00000803 	andeq	r0, r0, r3, lsl #16
 120:	03010405 	movweq	r0, #5125	; 0x1405
 124:	3a0b0b0e 	bcc	2c2d64 <vectors-0x7d3d29c>
 128:	010b3b0b 	tsteq	fp, fp, lsl #22
 12c:	06000013 			; <UNDEFINED> instruction: 0x06000013
 130:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
 134:	00000d1c 	andeq	r0, r0, ip, lsl sp
 138:	3f012e07 	svccc	0x00012e07
 13c:	3a0e030c 	bcc	380d74 <vectors-0x7c7f28c>
 140:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 144:	1201110c 	andne	r1, r1, #12, 2
 148:	97064001 	strls	r4, [r6, -r1]
 14c:	13010c42 	movwne	r0, #7234	; 0x1c42
 150:	05080000 	streq	r0, [r8, #-0]
 154:	3a080300 	bcc	200d5c <vectors-0x7dff2a4>
 158:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 15c:	000a0213 	andeq	r0, sl, r3, lsl r2
 160:	002e0900 	eoreq	r0, lr, r0, lsl #18
 164:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 168:	0b3b0b3a 	bleq	ec2e58 <vectors-0x713d1a8>
 16c:	01120111 	tsteq	r2, r1, lsl r1
 170:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
 174:	0a00000c 	beq	1ac <vectors-0x7fffe54>
 178:	13010115 	movwne	r0, #4373	; 0x1115
 17c:	180b0000 	stmdane	fp, {}	; <UNPREDICTABLE>
 180:	0c000000 	stceq	0, cr0, [r0], {-0}
 184:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 188:	0b3b0b3a 	bleq	ec2e78 <vectors-0x713d188>
 18c:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; 70 <vectors-0x7ffff90>
 190:	00000a02 	andeq	r0, r0, r2, lsl #20
 194:	0b000f0d 	bleq	3dd0 <vectors-0x7ffc230>
 198:	0013490b 	andseq	r4, r3, fp, lsl #18
 19c:	11010000 	mrsne	r0, (UNDEF: 1)
 1a0:	130e2501 	movwne	r2, #58625	; 0xe501
 1a4:	1b0e030b 	blne	380dd8 <vectors-0x7c7f228>
 1a8:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 1ac:	00061001 	andeq	r1, r6, r1
 1b0:	00240200 	eoreq	r0, r4, r0, lsl #4
 1b4:	0b3e0b0b 	bleq	f82de8 <vectors-0x707d218>
 1b8:	00000e03 	andeq	r0, r0, r3, lsl #28
 1bc:	03001603 	movweq	r1, #1539	; 0x603
 1c0:	3b0b3a0e 	blcc	2cea00 <vectors-0x7d31600>
 1c4:	0013490b 	andseq	r4, r3, fp, lsl #18
 1c8:	00240400 	eoreq	r0, r4, r0, lsl #8
 1cc:	0b3e0b0b 	bleq	f82e00 <vectors-0x707d200>
 1d0:	00000803 	andeq	r0, r0, r3, lsl #16
 1d4:	3f012e05 	svccc	0x00012e05
 1d8:	3a0e030c 	bcc	380e10 <vectors-0x7c7f1f0>
 1dc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 1e0:	1201110c 	andne	r1, r1, #12, 2
 1e4:	97064001 	strls	r4, [r6, -r1]
 1e8:	13010c42 	movwne	r0, #7234	; 0x1c42
 1ec:	05060000 	streq	r0, [r6, #-0]
 1f0:	3a0e0300 	bcc	380df8 <vectors-0x7c7f208>
 1f4:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1f8:	000a0213 	andeq	r0, sl, r3, lsl r2
 1fc:	002e0700 	eoreq	r0, lr, r0, lsl #14
 200:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 204:	0b3b0b3a 	bleq	ec2ef4 <vectors-0x713d10c>
 208:	01111349 	tsteq	r1, r9, asr #6
 20c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 210:	000c4297 	muleq	ip, r7, r2
 214:	00050800 	andeq	r0, r5, r0, lsl #16
 218:	0b3a0803 	bleq	e8222c <vectors-0x717ddd4>
 21c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 220:	00000a02 	andeq	r0, r0, r2, lsl #20
 224:	3f002e09 	svccc	0x00002e09
 228:	3a0e030c 	bcc	380e60 <vectors-0x7c7f1a0>
 22c:	110b3b0b 	tstne	fp, fp, lsl #22
 230:	40011201 	andmi	r1, r1, r1, lsl #4
 234:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 238:	01000000 	mrseq	r0, (UNDEF: 0)
 23c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 240:	0e030b13 	vmoveq.32	d3[0], r0
 244:	01110e1b 	tsteq	r1, fp, lsl lr
 248:	06100112 			; <UNDEFINED> instruction: 0x06100112
 24c:	24020000 	strcs	r0, [r2], #-0
 250:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 254:	000e030b 	andeq	r0, lr, fp, lsl #6
 258:	00240300 	eoreq	r0, r4, r0, lsl #6
 25c:	0b3e0b0b 	bleq	f82e90 <vectors-0x707d170>
 260:	00000803 	andeq	r0, r0, r3, lsl #16
 264:	3f002e04 	svccc	0x00002e04
 268:	3a0e030c 	bcc	380ea0 <vectors-0x7c7f160>
 26c:	110b3b0b 	tstne	fp, fp, lsl #22
 270:	40011201 	andmi	r1, r1, r1, lsl #4
 274:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 278:	15050000 	strne	r0, [r5, #-0]
 27c:	00130101 	andseq	r0, r3, r1, lsl #2
 280:	00180600 	andseq	r0, r8, r0, lsl #12
 284:	34070000 	strcc	r0, [r7], #-0
 288:	3a0e0300 	bcc	380e90 <vectors-0x7c7f170>
 28c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 290:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 294:	0800000c 	stmdaeq	r0, {r2, r3}
 298:	0b0b000f 	bleq	2c02dc <vectors-0x7d3fd24>
 29c:	00001349 	andeq	r1, r0, r9, asr #6
 2a0:	01110100 	tsteq	r1, r0, lsl #2
 2a4:	0b130e25 	bleq	4c3b40 <vectors-0x7b3c4c0>
 2a8:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 2ac:	01120111 	tsteq	r2, r1, lsl r1
 2b0:	00000610 	andeq	r0, r0, r0, lsl r6
 2b4:	0b002402 	bleq	92c4 <vectors-0x7ff6d3c>
 2b8:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 2bc:	0300000e 	movweq	r0, #14
 2c0:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 2c4:	0b3b0b3a 	bleq	ec2fb4 <vectors-0x713d04c>
 2c8:	00001349 	andeq	r1, r0, r9, asr #6
 2cc:	0b002404 	bleq	92e4 <vectors-0x7ff6d1c>
 2d0:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 2d4:	05000008 	streq	r0, [r0, #-8]
 2d8:	0e030104 	adfeqs	f0, f3, f4
 2dc:	0b3a0b0b 	bleq	e82f10 <vectors-0x717d0f0>
 2e0:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 2e4:	28060000 	stmdacs	r6, {}	; <UNPREDICTABLE>
 2e8:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 2ec:	0700000d 	streq	r0, [r0, -sp]
 2f0:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; 240 <vectors-0x7fffdc0>
 2f4:	0b3a0e03 	bleq	e83b08 <vectors-0x717c4f8>
 2f8:	01110b3b 	tsteq	r1, fp, lsr fp
 2fc:	06400112 			; <UNDEFINED> instruction: 0x06400112
 300:	000c4297 	muleq	ip, r7, r2
 304:	002e0800 	eoreq	r0, lr, r0, lsl #16
 308:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 30c:	0b3b0b3a 	bleq	ec2ffc <vectors-0x713d004>
 310:	01120111 	tsteq	r2, r1, lsl r1
 314:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
 318:	0900000c 	stmdbeq	r0, {r2, r3}
 31c:	13010115 	movwne	r0, #4373	; 0x1115
 320:	180a0000 	stmdane	sl, {}	; <UNPREDICTABLE>
 324:	0b000000 	bleq	32c <vectors-0x7fffcd4>
 328:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 32c:	0b3b0b3a 	bleq	ec301c <vectors-0x713cfe4>
 330:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; 214 <vectors-0x7fffdec>
 334:	00000a02 	andeq	r0, r0, r2, lsl #20
 338:	0b000f0c 	bleq	3f70 <vectors-0x7ffc090>
 33c:	0013490b 	andseq	r4, r3, fp, lsl #18
 340:	11010000 	mrsne	r0, (UNDEF: 1)
 344:	130e2501 	movwne	r2, #58625	; 0xe501
 348:	1b0e030b 	blne	380f7c <vectors-0x7c7f084>
 34c:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 350:	00061001 	andeq	r1, r6, r1
 354:	00240200 	eoreq	r0, r4, r0, lsl #4
 358:	0b3e0b0b 	bleq	f82f8c <vectors-0x707d074>
 35c:	00000e03 	andeq	r0, r0, r3, lsl #28
 360:	03001603 	movweq	r1, #1539	; 0x603
 364:	3b0b3a0e 	blcc	2ceba4 <vectors-0x7d3145c>
 368:	0013490b 	andseq	r4, r3, fp, lsl #18
 36c:	00240400 	eoreq	r0, r4, r0, lsl #8
 370:	0b3e0b0b 	bleq	f82fa4 <vectors-0x707d05c>
 374:	00000803 	andeq	r0, r0, r3, lsl #16
 378:	3f002e05 	svccc	0x00002e05
 37c:	3a0e030c 	bcc	380fb4 <vectors-0x7c7f04c>
 380:	110b3b0b 	tstne	fp, fp, lsl #22
 384:	40011201 	andmi	r1, r1, r1, lsl #4
 388:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 38c:	2e060000 	cdpcs	0, 0, cr0, cr6, cr0, {0}
 390:	030c3f01 	movweq	r3, #52993	; 0xcf01
 394:	3b0b3a0e 	blcc	2cebd4 <vectors-0x7d3142c>
 398:	1201110b 	andne	r1, r1, #-1073741822	; 0xc0000002
 39c:	96064001 	strls	r4, [r6], -r1
 3a0:	13010c42 	movwne	r0, #7234	; 0x1c42
 3a4:	34070000 	strcc	r0, [r7], #-0
 3a8:	3a0e0300 	bcc	380fb0 <vectors-0x7c7f050>
 3ac:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3b0:	000a0213 	andeq	r0, sl, r3, lsl r2
 3b4:	00340800 	eorseq	r0, r4, r0, lsl #16
 3b8:	0b3a0803 	bleq	e823cc <vectors-0x717dc34>
 3bc:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 3c0:	00000a02 	andeq	r0, r0, r2, lsl #20
 3c4:	0b000f09 	bleq	3ff0 <vectors-0x7ffc010>
 3c8:	0013490b 	andseq	r4, r3, fp, lsl #18
 3cc:	00340a00 	eorseq	r0, r4, r0, lsl #20
 3d0:	0b3a0e03 	bleq	e83be4 <vectors-0x717c41c>
 3d4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 3d8:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 3dc:	010b0000 	mrseq	r0, (UNDEF: 11)
 3e0:	01134901 	tsteq	r3, r1, lsl #18
 3e4:	0c000013 	stceq	0, cr0, [r0], {19}
 3e8:	13490021 	movtne	r0, #36897	; 0x9021
 3ec:	00000b2f 	andeq	r0, r0, pc, lsr #22
 3f0:	0101150d 	tsteq	r1, sp, lsl #10
 3f4:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
 3f8:	00000018 	andeq	r0, r0, r8, lsl r0
 3fc:	0300340f 	movweq	r3, #1039	; 0x40f
 400:	3b0b3a0e 	blcc	2cec40 <vectors-0x7d313c0>
 404:	3f13490b 	svccc	0x0013490b
 408:	000a020c 	andeq	r0, sl, ip, lsl #4
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	0000000a 	andeq	r0, r0, sl
  20:	04770002 	ldrbteq	r0, [r7], #-2
	...
  2c:	0000000c 	andeq	r0, r0, ip
  30:	0000000e 	andeq	r0, r0, lr
  34:	007d0002 	rsbseq	r0, sp, r2
  38:	0000000e 	andeq	r0, r0, lr
  3c:	00000010 	andeq	r0, r0, r0, lsl r0
  40:	087d0002 	ldmdaeq	sp!, {r1}^
  44:	00000010 	andeq	r0, r0, r0, lsl r0
  48:	0000001a 	andeq	r0, r0, sl, lsl r0
  4c:	08770002 	ldmdaeq	r7!, {r1}^
	...
  58:	0000001c 	andeq	r0, r0, ip, lsl r0
  5c:	0000001e 	andeq	r0, r0, lr, lsl r0
  60:	007d0002 	rsbseq	r0, sp, r2
  64:	0000001e 	andeq	r0, r0, lr, lsl r0
  68:	00000020 	andeq	r0, r0, r0, lsr #32
  6c:	087d0002 	ldmdaeq	sp!, {r1}^
  70:	00000020 	andeq	r0, r0, r0, lsr #32
  74:	0000002a 	andeq	r0, r0, sl, lsr #32
  78:	08770002 	ldmdaeq	r7!, {r1}^
	...
  88:	00000002 	andeq	r0, r0, r2
  8c:	007d0002 	rsbseq	r0, sp, r2
  90:	00000002 	andeq	r0, r0, r2
  94:	00000004 	andeq	r0, r0, r4
  98:	047d0002 	ldrbteq	r0, [sp], #-2
  9c:	00000004 	andeq	r0, r0, r4
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	04770002 	ldrbteq	r0, [r7], #-2
	...
  b0:	0000001c 	andeq	r0, r0, ip, lsl r0
  b4:	0000001e 	andeq	r0, r0, lr, lsl r0
  b8:	007d0002 	rsbseq	r0, sp, r2
  bc:	0000001e 	andeq	r0, r0, lr, lsl r0
  c0:	00000020 	andeq	r0, r0, r0, lsr #32
  c4:	087d0002 	ldmdaeq	sp!, {r1}^
  c8:	00000020 	andeq	r0, r0, r0, lsr #32
  cc:	0000004a 	andeq	r0, r0, sl, asr #32
  d0:	08770002 	ldmdaeq	r7!, {r1}^
	...
  dc:	0000004c 	andeq	r0, r0, ip, asr #32
  e0:	0000004e 	andeq	r0, r0, lr, asr #32
  e4:	007d0002 	rsbseq	r0, sp, r2
  e8:	0000004e 	andeq	r0, r0, lr, asr #32
  ec:	00000050 	andeq	r0, r0, r0, asr r0
  f0:	087d0002 	ldmdaeq	sp!, {r1}^
  f4:	00000050 	andeq	r0, r0, r0, asr r0
  f8:	00000064 	andeq	r0, r0, r4, rrx
  fc:	08770002 	ldmdaeq	r7!, {r1}^
	...
 108:	00000064 	andeq	r0, r0, r4, rrx
 10c:	00000066 	andeq	r0, r0, r6, rrx
 110:	007d0002 	rsbseq	r0, sp, r2
 114:	00000066 	andeq	r0, r0, r6, rrx
 118:	00000068 	andeq	r0, r0, r8, rrx
 11c:	087d0002 	ldmdaeq	sp!, {r1}^
 120:	00000068 	andeq	r0, r0, r8, rrx
 124:	0000008e 	andeq	r0, r0, lr, lsl #1
 128:	08770002 	ldmdaeq	r7!, {r1}^
	...
 138:	00000002 	andeq	r0, r0, r2
 13c:	007d0002 	rsbseq	r0, sp, r2
 140:	00000002 	andeq	r0, r0, r2
 144:	00000004 	andeq	r0, r0, r4
 148:	047d0002 	ldrbteq	r0, [sp], #-2
 14c:	00000004 	andeq	r0, r0, r4
 150:	00000006 	andeq	r0, r0, r6
 154:	107d0002 	rsbsne	r0, sp, r2
 158:	00000006 	andeq	r0, r0, r6
 15c:	0000001e 	andeq	r0, r0, lr, lsl r0
 160:	10770002 	rsbsne	r0, r7, r2
	...
 16c:	00000020 	andeq	r0, r0, r0, lsr #32
 170:	00000022 	andeq	r0, r0, r2, lsr #32
 174:	007d0002 	rsbseq	r0, sp, r2
 178:	00000022 	andeq	r0, r0, r2, lsr #32
 17c:	00000024 	andeq	r0, r0, r4, lsr #32
 180:	087d0002 	ldmdaeq	sp!, {r1}^
 184:	00000024 	andeq	r0, r0, r4, lsr #32
 188:	00000050 	andeq	r0, r0, r0, asr r0
 18c:	08770002 	ldmdaeq	r7!, {r1}^
	...
 19c:	00000002 	andeq	r0, r0, r2
 1a0:	007d0002 	rsbseq	r0, sp, r2
 1a4:	00000002 	andeq	r0, r0, r2
 1a8:	00000004 	andeq	r0, r0, r4
 1ac:	047d0002 	ldrbteq	r0, [sp], #-2
 1b0:	00000004 	andeq	r0, r0, r4
 1b4:	00000006 	andeq	r0, r0, r6
 1b8:	107d0002 	rsbsne	r0, sp, r2
 1bc:	00000006 	andeq	r0, r0, r6
 1c0:	00000022 	andeq	r0, r0, r2, lsr #32
 1c4:	10770002 	rsbsne	r0, r7, r2
	...
 1d0:	00000024 	andeq	r0, r0, r4, lsr #32
 1d4:	00000026 	andeq	r0, r0, r6, lsr #32
 1d8:	007d0002 	rsbseq	r0, sp, r2
 1dc:	00000026 	andeq	r0, r0, r6, lsr #32
 1e0:	00000028 	andeq	r0, r0, r8, lsr #32
 1e4:	047d0002 	ldrbteq	r0, [sp], #-2
 1e8:	00000028 	andeq	r0, r0, r8, lsr #32
 1ec:	0000003c 	andeq	r0, r0, ip, lsr r0
 1f0:	04770002 	ldrbteq	r0, [r7], #-2
	...
 1fc:	0000003c 	andeq	r0, r0, ip, lsr r0
 200:	0000003e 	andeq	r0, r0, lr, lsr r0
 204:	007d0002 	rsbseq	r0, sp, r2
 208:	0000003e 	andeq	r0, r0, lr, lsr r0
 20c:	00000040 	andeq	r0, r0, r0, asr #32
 210:	047d0002 	ldrbteq	r0, [sp], #-2
 214:	00000040 	andeq	r0, r0, r0, asr #32
 218:	00000042 	andeq	r0, r0, r2, asr #32
 21c:	107d0002 	rsbsne	r0, sp, r2
 220:	00000042 	andeq	r0, r0, r2, asr #32
 224:	0000008c 	andeq	r0, r0, ip, lsl #1
 228:	10770002 	rsbsne	r0, r7, r2
	...
 234:	0000008c 	andeq	r0, r0, ip, lsl #1
 238:	0000008e 	andeq	r0, r0, lr, lsl #1
 23c:	007d0002 	rsbseq	r0, sp, r2
 240:	0000008e 	andeq	r0, r0, lr, lsl #1
 244:	00000090 	muleq	r0, r0, r0
 248:	047d0002 	ldrbteq	r0, [sp], #-2
 24c:	00000090 	muleq	r0, r0, r0
 250:	0000010a 	andeq	r0, r0, sl, lsl #2
 254:	04770002 	ldrbteq	r0, [r7], #-2
	...
 264:	00000002 	andeq	r0, r0, r2
 268:	007d0002 	rsbseq	r0, sp, r2
 26c:	00000002 	andeq	r0, r0, r2
 270:	00000004 	andeq	r0, r0, r4
 274:	087d0002 	ldmdaeq	sp!, {r1}^
 278:	00000004 	andeq	r0, r0, r4
 27c:	00000048 	andeq	r0, r0, r8, asr #32
 280:	08770002 	ldmdaeq	r7!, {r1}^
	...
 28c:	00000048 	andeq	r0, r0, r8, asr #32
 290:	0000004a 	andeq	r0, r0, sl, asr #32
 294:	007d0002 	rsbseq	r0, sp, r2
 298:	0000004a 	andeq	r0, r0, sl, asr #32
 29c:	0000004c 	andeq	r0, r0, ip, asr #32
 2a0:	087d0002 	ldmdaeq	sp!, {r1}^
 2a4:	0000004c 	andeq	r0, r0, ip, asr #32
 2a8:	0000007e 	andeq	r0, r0, lr, ror r0
 2ac:	08770002 	ldmdaeq	r7!, {r1}^
	...
 2bc:	00000002 	andeq	r0, r0, r2
 2c0:	007d0002 	rsbseq	r0, sp, r2
 2c4:	00000002 	andeq	r0, r0, r2
 2c8:	00000004 	andeq	r0, r0, r4
 2cc:	047d0002 	ldrbteq	r0, [sp], #-2
 2d0:	00000004 	andeq	r0, r0, r4
 2d4:	0000000a 	andeq	r0, r0, sl
 2d8:	04770002 	ldrbteq	r0, [r7], #-2
	...
 2e4:	0000000c 	andeq	r0, r0, ip
 2e8:	0000000e 	andeq	r0, r0, lr
 2ec:	007d0002 	rsbseq	r0, sp, r2
 2f0:	0000000e 	andeq	r0, r0, lr
 2f4:	00000010 	andeq	r0, r0, r0, lsl r0
 2f8:	087d0002 	ldmdaeq	sp!, {r1}^
 2fc:	00000010 	andeq	r0, r0, r0, lsl r0
 300:	0000003a 	andeq	r0, r0, sl, lsr r0
 304:	08770002 	ldmdaeq	r7!, {r1}^
	...
 310:	0000003c 	andeq	r0, r0, ip, lsr r0
 314:	0000003e 	andeq	r0, r0, lr, lsr r0
 318:	007d0002 	rsbseq	r0, sp, r2
 31c:	0000003e 	andeq	r0, r0, lr, lsr r0
 320:	00000040 	andeq	r0, r0, r0, asr #32
 324:	087d0002 	ldmdaeq	sp!, {r1}^
 328:	00000040 	andeq	r0, r0, r0, asr #32
 32c:	00000084 	andeq	r0, r0, r4, lsl #1
 330:	08770002 	ldmdaeq	r7!, {r1}^
	...
 340:	00000002 	andeq	r0, r0, r2
 344:	007d0002 	rsbseq	r0, sp, r2
 348:	00000002 	andeq	r0, r0, r2
 34c:	00000004 	andeq	r0, r0, r4
 350:	087d0002 	ldmdaeq	sp!, {r1}^
 354:	00000004 	andeq	r0, r0, r4
 358:	0000000a 	andeq	r0, r0, sl
 35c:	08770002 	ldmdaeq	r7!, {r1}^
	...
 368:	0000000c 	andeq	r0, r0, ip
 36c:	0000000e 	andeq	r0, r0, lr
 370:	007d0002 	rsbseq	r0, sp, r2
 374:	0000000e 	andeq	r0, r0, lr
 378:	00000010 	andeq	r0, r0, r0, lsl r0
 37c:	087d0002 	ldmdaeq	sp!, {r1}^
 380:	00000010 	andeq	r0, r0, r0, lsl r0
 384:	00000012 	andeq	r0, r0, r2, lsl r0
 388:	207d0002 	rsbscs	r0, sp, r2
 38c:	00000012 	andeq	r0, r0, r2, lsl r0
 390:	000000bc 	strheq	r0, [r0], -ip
 394:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000020 	stmdaeq	r0, {r5}
  14:	0000002a 	andeq	r0, r0, sl, lsr #32
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00b90002 	adcseq	r0, r9, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0800004c 	stmdaeq	r0, {r2, r3, r6}
  34:	0000008e 	andeq	r0, r0, lr, lsl #1
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	01d70002 	bicseq	r0, r7, r2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	080000dc 	stmdaeq	r0, {r2, r3, r4, r6, r7}
  54:	00000050 	andeq	r0, r0, r0, asr r0
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	03020002 	movweq	r0, #8194	; 0x2002
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	0800012c 	stmdaeq	r0, {r2, r3, r5, r8}
  74:	0000010a 	andeq	r0, r0, sl, lsl #2
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	04050002 	streq	r0, [r5], #-2
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	08000238 	stmdaeq	r0, {r3, r4, r5, r9}
  94:	0000007e 	andeq	r0, r0, lr, ror r0
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	04dd0002 	ldrbeq	r0, [sp], #2
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	080002b8 	stmdaeq	r0, {r3, r4, r5, r7, r9}
  b4:	00000084 	andeq	r0, r0, r4, lsl #1
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	05fd0002 	ldrbeq	r0, [sp, #2]!
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	0800033c 	stmdaeq	r0, {r2, r3, r4, r5, r8, r9}
  d4:	000000bc 	strheq	r0, [r0], -ip
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000041 	andeq	r0, r0, r1, asr #32
   4:	00270002 	eoreq	r0, r7, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	72616c61 	rsbvc	r6, r1, #24832	; 0x6100
  20:	63615f6d 	cmnvs	r1, #436	; 0x1b4
  24:	74617574 	strbtvc	r7, [r1], #-1396	; 0x574
  28:	632e726f 	teqvs	lr, #-268435450	; 0xf0000006
  2c:	00000000 	andeq	r0, r0, r0
  30:	02050000 	andeq	r0, r5, #0
  34:	08000020 	stmdaeq	r0, {r5}
  38:	2f4c2f15 	svccs	0x004c2f15
  3c:	4b2f314b 	blmi	bcc570 <vectors-0x7433a90>
  40:	01000102 	tsteq	r0, r2, lsl #2
  44:	00004b01 	andeq	r4, r0, r1, lsl #22
  48:	26000200 	strcs	r0, [r0], -r0, lsl #4
  4c:	02000000 	andeq	r0, r0, #0
  50:	0d0efb01 	vstreq	d15, [lr, #-4]
  54:	01010100 	mrseq	r0, (UNDEF: 17)
  58:	00000001 	andeq	r0, r0, r1
  5c:	01000001 	tsteq	r0, r1
  60:	616c6100 	cmnvs	ip, r0, lsl #2
  64:	6d5f6d72 	ldclvs	13, cr6, [pc, #-456]	; fffffea4 <stack_top+0xdffffa9b>
  68:	74696e6f 	strbtvc	r6, [r9], #-3695	; 0xe6f
  6c:	632e726f 	teqvs	lr, #-268435450	; 0xf0000006
  70:	00000000 	andeq	r0, r0, r0
  74:	02050000 	andeq	r0, r5, #0
  78:	0800004c 	stmdaeq	r0, {r2, r3, r6}
  7c:	2f010b03 	svccs	0x00010b03
  80:	752f3e91 	strvc	r3, [pc, #-3729]!	; fffff1f7 <stack_top+0xdfffedee>
  84:	2f30914b 	svccs	0x0030914b
  88:	2f242f75 	svccs	0x00242f75
  8c:	02922f75 	addseq	r2, r2, #468	; 0x1d4
  90:	01010001 	tsteq	r1, r1
  94:	00000084 	andeq	r0, r0, r4, lsl #1
  98:	00680002 	rsbeq	r0, r8, r2
  9c:	01020000 	mrseq	r0, (UNDEF: 2)
  a0:	000d0efb 	strdeq	r0, [sp], -fp
  a4:	01010101 	tsteq	r1, r1, lsl #2
  a8:	01000000 	mrseq	r0, (UNDEF: 0)
  ac:	63010000 	movwvs	r0, #4096	; 0x1000
  b0:	72612f3a 	rsbvc	r2, r1, #58, 30	; 0xe8
  b4:	6f745f6d 	svcvs	0x00745f6d
  b8:	68636c6f 	stmdavs	r3!, {r0, r1, r2, r3, r5, r6, sl, fp, sp, lr}^
  bc:	2f6e6961 	svccs	0x006e6961
  c0:	2f62696c 	svccs	0x0062696c
  c4:	2f636367 	svccs	0x00636367
  c8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
  cc:	72612f2e 	rsbvc	r2, r1, #46, 30	; 0xb8
  d0:	6f6e2d6d 	svcvs	0x006e2d6d
  d4:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
  d8:	2f696261 	svccs	0x00696261
  dc:	2d737973 	ldclcs	9, cr7, [r3, #-460]!	; 0xfffffe34
  e0:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
  e4:	00656475 	rsbeq	r6, r5, r5, ror r4
  e8:	676c6100 	strbvs	r6, [ip, -r0, lsl #2]!
  ec:	69726f68 	ldmdbvs	r2!, {r3, r5, r6, r8, r9, sl, fp, sp, lr}^
  f0:	2e6d6874 	mcrcs	8, 3, r6, cr13, cr4, {3}
  f4:	00000063 	andeq	r0, r0, r3, rrx
  f8:	64747300 	ldrbtvs	r7, [r4], #-768	; 0x300
  fc:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 100:	00010068 	andeq	r0, r1, r8, rrx
 104:	05000000 	streq	r0, [r0, #-0]
 108:	0000dc02 	andeq	sp, r0, r2, lsl #24
 10c:	684b1a08 	stmdavs	fp, {r3, r9, fp, ip}^
 110:	2f660d03 	svccs	0x00660d03
 114:	0232bc75 	eorseq	fp, r2, #29952	; 0x7500
 118:	01010001 	tsteq	r1, r1
 11c:	00000095 	muleq	r0, r5, r0
 120:	00640002 	rsbeq	r0, r4, r2
 124:	01020000 	mrseq	r0, (UNDEF: 2)
 128:	000d0efb 	strdeq	r0, [sp], -fp
 12c:	01010101 	tsteq	r1, r1, lsl #2
 130:	01000000 	mrseq	r0, (UNDEF: 0)
 134:	63010000 	movwvs	r0, #4096	; 0x1000
 138:	72612f3a 	rsbvc	r2, r1, #58, 30	; 0xe8
 13c:	6f745f6d 	svcvs	0x00745f6d
 140:	68636c6f 	stmdavs	r3!, {r0, r1, r2, r3, r5, r6, sl, fp, sp, lr}^
 144:	2f6e6961 	svccs	0x006e6961
 148:	2f62696c 	svccs	0x0062696c
 14c:	2f636367 	svccs	0x00636367
 150:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 154:	72612f2e 	rsbvc	r2, r1, #46, 30	; 0xb8
 158:	6f6e2d6d 	svcvs	0x006e2d6d
 15c:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
 160:	2f696261 	svccs	0x00696261
 164:	2d737973 	ldclcs	9, cr7, [r3, #-460]!	; 0xfffffe34
 168:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
 16c:	00656475 	rsbeq	r6, r5, r5, ror r4
 170:	69726400 	ldmdbvs	r2!, {sl, sp, lr}^
 174:	2e726576 	mrccs	5, 3, r6, cr2, cr6, {3}
 178:	00000063 	andeq	r0, r0, r3, rrx
 17c:	64747300 	ldrbtvs	r7, [r4], #-768	; 0x300
 180:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 184:	00010068 	andeq	r0, r1, r8, rrx
 188:	05000000 	streq	r0, [r0, #-0]
 18c:	00012c02 	andeq	r2, r1, r2, lsl #24
 190:	004b1608 	subeq	r1, fp, r8, lsl #12
 194:	06020402 	streq	r0, [r2], -r2, lsl #8
 198:	04020020 	streq	r0, [r2], #-32
 19c:	3d064a01 	vstrcc	s8, [r6, #-4]
 1a0:	4c672f68 	stclmi	15, cr2, [r7], #-416	; 0xfffffe60
 1a4:	3dca3d4b 	stclcc	13, cr3, [sl, #300]	; 0x12c
 1a8:	bb2f5abc 	bllt	bd6ca0 <vectors-0x7429360>
 1ac:	bbbb9fbb 	bllt	feee80a0 <stack_top+0xdeee7c97>
 1b0:	01000302 	tsteq	r0, r2, lsl #6
 1b4:	00008a01 	andeq	r8, r0, r1, lsl #20
 1b8:	55000200 	strpl	r0, [r0, #-512]	; 0x200
 1bc:	02000000 	andeq	r0, r0, #0
 1c0:	0d0efb01 	vstreq	d15, [lr, #-4]
 1c4:	01010100 	mrseq	r0, (UNDEF: 17)
 1c8:	00000001 	andeq	r0, r0, r1
 1cc:	01000001 	tsteq	r0, r1
 1d0:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
 1d4:	00632e6e 	rsbeq	r2, r3, lr, ror #28
 1d8:	70000000 	andvc	r0, r0, r0
 1dc:	73736572 	cmnvc	r3, #478150656	; 0x1c800000
 1e0:	5f657275 	svcpl	0x00657275
 1e4:	736e6573 	cmnvc	lr, #482344960	; 0x1cc00000
 1e8:	682e726f 	stmdavs	lr!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	72616c61 	rsbvc	r6, r1, #24832	; 0x6100
 1f4:	6f6d5f6d 	svcvs	0x006d5f6d
 1f8:	6f74696e 	svcvs	0x0074696e
 1fc:	00682e72 	rsbeq	r2, r8, r2, ror lr
 200:	61000000 	mrsvs	r0, (UNDEF: 0)
 204:	6f68676c 	svcvs	0x0068676c
 208:	68746972 	ldmdavs	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
 20c:	00682e6d 	rsbeq	r2, r8, sp, ror #28
 210:	00000000 	andeq	r0, r0, r0
 214:	38020500 	stmdacc	r2, {r8, sl}
 218:	19080002 	stmdbne	r8, {r1}
 21c:	2f2f2f2f 	svccs	0x002f2f2f
 220:	22929191 	addscs	r9, r2, #1073741860	; 0x40000024
 224:	0402002f 	streq	r0, [r2], #-47	; 0x2f
 228:	02003101 	andeq	r3, r0, #1073741824	; 0x40000000
 22c:	00670104 	rsbeq	r0, r7, r4, lsl #2
 230:	67010402 	strvs	r0, [r1, -r2, lsl #8]
 234:	01040200 	mrseq	r0, R12_usr
 238:	04020067 	streq	r0, [r2], #-103	; 0x67
 23c:	01024b01 	tsteq	r2, r1, lsl #22
 240:	8e010100 	adfhis	f0, f1, f0
 244:	02000000 	andeq	r0, r0, #0
 248:	00006d00 	andeq	r6, r0, r0, lsl #26
 24c:	fb010200 	blx	40a56 <vectors-0x7fbf5aa>
 250:	01000d0e 	tsteq	r0, lr, lsl #26
 254:	00010101 	andeq	r0, r1, r1, lsl #2
 258:	00010000 	andeq	r0, r1, r0
 25c:	3a630100 	bcc	18c0664 <vectors-0x673f99c>
 260:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 264:	6f6f745f 	svcvs	0x006f745f
 268:	6168636c 	cmnvs	r8, ip, ror #6
 26c:	6c2f6e69 	stcvs	14, cr6, [pc], #-420	; d0 <vectors-0x7ffff30>
 270:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
 274:	2e2f6363 	cdpcs	3, 2, cr6, cr15, cr3, {3}
 278:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 27c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 280:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 284:	61652d65 	cmnvs	r5, r5, ror #26
 288:	732f6962 	teqvc	pc, #1605632	; 0x188000
 28c:	692d7379 	pushvs	{r0, r3, r4, r5, r6, r8, r9, ip, sp, lr}
 290:	756c636e 	strbvc	r6, [ip, #-878]!	; 0x36e
 294:	00006564 	andeq	r6, r0, r4, ror #10
 298:	73657270 	cmnvc	r5, #112, 4
 29c:	65727573 	ldrbvs	r7, [r2, #-1395]!	; 0x573
 2a0:	6e65735f 	mcrvs	3, 3, r7, cr5, cr15, {2}
 2a4:	2e726f73 	mrccs	15, 3, r6, cr2, cr3, {3}
 2a8:	00000063 	andeq	r0, r0, r3, rrx
 2ac:	64747300 	ldrbtvs	r7, [r4], #-768	; 0x300
 2b0:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 2b4:	00010068 	andeq	r0, r1, r8, rrx
 2b8:	05000000 	streq	r0, [r0, #-0]
 2bc:	0002b802 	andeq	fp, r2, r2, lsl #16
 2c0:	010c0308 	tsteq	ip, r8, lsl #6
 2c4:	752f4c2f 	strvc	r4, [pc, #-3119]!	; fffff69d <stack_top+0xdffff294>
 2c8:	2f30924b 	svccs	0x0030924b
 2cc:	91839175 	orrls	r9, r3, r5, ror r1
 2d0:	01000102 	tsteq	r0, r2, lsl #2
 2d4:	0000aa01 	andeq	sl, r0, r1, lsl #20
 2d8:	65000200 	strvs	r0, [r0, #-512]	; 0x200
 2dc:	02000000 	andeq	r0, r0, #0
 2e0:	0d0efb01 	vstreq	d15, [lr, #-4]
 2e4:	01010100 	mrseq	r0, (UNDEF: 17)
 2e8:	00000001 	andeq	r0, r0, r1
 2ec:	01000001 	tsteq	r0, r1
 2f0:	612f3a63 	teqvs	pc, r3, ror #20
 2f4:	745f6d72 	ldrbvc	r6, [pc], #-3442	; 2fc <vectors-0x7fffd04>
 2f8:	636c6f6f 	cmnvs	ip, #444	; 0x1bc
 2fc:	6e696168 	powvsez	f6, f1, #0.0
 300:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 304:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 308:	2f2e2e2f 	svccs	0x002e2e2f
 30c:	612f2e2e 	teqvs	pc, lr, lsr #28
 310:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 314:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 318:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 31c:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
 320:	636e692d 	cmnvs	lr, #737280	; 0xb4000
 324:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
 328:	74730000 	ldrbtvc	r0, [r3], #-0
 32c:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0x261
 330:	00632e70 	rsbeq	r2, r3, r0, ror lr
 334:	73000000 	movwvc	r0, #0
 338:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 33c:	00682e74 	rsbeq	r2, r8, r4, ror lr
 340:	00000001 	andeq	r0, r0, r1
 344:	3c020500 	cfstr32cc	mvfx0, [r2], {-0}
 348:	03080003 	movweq	r0, #32771	; 0x8003
 34c:	2f2f0112 	svccs	0x002f0112
 350:	3d2e1003 	stccc	0, cr1, [lr, #-12]!
 354:	9f595959 	svcls	0x00595959
 358:	0402009f 	streq	r0, [r2], #-159	; 0x9f
 35c:	02004c02 	andeq	r4, r0, #512	; 0x200
 360:	00b80204 	adcseq	r0, r8, r4, lsl #4
 364:	06010402 	streq	r0, [r1], -r2, lsl #8
 368:	004f064a 	subeq	r0, pc, sl, asr #12
 36c:	4c020402 	cfstrsmi	mvf0, [r2], {2}
 370:	02040200 	andeq	r0, r4, #0, 4
 374:	04020080 	streq	r0, [r2], #-128	; 0x80
 378:	064a0601 	strbeq	r0, [sl], -r1, lsl #12
 37c:	04022f4f 	streq	r2, [r2], #-3919	; 0xf4f
 380:	Address 0x00000380 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	4e470074 	mcrmi	0, 2, r0, cr7, cr4, {3}
  10:	20432055 	subcs	r2, r3, r5, asr r0
  14:	2e372e34 	mrccs	14, 1, r2, cr7, cr4, {1}
  18:	74730032 	ldrbtvc	r0, [r3], #-50	; 0x32
  1c:	5f747261 	svcpl	0x00747261
  20:	72616c61 	rsbvc	r6, r1, #24832	; 0x6100
  24:	6f6c006d 	svcvs	0x006c006d
  28:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  2c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  30:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  34:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
  38:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
  3c:	616c6100 	cmnvs	ip, r0, lsl #2
  40:	615f6d72 	cmpvs	pc, r2, ror sp	; <UNPREDICTABLE>
  44:	61757463 	cmnvs	r5, r3, ror #8
  48:	2e726f74 	mrccs	15, 3, r6, cr2, cr4, {3}
  4c:	6e750063 	cdpvs	0, 7, cr0, cr5, cr3, {3}
  50:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
  54:	63206465 	teqvs	r0, #1694498816	; 0x65000000
  58:	00726168 	rsbseq	r6, r2, r8, ror #2
  5c:	655c3a44 	ldrbvs	r3, [ip, #-2628]	; 0xa44
  60:	6465626d 	strbtvs	r6, [r5], #-621	; 0x26d
  64:	5c646564 	cfstr64pl	mvdx6, [r4], #-400	; 0xfffffe70
  68:	455c534b 	ldrbmi	r5, [ip, #-843]	; 0x34b
  6c:	4445424d 	strbmi	r4, [r5], #-589	; 0x24d
  70:	5f444544 	svcpl	0x00444544
  74:	54535953 	ldrbpl	r5, [r3], #-2387	; 0x953
  78:	445f4d45 	ldrbmi	r4, [pc], #-3397	; 80 <vectors-0x7ffff80>
  7c:	4f4c5049 	svcmi	0x004c5049
  80:	455c414d 	ldrbmi	r4, [ip, #-333]	; 0x14d
  84:	4445424d 	strbmi	r4, [r5], #-589	; 0x24d
  88:	5f444544 	svcpl	0x00444544
  8c:	54535953 	ldrbpl	r5, [r3], #-2387	; 0x953
  90:	445f4d45 	ldrbmi	r4, [pc], #-3397	; 98 <vectors-0x7ffff68>
  94:	4f4c5049 	svcmi	0x004c5049
  98:	465c414d 	ldrbmi	r4, [ip], -sp, asr #2
  9c:	54535249 	ldrbpl	r5, [r3], #-585	; 0x249
  a0:	5245545f 	subpl	r5, r5, #1593835520	; 0x5f000000
  a4:	52475c4d 	subpl	r5, r7, #19712	; 0x4d00
  a8:	41554441 	cmpmi	r5, r1, asr #8
  ac:	4e4f4954 	mcrmi	9, 2, r4, cr15, cr4, {2}
  b0:	4f52505f 	svcmi	0x0052505f
  b4:	5443454a 	strbpl	r4, [r3], #-1354	; 0x54a
  b8:	52505c53 	subspl	r5, r0, #21248	; 0x5300
  bc:	43454a4f 	movtmi	r4, #23119	; 0x5a4f
  c0:	485f3154 	ldmdami	pc, {r2, r4, r6, r8, ip, sp}^	; <UNPREDICTABLE>
  c4:	5f484749 	svcpl	0x00484749
  c8:	53455250 	movtpl	r5, #21072	; 0x5250
  cc:	45525553 	ldrbmi	r5, [r2, #-1363]	; 0x553
  d0:	5445445f 	strbpl	r4, [r5], #-1119	; 0x45f
  d4:	49544345 	ldmdbmi	r4, {r0, r2, r6, r8, r9, lr}^
  d8:	435c4e4f 	cmpmi	ip, #1264	; 0x4f0
  dc:	5f45444f 	svcpl	0x0045444f
  e0:	4c504d49 	mrrcmi	13, 4, r4, r0, cr9
  e4:	4e454d45 	cdpmi	13, 4, cr4, cr5, cr5, {2}
  e8:	49544154 	ldmdbmi	r4, {r2, r4, r6, r8, lr}^
  ec:	73004e4f 	movwvc	r4, #3663	; 0xe4f
  f0:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xf68
  f4:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  f8:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0x769
  fc:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 100:	74730074 	ldrbtvc	r0, [r3], #-116	; 0x74
 104:	615f706f 	cmpvs	pc, pc, rrx
 108:	6d72616c 	ldfvse	f6, [r2, #-432]!	; 0xfffffe50
 10c:	6f687300 	svcvs	0x00687300
 110:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 114:	6100746e 	tstvs	r0, lr, ror #8
 118:	61757463 	cmnvs	r5, r3, ror #8
 11c:	5f726f74 	svcpl	0x00726f74
 120:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
 124:	7a697300 	bvc	1a5cd2c <vectors-0x65a32d4>
 128:	70797465 	rsbsvc	r7, r9, r5, ror #8
 12c:	74730065 	ldrbtvc	r0, [r3], #-101	; 0x65
 130:	616c615f 	cmnvs	ip, pc, asr r1
 134:	6f5f6d72 	svcvs	0x005f6d72
 138:	61006666 	tstvs	r0, r6, ror #12
 13c:	6d72616c 	ldfvse	f6, [r2, #-432]!	; 0xfffffe50
 140:	6e6f6d5f 	mcrvs	13, 3, r6, cr15, cr15, {2}
 144:	726f7469 	rsbvc	r7, pc, #1761607680	; 0x69000000
 148:	6100632e 	tstvs	r0, lr, lsr #6
 14c:	74735f6d 	ldrbtvc	r5, [r3], #-3949	; 0xf6d
 150:	5f657461 	svcpl	0x00657461
 154:	68006469 	stmdavs	r0, {r0, r3, r5, r6, sl, sp, lr}
 158:	5f686769 	svcpl	0x00686769
 15c:	73657270 	cmnvc	r5, #112, 4
 160:	65727573 	ldrbvs	r7, [r2, #-1395]!	; 0x573
 164:	7465645f 	strbtvc	r6, [r5], #-1119	; 0x45f
 168:	65746365 	ldrbvs	r6, [r4, #-869]!	; 0x365
 16c:	74730064 	ldrbtvc	r0, [r3], #-100	; 0x64
 170:	5f6d615f 	svcpl	0x006d615f
 174:	74696177 	strbtvc	r6, [r9], #-375	; 0x177
 178:	00676e69 	rsbeq	r6, r7, r9, ror #28
 17c:	615f7473 	cmpvs	pc, r3, ror r4	; <UNPREDICTABLE>
 180:	6d72616c 	ldfvse	f6, [r2, #-432]!	; 0xfffffe50
 184:	006e6f5f 	rsbeq	r6, lr, pc, asr pc
 188:	735f6d61 	cmpvc	pc, #6208	; 0x1840
 18c:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0x174
 190:	676c6100 	strbvs	r6, [ip, -r0, lsl #2]!
 194:	6174735f 	cmnvs	r4, pc, asr r3
 198:	695f6574 	ldmdbvs	pc, {r2, r4, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
 19c:	72700064 	rsbsvc	r0, r0, #100	; 0x64
 1a0:	75737365 	ldrbvc	r7, [r3, #-869]!	; 0x365
 1a4:	765f6572 			; <UNDEFINED> instruction: 0x765f6572
 1a8:	00326c61 	eorseq	r6, r2, r1, ror #24
 1ac:	68676c61 	stmdavs	r7!, {r0, r5, r6, sl, fp, sp, lr}^
 1b0:	7469726f 	strbtvc	r7, [r9], #-623	; 0x26f
 1b4:	632e6d68 	teqvs	lr, #104, 26	; 0x1a00
 1b8:	5f747300 	svcpl	0x00747300
 1bc:	68676968 	stmdavs	r7!, {r3, r5, r6, r8, fp, sp, lr}^
 1c0:	6572705f 	ldrbvs	r7, [r2, #-95]!	; 0x5f
 1c4:	72757373 	rsbsvc	r7, r5, #-872415231	; 0xcc000001
 1c8:	65645f65 	strbvs	r5, [r4, #-3941]!	; 0xf65
 1cc:	74636574 	strbtvc	r6, [r3], #-1396	; 0x574
 1d0:	74657300 	strbtvc	r7, [r5], #-768	; 0x300
 1d4:	6572705f 	ldrbvs	r7, [r2, #-95]!	; 0x5f
 1d8:	72757373 	rsbsvc	r7, r5, #-872415231	; 0xcc000001
 1dc:	61765f65 	cmnvs	r6, r5, ror #30
 1e0:	6975006c 	ldmdbvs	r5!, {r2, r3, r5, r6}^
 1e4:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
 1e8:	6100745f 	tstvs	r0, pc, asr r4
 1ec:	735f676c 	cmpvc	pc, #108, 14	; 0x1b00000
 1f0:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0x174
 1f4:	72687400 	rsbvc	r7, r8, #0, 8
 1f8:	6f687365 	svcvs	0x00687365
 1fc:	6e00646c 	cdpvs	4, 0, cr6, cr0, cr12, {3}
 200:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
 204:	72640074 	rsbvc	r0, r4, #116	; 0x74
 208:	72657669 	rsbvc	r7, r5, #110100480	; 0x6900000
 20c:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
 210:	5f4f4950 	svcpl	0x004f4950
 214:	54494e49 	strbpl	r4, [r9], #-3657	; 0xe49
 218:	494c4149 	stmdbmi	ip, {r0, r3, r6, r8, lr}^
 21c:	4954415a 	ldmdbmi	r4, {r1, r3, r4, r6, r8, lr}^
 220:	53004e4f 	movwpl	r4, #3663	; 0xe4f
 224:	415f7465 	cmpmi	pc, r5, ror #8
 228:	6d72616c 	ldfvse	f6, [r2, #-432]!	; 0xfffffe50
 22c:	7463615f 	strbtvc	r6, [r3], #-351	; 0x15f
 230:	6f746175 	svcvs	0x00746175
 234:	65640072 	strbvs	r0, [r4, #-114]!	; 0x72
 238:	0079616c 	rsbseq	r6, r9, ip, ror #2
 23c:	50746567 	rsbspl	r6, r4, r7, ror #10
 240:	73736572 	cmnvc	r3, #478150656	; 0x1c800000
 244:	56657275 			; <UNDEFINED> instruction: 0x56657275
 248:	6d006c61 	stcvs	12, cr6, [r0, #-388]	; 0xfffffe7c
 24c:	2e6e6961 	cdpcs	9, 6, cr6, cr14, cr1, {3}
 250:	616d0063 	cmnvs	sp, r3, rrx
 254:	70006e69 	andvc	r6, r0, r9, ror #28
 258:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xf73
 25c:	00657461 	rsbeq	r7, r5, r1, ror #8
 260:	705f7473 	subsvc	r7, pc, r3, ror r4	; <UNPREDICTABLE>
 264:	61775f73 	cmnvs	r7, r3, ror pc
 268:	6e697469 	cdpvs	4, 6, cr7, cr9, cr9, {3}
 26c:	73700067 	cmnvc	r0, #103	; 0x67
 270:	6174735f 	cmnvs	r4, pc, asr r3
 274:	695f6574 	ldmdbvs	pc, {r2, r4, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
 278:	72700064 	rsbsvc	r0, r0, #100	; 0x64
 27c:	75737365 	ldrbvc	r7, [r3, #-869]!	; 0x365
 280:	735f6572 	cmpvc	pc, #478150656	; 0x1c800000
 284:	6f736e65 	svcvs	0x00736e65
 288:	00632e72 	rsbeq	r2, r3, r2, ror lr
 28c:	695f7370 	ldmdbvs	pc, {r4, r5, r6, r8, r9, ip, sp, lr}^	; <UNPREDICTABLE>
 290:	0074696e 	rsbseq	r6, r4, lr, ror #18
 294:	705f7473 	subsvc	r7, pc, r3, ror r4	; <UNPREDICTABLE>
 298:	65725f73 	ldrbvs	r5, [r2, #-3955]!	; 0xf73
 29c:	6e696461 	cdpvs	4, 6, cr6, cr9, cr1, {3}
 2a0:	74730067 	ldrbtvc	r0, [r3], #-103	; 0x67
 2a4:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0x261
 2a8:	00632e70 	rsbeq	r2, r3, r0, ror lr
 2ac:	61746164 	cmnvs	r4, r4, ror #2
 2b0:	7a69735f 	bvc	1a5d034 <vectors-0x65a2fcc>
 2b4:	65760065 	ldrbvs	r0, [r6, #-101]!	; 0x65
 2b8:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 2bc:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
 2c0:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
 2c4:	61747300 	cmnvs	r4, r0, lsl #6
 2c8:	745f6b63 	ldrbvc	r6, [pc], #-2915	; 2d0 <vectors-0x7fffd30>
 2cc:	6200706f 	andvs	r7, r0, #111	; 0x6f
 2d0:	705f7373 	subsvc	r7, pc, r3, ror r3	; <UNPREDICTABLE>
 2d4:	73007274 	movwvc	r7, #628	; 0x274
 2d8:	61746164 	cmnvs	r4, r4, ror #2
 2dc:	7274705f 	rsbsvc	r7, r4, #95	; 0x5f
 2e0:	765f5300 	ldrbvc	r5, [pc], -r0, lsl #6
 2e4:	61746164 	cmnvs	r4, r4, ror #2
 2e8:	61646600 	cmnvs	r4, r0, lsl #12
 2ec:	705f6174 	subsvc	r6, pc, r4, ror r1	; <UNPREDICTABLE>
 2f0:	76007274 			; <UNDEFINED> instruction: 0x76007274
 2f4:	6f746365 	svcvs	0x00746365
 2f8:	45007372 	strmi	r7, [r0, #-882]	; 0x372
 2fc:	7373625f 	cmnvc	r3, #-268435451	; 0xf0000005
 300:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
 304:	745f3874 	ldrbvc	r3, [pc], #-2164	; 30c <vectors-0x7fffcf4>
 308:	73736200 	cmnvc	r3, #0, 4
 30c:	7a69735f 	bvc	1a5d090 <vectors-0x65a2f70>
 310:	65720065 	ldrbvs	r0, [r2, #-101]!	; 0x65
 314:	5f746573 	svcpl	0x00746573
 318:	646e6168 	strbtvs	r6, [lr], #-360	; 0x168
 31c:	0072656c 	rsbseq	r6, r2, ip, ror #10
 320:	646c5f53 	strbtvs	r5, [ip], #-3923	; 0xf53
 324:	00617461 	rsbeq	r7, r1, r1, ror #8
 328:	73625f53 	cmnvc	r2, #332	; 0x14c
 32c:	5f450073 	svcpl	0x00450073
 330:	74616476 	strbtvc	r6, [r1], #-1142	; 0x476
 334:	Address 0x00000334 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	34202955 	strtcc	r2, [r0], #-2389	; 0x955
   c:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0x202
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x00000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000014 	andeq	r0, r0, r4, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000020 	stmdaeq	r0, {r5}
  1c:	0000000a 	andeq	r0, r0, sl
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  28:	00000018 	andeq	r0, r0, r8, lsl r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0800002c 	stmdaeq	r0, {r2, r3, r5}
  34:	0000000e 	andeq	r0, r0, lr
  38:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  3c:	41018e02 	tstmi	r1, r2, lsl #28
  40:	0000070d 	andeq	r0, r0, sp, lsl #14
  44:	00000018 	andeq	r0, r0, r8, lsl r0
  48:	00000000 	andeq	r0, r0, r0
  4c:	0800003c 	stmdaeq	r0, {r2, r3, r4, r5}
  50:	0000000e 	andeq	r0, r0, lr
  54:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  58:	41018e02 	tstmi	r1, r2, lsl #28
  5c:	0000070d 	andeq	r0, r0, sp, lsl #14
  60:	0000000c 	andeq	r0, r0, ip
  64:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  68:	7c020001 	stcvc	0, cr0, [r2], {1}
  6c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  70:	00000014 	andeq	r0, r0, r4, lsl r0
  74:	00000060 	andeq	r0, r0, r0, rrx
  78:	0800004c 	stmdaeq	r0, {r2, r3, r6}
  7c:	0000001c 	andeq	r0, r0, ip, lsl r0
  80:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  84:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  88:	00000018 	andeq	r0, r0, r8, lsl r0
  8c:	00000060 	andeq	r0, r0, r0, rrx
  90:	08000068 	stmdaeq	r0, {r3, r5, r6}
  94:	0000002e 	andeq	r0, r0, lr, lsr #32
  98:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  9c:	41018e02 	tstmi	r1, r2, lsl #28
  a0:	0000070d 	andeq	r0, r0, sp, lsl #14
  a4:	00000018 	andeq	r0, r0, r8, lsl r0
  a8:	00000060 	andeq	r0, r0, r0, rrx
  ac:	08000098 	stmdaeq	r0, {r3, r4, r7}
  b0:	00000018 	andeq	r0, r0, r8, lsl r0
  b4:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  b8:	41018e02 	tstmi	r1, r2, lsl #28
  bc:	0000070d 	andeq	r0, r0, sp, lsl #14
  c0:	00000018 	andeq	r0, r0, r8, lsl r0
  c4:	00000060 	andeq	r0, r0, r0, rrx
  c8:	080000b0 	stmdaeq	r0, {r4, r5, r7}
  cc:	0000002a 	andeq	r0, r0, sl, lsr #32
  d0:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  d4:	41018e02 	tstmi	r1, r2, lsl #28
  d8:	0000070d 	andeq	r0, r0, sp, lsl #14
  dc:	0000000c 	andeq	r0, r0, ip
  e0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  e4:	7c020001 	stcvc	0, cr0, [r2], {1}
  e8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  ec:	00000018 	andeq	r0, r0, r8, lsl r0
  f0:	000000dc 	ldrdeq	r0, [r0], -ip
  f4:	080000dc 	stmdaeq	r0, {r2, r3, r4, r6, r7}
  f8:	0000001e 	andeq	r0, r0, lr, lsl r0
  fc:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 100:	100e4101 	andne	r4, lr, r1, lsl #2
 104:	00070d41 	andeq	r0, r7, r1, asr #26
 108:	00000018 	andeq	r0, r0, r8, lsl r0
 10c:	000000dc 	ldrdeq	r0, [r0], -ip
 110:	080000fc 	stmdaeq	r0, {r2, r3, r4, r5, r6, r7}
 114:	00000030 	andeq	r0, r0, r0, lsr r0
 118:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 11c:	41018e02 	tstmi	r1, r2, lsl #28
 120:	0000070d 	andeq	r0, r0, sp, lsl #14
 124:	0000000c 	andeq	r0, r0, ip
 128:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 12c:	7c020001 	stcvc	0, cr0, [r2], {1}
 130:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 134:	00000018 	andeq	r0, r0, r8, lsl r0
 138:	00000124 	andeq	r0, r0, r4, lsr #2
 13c:	0800012c 	stmdaeq	r0, {r2, r3, r5, r8}
 140:	00000022 	andeq	r0, r0, r2, lsr #32
 144:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 148:	100e4101 	andne	r4, lr, r1, lsl #2
 14c:	00070d41 	andeq	r0, r7, r1, asr #26
 150:	00000014 	andeq	r0, r0, r4, lsl r0
 154:	00000124 	andeq	r0, r0, r4, lsr #2
 158:	08000150 	stmdaeq	r0, {r4, r6, r8}
 15c:	00000018 	andeq	r0, r0, r8, lsl r0
 160:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 164:	070d4101 	streq	r4, [sp, -r1, lsl #2]
 168:	00000018 	andeq	r0, r0, r8, lsl r0
 16c:	00000124 	andeq	r0, r0, r4, lsr #2
 170:	08000168 	stmdaeq	r0, {r3, r5, r6, r8}
 174:	00000050 	andeq	r0, r0, r0, asr r0
 178:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 17c:	100e4101 	andne	r4, lr, r1, lsl #2
 180:	00070d41 	andeq	r0, r7, r1, asr #26
 184:	00000014 	andeq	r0, r0, r4, lsl r0
 188:	00000124 	andeq	r0, r0, r4, lsr #2
 18c:	080001b8 	stmdaeq	r0, {r3, r4, r5, r7, r8}
 190:	0000007e 	andeq	r0, r0, lr, ror r0
 194:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 198:	070d4101 	streq	r4, [sp, -r1, lsl #2]
 19c:	0000000c 	andeq	r0, r0, ip
 1a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1a4:	7c020001 	stcvc	0, cr0, [r2], {1}
 1a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1ac:	00000018 	andeq	r0, r0, r8, lsl r0
 1b0:	0000019c 	muleq	r0, ip, r1
 1b4:	08000238 	stmdaeq	r0, {r3, r4, r5, r9}
 1b8:	00000048 	andeq	r0, r0, r8, asr #32
 1bc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1c0:	41018e02 	tstmi	r1, r2, lsl #28
 1c4:	0000070d 	andeq	r0, r0, sp, lsl #14
 1c8:	00000018 	andeq	r0, r0, r8, lsl r0
 1cc:	0000019c 	muleq	r0, ip, r1
 1d0:	08000280 	stmdaeq	r0, {r7, r9}
 1d4:	00000036 	andeq	r0, r0, r6, lsr r0
 1d8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1dc:	41018e02 	tstmi	r1, r2, lsl #28
 1e0:	0000070d 	andeq	r0, r0, sp, lsl #14
 1e4:	0000000c 	andeq	r0, r0, ip
 1e8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1ec:	7c020001 	stcvc	0, cr0, [r2], {1}
 1f0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1f4:	00000014 	andeq	r0, r0, r4, lsl r0
 1f8:	000001e4 	andeq	r0, r0, r4, ror #3
 1fc:	080002b8 	stmdaeq	r0, {r3, r4, r5, r7, r9}
 200:	0000000a 	andeq	r0, r0, sl
 204:	87040e41 	strhi	r0, [r4, -r1, asr #28]
 208:	070d4101 	streq	r4, [sp, -r1, lsl #2]
 20c:	00000018 	andeq	r0, r0, r8, lsl r0
 210:	000001e4 	andeq	r0, r0, r4, ror #3
 214:	080002c4 	stmdaeq	r0, {r2, r6, r7, r9}
 218:	0000002e 	andeq	r0, r0, lr, lsr #32
 21c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 220:	41018e02 	tstmi	r1, r2, lsl #28
 224:	0000070d 	andeq	r0, r0, sp, lsl #14
 228:	00000018 	andeq	r0, r0, r8, lsl r0
 22c:	000001e4 	andeq	r0, r0, r4, ror #3
 230:	080002f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r9}
 234:	00000048 	andeq	r0, r0, r8, asr #32
 238:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 23c:	41018e02 	tstmi	r1, r2, lsl #28
 240:	0000070d 	andeq	r0, r0, sp, lsl #14
 244:	0000000c 	andeq	r0, r0, ip
 248:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 24c:	7c020001 	stcvc	0, cr0, [r2], {1}
 250:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 254:	00000018 	andeq	r0, r0, r8, lsl r0
 258:	00000244 	andeq	r0, r0, r4, asr #4
 25c:	0800033c 	stmdaeq	r0, {r2, r3, r4, r5, r8, r9}
 260:	0000000a 	andeq	r0, r0, sl
 264:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 268:	41018e02 	tstmi	r1, r2, lsl #28
 26c:	0000070d 	andeq	r0, r0, sp, lsl #14
 270:	0000001c 	andeq	r0, r0, ip, lsl r0
 274:	00000244 	andeq	r0, r0, r4, asr #4
 278:	08000348 	stmdaeq	r0, {r3, r6, r8, r9}
 27c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 280:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 284:	41018e02 	tstmi	r1, r2, lsl #28
 288:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
 28c:	00000007 	andeq	r0, r0, r7
