	.file	"FIRFilter_fixedpointp.c"
	.intel_syntax noprefix
 # GNU C17 (x86_64-posix-seh, Built by strawberryperl.com project) version 8.3.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 7.2.0, GMP version 6.1.2, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.20-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: 
 # -iprefix C:/Strawberry/c/bin/../lib/gcc/x86_64-w64-mingw32/8.3.0/
 # -D_REENTRANT FIRFilter_fixedpointp.c -masm=intel -mtune=core2
 # -march=nocona -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations
 # -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
 # -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 # -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 # -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 # -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
 # -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 # -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
 # -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
 # -fira-share-save-slots -fira-share-spill-slots -fivopts
 # -fkeep-inline-dllexport -fkeep-static-consts -fleading-underscore
 # -flifetime-dse -flto-odr-type-merging -fmath-errno -fmerge-debug-strings
 # -fpeephole -fpic -fplt -fprefetch-loop-arrays -freg-struct-return
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
 # -fset-stack-executable -fshow-column -fshrink-wrap-separate
 # -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
 # -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
 # -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
 # -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 # -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
 # -funwind-tables -fverbose-asm -fzero-initialized-in-bss
 # -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
 # -malign-double -malign-stringops -mcx16 -mfancy-math-387 -mfentry
 # -mfp-ret-in-387 -mfxsr -mieee-fp -mlong-double-80 -mmmx -mms-bitfields
 # -mno-sse4 -mpush-args -mred-zone -msse -msse2 -msse3 -mstack-arg-probe
 # -mstackrealign -mvzeroupper

	.text
	.data
	.align 32
coeffs_int16:
	.word	-21
	.word	-17
	.word	-20
	.word	-21
	.word	-19
	.word	-13
	.word	-2
	.word	12
	.word	28
	.word	44
	.word	58
	.word	67
	.word	67
	.word	59
	.word	40
	.word	11
	.word	-23
	.word	-60
	.word	-94
	.word	-119
	.word	-129
	.word	-121
	.word	-93
	.word	-45
	.word	17
	.word	87
	.word	154
	.word	209
	.word	240
	.word	239
	.word	203
	.word	131
	.word	30
	.word	-89
	.word	-211
	.word	-316
	.word	-388
	.word	-411
	.word	-375
	.word	-278
	.word	-128
	.word	59
	.word	260
	.word	446
	.word	587
	.word	657
	.word	638
	.word	522
	.word	315
	.word	39
	.word	-273
	.word	-579
	.word	-832
	.word	-989
	.word	-1016
	.word	-895
	.word	-630
	.word	-244
	.word	219
	.word	698
	.word	1123
	.word	1426
	.word	1550
	.word	1458
	.word	1141
	.word	623
	.word	-42
	.word	-770
	.word	-1460
	.word	-2008
	.word	-2318
	.word	-2318
	.word	-1975
	.word	-1302
	.word	-359
	.word	744
	.word	1865
	.word	2842
	.word	3516
	.word	3749
	.word	3452
	.word	2599
	.word	1238
	.word	-505
	.word	-2434
	.word	-4300
	.word	-5825
	.word	-6731
	.word	-6775
	.word	-5780
	.word	-3659
	.word	-433
	.word	3762
	.word	8683
	.word	13997
	.word	19312
	.word	24212
	.word	28300
	.word	31234
	.word	32767
	.word	32767
	.word	31234
	.word	28300
	.word	24212
	.word	19312
	.word	13997
	.word	8683
	.word	3762
	.word	-433
	.word	-3659
	.word	-5780
	.word	-6775
	.word	-6731
	.word	-5825
	.word	-4300
	.word	-2434
	.word	-505
	.word	1238
	.word	2599
	.word	3452
	.word	3749
	.word	3516
	.word	2842
	.word	1865
	.word	744
	.word	-359
	.word	-1302
	.word	-1975
	.word	-2318
	.word	-2318
	.word	-2008
	.word	-1460
	.word	-770
	.word	-42
	.word	623
	.word	1141
	.word	1458
	.word	1550
	.word	1426
	.word	1123
	.word	698
	.word	219
	.word	-244
	.word	-630
	.word	-895
	.word	-1016
	.word	-989
	.word	-832
	.word	-579
	.word	-273
	.word	39
	.word	315
	.word	522
	.word	638
	.word	657
	.word	587
	.word	446
	.word	260
	.word	59
	.word	-128
	.word	-278
	.word	-375
	.word	-411
	.word	-388
	.word	-316
	.word	-211
	.word	-89
	.word	30
	.word	131
	.word	203
	.word	239
	.word	240
	.word	209
	.word	154
	.word	87
	.word	17
	.word	-45
	.word	-93
	.word	-121
	.word	-129
	.word	-119
	.word	-94
	.word	-60
	.word	-23
	.word	11
	.word	40
	.word	59
	.word	67
	.word	67
	.word	58
	.word	44
	.word	28
	.word	12
	.word	-2
	.word	-13
	.word	-19
	.word	-21
	.word	-20
	.word	-17
	.word	-21
	.align 32
input1_int16:
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16384
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16383
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16384
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16384
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16384
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16384
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16384
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16384
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16383
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16384
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16383
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.word	28836
	.word	18317
	.word	4567
	.word	-8192
	.word	-16383
	.word	-18317
	.word	-14693
	.word	-8192
	.word	-2327
	.word	0
	.word	-2327
	.word	-8192
	.word	-14693
	.word	-18317
	.word	-16383
	.word	-8192
	.word	4567
	.word	18317
	.word	28836
	.word	32767
	.text
	.globl	firFixed
	.def	firFixed;	.scl	2;	.type	32;	.endef
	.seh_proc	firFixed
firFixed:
	push	rbp	 #
	.seh_pushreg	rbp
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	mov	rbp, rsp	 #,
	.seh_setframe	rbp, 0
	.seh_endprologue
	mov	QWORD PTR 64[rbp], rcx	 # coeffs, coeffs
	mov	DWORD PTR 72[rbp], edx	 # filterLength, filterLength
	mov	QWORD PTR 80[rbp], r8	 # input, input
	mov	DWORD PTR 88[rbp], r9d	 # inputLength, inputLength
 # FIRFilter_fixedpointp.c:65:     if((coeffs != NULL) && (input != NULL) && (output != NULL))
	cmp	QWORD PTR 64[rbp], 0	 # coeffs,
	je	.L11	 #,
 # FIRFilter_fixedpointp.c:65:     if((coeffs != NULL) && (input != NULL) && (output != NULL))
	cmp	QWORD PTR 80[rbp], 0	 # input,
	je	.L11	 #,
 # FIRFilter_fixedpointp.c:65:     if((coeffs != NULL) && (input != NULL) && (output != NULL))
	cmp	QWORD PTR 96[rbp], 0	 # output,
	je	.L11	 #,
 # FIRFilter_fixedpointp.c:68:         register const uint32_t nEnd = outputLength > (filterLength + inputLength - 1) ? (filterLength + inputLength - 1) : outputLength;
	mov	edx, DWORD PTR 72[rbp]	 # tmp128, filterLength
	mov	eax, DWORD PTR 88[rbp]	 # tmp129, inputLength
	add	eax, edx	 # _1, tmp128
 # FIRFilter_fixedpointp.c:68:         register const uint32_t nEnd = outputLength > (filterLength + inputLength - 1) ? (filterLength + inputLength - 1) : outputLength;
	sub	eax, 1	 # _2,
 # FIRFilter_fixedpointp.c:68:         register const uint32_t nEnd = outputLength > (filterLength + inputLength - 1) ? (filterLength + inputLength - 1) : outputLength;
	cmp	DWORD PTR 104[rbp], eax	 # outputLength, _2
	cmovbe	eax, DWORD PTR 104[rbp]	 # outputLength,, _2
	mov	r13d, eax	 # nEnd, _2
 # FIRFilter_fixedpointp.c:69:         for (register uint32_t n = 0U; n < nEnd; n++)
	mov	ebx, 0	 # n,
 # FIRFilter_fixedpointp.c:69:         for (register uint32_t n = 0U; n < nEnd; n++)
	jmp	.L3	 #
.L10:
 # FIRFilter_fixedpointp.c:71:             register int32_t acc = 0;
	mov	esi, 0	 # acc,
 # FIRFilter_fixedpointp.c:77:             register const uint32_t kStart = n > inputLength ? n - inputLength : 0U;
	cmp	ebx, DWORD PTR 88[rbp]	 # n, inputLength
	jbe	.L4	 #,
 # FIRFilter_fixedpointp.c:77:             register const uint32_t kStart = n > inputLength ? n - inputLength : 0U;
	mov	eax, ebx	 # iftmp.0_37, n
	sub	eax, DWORD PTR 88[rbp]	 # iftmp.0_37, inputLength
	jmp	.L5	 #
.L4:
 # FIRFilter_fixedpointp.c:77:             register const uint32_t kStart = n > inputLength ? n - inputLength : 0U;
	mov	eax, 0	 # iftmp.0_37,
.L5:
 # FIRFilter_fixedpointp.c:77:             register const uint32_t kStart = n > inputLength ? n - inputLength : 0U;
	mov	edi, eax	 # kStart, iftmp.0_37
 # FIRFilter_fixedpointp.c:78:             register const uint32_t kEnd = filterLength > (n+1) ? n : filterLength-1;
	lea	eax, 1[rbx]	 # _3,
 # FIRFilter_fixedpointp.c:78:             register const uint32_t kEnd = filterLength > (n+1) ? n : filterLength-1;
	cmp	DWORD PTR 72[rbp], eax	 # filterLength, _3
	ja	.L6	 #,
 # FIRFilter_fixedpointp.c:78:             register const uint32_t kEnd = filterLength > (n+1) ? n : filterLength-1;
	mov	eax, DWORD PTR 72[rbp]	 # tmp130, filterLength
	sub	eax, 1	 # iftmp.1_38,
	jmp	.L7	 #
.L6:
 # FIRFilter_fixedpointp.c:78:             register const uint32_t kEnd = filterLength > (n+1) ? n : filterLength-1;
	mov	eax, ebx	 # iftmp.1_38, n
.L7:
 # FIRFilter_fixedpointp.c:78:             register const uint32_t kEnd = filterLength > (n+1) ? n : filterLength-1;
	mov	r14d, eax	 # kEnd, iftmp.1_38
 # FIRFilter_fixedpointp.c:80:             register int32_t mult =input[n - kStart] * coeffs[kStart];
	mov	eax, ebx	 # _4, n
	sub	eax, edi	 # _4, kStart
	mov	eax, eax	 # _5, _4
 # FIRFilter_fixedpointp.c:80:             register int32_t mult =input[n - kStart] * coeffs[kStart];
	lea	rdx, [rax+rax]	 # _6,
	mov	rax, QWORD PTR 80[rbp]	 # tmp131, input
	add	rax, rdx	 # _7, _6
	movzx	eax, WORD PTR [rax]	 # _8, *_7
	movsx	edx, ax	 # _9, _8
 # FIRFilter_fixedpointp.c:80:             register int32_t mult =input[n - kStart] * coeffs[kStart];
	mov	eax, edi	 # _10, kStart
	lea	rcx, [rax+rax]	 # _11,
	mov	rax, QWORD PTR 64[rbp]	 # tmp132, coeffs
	add	rax, rcx	 # _12, _11
	movzx	eax, WORD PTR [rax]	 # _13, *_12
	cwde
 # FIRFilter_fixedpointp.c:80:             register int32_t mult =input[n - kStart] * coeffs[kStart];
	imul	edx, eax	 # _9, _14
	mov	r12d, edx	 # mult, _9
 # FIRFilter_fixedpointp.c:81:             for (register uint32_t k = kStart; k < kEnd; k++ )
	jmp	.L8	 #
.L9:
 # FIRFilter_fixedpointp.c:83:                 acc += mult >> 8U;
	mov	eax, r12d	 # mult, mult
	sar	eax, 8	 # mult,
 # FIRFilter_fixedpointp.c:83:                 acc += mult >> 8U;
	add	esi, eax	 # acc, _15
 # FIRFilter_fixedpointp.c:84:                 mult = input[n - k-1] * coeffs[k+1];
	mov	eax, ebx	 # _16, n
	sub	eax, edi	 # _16, k
 # FIRFilter_fixedpointp.c:84:                 mult = input[n - k-1] * coeffs[k+1];
	sub	eax, 1	 # _17,
	mov	eax, eax	 # _18, _17
 # FIRFilter_fixedpointp.c:84:                 mult = input[n - k-1] * coeffs[k+1];
	lea	rdx, [rax+rax]	 # _19,
	mov	rax, QWORD PTR 80[rbp]	 # tmp133, input
	add	rax, rdx	 # _20, _19
	movzx	eax, WORD PTR [rax]	 # _21, *_20
	movsx	edx, ax	 # _22, _21
 # FIRFilter_fixedpointp.c:84:                 mult = input[n - k-1] * coeffs[k+1];
	lea	eax, 1[rdi]	 # _23,
	mov	eax, eax	 # _24, _23
 # FIRFilter_fixedpointp.c:84:                 mult = input[n - k-1] * coeffs[k+1];
	lea	rcx, [rax+rax]	 # _25,
	mov	rax, QWORD PTR 64[rbp]	 # tmp134, coeffs
	add	rax, rcx	 # _26, _25
	movzx	eax, WORD PTR [rax]	 # _27, *_26
	cwde
 # FIRFilter_fixedpointp.c:84:                 mult = input[n - k-1] * coeffs[k+1];
	imul	edx, eax	 # _22, _28
	mov	r12d, edx	 # mult, _22
 # FIRFilter_fixedpointp.c:81:             for (register uint32_t k = kStart; k < kEnd; k++ )
	add	edi, 1	 # k,
.L8:
 # FIRFilter_fixedpointp.c:81:             for (register uint32_t k = kStart; k < kEnd; k++ )
	cmp	edi, r14d	 # k, kEnd
	jb	.L9	 #,
 # FIRFilter_fixedpointp.c:86:             acc += mult >> 8U;
	mov	eax, r12d	 # mult, mult
	sar	eax, 8	 # mult,
 # FIRFilter_fixedpointp.c:86:             acc += mult >> 8U;
	add	esi, eax	 # acc, _29
 # FIRFilter_fixedpointp.c:87:             output[n] = acc;
	mov	eax, ebx	 # _30, n
	lea	rdx, 0[0+rax*4]	 # _31,
	mov	rax, QWORD PTR 96[rbp]	 # tmp135, output
	add	rax, rdx	 # _32, _31
 # FIRFilter_fixedpointp.c:87:             output[n] = acc;
	mov	DWORD PTR [rax], esi	 # *_32, acc
 # FIRFilter_fixedpointp.c:69:         for (register uint32_t n = 0U; n < nEnd; n++)
	add	ebx, 1	 # n,
.L3:
 # FIRFilter_fixedpointp.c:69:         for (register uint32_t n = 0U; n < nEnd; n++)
	cmp	ebx, r13d	 # n, nEnd
	jb	.L10	 #,
.L11:
 # FIRFilter_fixedpointp.c:90: }
	nop	
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	rbp	 #
	ret	
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "%15d,\0"
.LC1:
	.ascii "Number of Clocks: %2.3f\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp	 #
	.seh_pushreg	rbp
	sub	rsp, 1680	 #,
	.seh_stackalloc	1680
	lea	rbp, 128[rsp]	 #,
	.seh_setframe	rbp, 128
	.seh_endprologue
 # FIRFilter_fixedpointp.c:96: {
	call	__main	 #
 # FIRFilter_fixedpointp.c:98:     memset(fixedOutput, 0, sizeof(fixedOutput));
	lea	rax, -80[rbp]	 # tmp92,
	mov	r8d, 1600	 #,
	mov	edx, 0	 #,
	mov	rcx, rax	 #, tmp92
	call	memset	 #
 # FIRFilter_fixedpointp.c:100:     clock_t start = clock();
	call	clock	 #
	mov	DWORD PTR 1540[rbp], eax	 # start, tmp93
 # FIRFilter_fixedpointp.c:102:     for(int k =0; k < 100000; k++)
	mov	DWORD PTR 1548[rbp], 0	 # k,
 # FIRFilter_fixedpointp.c:102:     for(int k =0; k < 100000; k++)
	jmp	.L13	 #
.L14:
 # FIRFilter_fixedpointp.c:105:         firFixed(coeffs_int16, COUNTOF(coeffs_int16), input1_int16, COUNTOF(input1_int16), fixedOutput, COUNTOF(fixedOutput));
	mov	DWORD PTR 40[rsp], 400	 #,
	lea	rax, -80[rbp]	 # tmp94,
	mov	QWORD PTR 32[rsp], rax	 #, tmp94
	mov	r9d, 201	 #,
	lea	r8, input1_int16[rip]	 #,
	mov	edx, 200	 #,
	lea	rcx, coeffs_int16[rip]	 #,
	call	firFixed	 #
 # FIRFilter_fixedpointp.c:102:     for(int k =0; k < 100000; k++)
	add	DWORD PTR 1548[rbp], 1	 # k,
.L13:
 # FIRFilter_fixedpointp.c:102:     for(int k =0; k < 100000; k++)
	cmp	DWORD PTR 1548[rbp], 99999	 # k,
	jle	.L14	 #,
 # FIRFilter_fixedpointp.c:108:     clock_t end = clock();
	call	clock	 #
	mov	DWORD PTR 1536[rbp], eax	 # end, tmp95
 # FIRFilter_fixedpointp.c:111:     for(uint32_t i = 0U; i < COUNTOF(fixedOutput) ; ++i)
	mov	DWORD PTR 1544[rbp], 0	 # i,
 # FIRFilter_fixedpointp.c:111:     for(uint32_t i = 0U; i < COUNTOF(fixedOutput) ; ++i)
	jmp	.L15	 #
.L17:
 # FIRFilter_fixedpointp.c:113:         if((i % 10 == 0) && (i != 0))
	mov	ecx, DWORD PTR 1544[rbp]	 # tmp96, i
	mov	edx, -858993459	 # tmp98,
	mov	eax, ecx	 # tmp107, tmp96
	mul	edx	 # tmp98
	shr	edx, 3	 # _1,
	mov	eax, edx	 # tmp99, _1
	sal	eax, 2	 # tmp99,
	add	eax, edx	 # tmp99, _1
	add	eax, eax	 # tmp100
	sub	ecx, eax	 # tmp96, tmp99
	mov	edx, ecx	 # _1, tmp96
 # FIRFilter_fixedpointp.c:113:         if((i % 10 == 0) && (i != 0))
	test	edx, edx	 # _1
	jne	.L16	 #,
 # FIRFilter_fixedpointp.c:113:         if((i % 10 == 0) && (i != 0))
	cmp	DWORD PTR 1544[rbp], 0	 # i,
	je	.L16	 #,
 # FIRFilter_fixedpointp.c:115:         	printf("\n");
	mov	ecx, 10	 #,
	call	putchar	 #
.L16:
 # FIRFilter_fixedpointp.c:118:         printf("%15d,", fixedOutput[i]);
	mov	eax, DWORD PTR 1544[rbp]	 # tmp101, i
	mov	eax, DWORD PTR -80[rbp+rax*4]	 # _2, fixedOutput
	mov	edx, eax	 #, _2
	lea	rcx, .LC0[rip]	 #,
	call	printf	 #
 # FIRFilter_fixedpointp.c:111:     for(uint32_t i = 0U; i < COUNTOF(fixedOutput) ; ++i)
	add	DWORD PTR 1544[rbp], 1	 # i,
.L15:
 # FIRFilter_fixedpointp.c:111:     for(uint32_t i = 0U; i < COUNTOF(fixedOutput) ; ++i)
	cmp	DWORD PTR 1544[rbp], 399	 # i,
	jbe	.L17	 #,
 # FIRFilter_fixedpointp.c:121:     double Num_Of_Clocks = end - start;
	mov	eax, DWORD PTR 1536[rbp]	 # tmp102, end
	sub	eax, DWORD PTR 1540[rbp]	 # _3, start
 # FIRFilter_fixedpointp.c:121:     double Num_Of_Clocks = end - start;
	cvtsi2sd	xmm0, eax	 # tmp103, _3
	movsd	QWORD PTR 1528[rbp], xmm0	 # Num_Of_Clocks, tmp103
 # FIRFilter_fixedpointp.c:122:     printf("\n");
	mov	ecx, 10	 #,
	call	putchar	 #
 # FIRFilter_fixedpointp.c:123:     printf("Number of Clocks: %2.3f\n", Num_Of_Clocks);
	movsd	xmm1, QWORD PTR 1528[rbp]	 # tmp104, Num_Of_Clocks
	movsd	xmm0, QWORD PTR 1528[rbp]	 # tmp105, Num_Of_Clocks
	movq	rdx, xmm0	 #, tmp105
	lea	rcx, .LC1[rip]	 #,
	call	printf	 #
 # FIRFilter_fixedpointp.c:127:     return 0;
	mov	eax, 0	 # _25,
 # FIRFilter_fixedpointp.c:128: }
	add	rsp, 1680	 #,
	pop	rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh, Built by strawberryperl.com project) 8.3.0"
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	clock;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
