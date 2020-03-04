	// dl_gmwn1_base_ (&ma, &nb_th, &kk, a, pb, &ldb, pc, &ldc);
	// addr[63:60]: pf_func, addr[57:56]: sec_id
	.text
	.align	2
	.global	dl_gmwn1_base_
	.type	dl_gmwn1_base_, %function
dl_gmwn1_base_:
	sub	sp, sp, #(144+8*0+16)
	stp	x19, x20, [sp]
	stp	x21, x22, [sp,16]
	stp	x23, x24, [sp,32]
	stp	x25, x26, [sp,48]
	stp	x27, x28, [sp,64]
	stp	d8, d9, [sp,80]
	stp	d10, d11, [sp,96]
	stp	d12, d13, [sp,112]
	stp	d14, d15, [sp,128]

	mov	x22, 0x2		
	lsl	x22, x22, 56
	orr	x6, x6, x22		
	mov	x22, 0x41		
	lsl	x22, x22, 56
	orr	x3, x3, x22		
	// free reg: x22

	str	x3, [sp,136+16]		
	ldrsw	x26, [x0]		
	ldr	w12, [x2]		
	sxtw	x8, w12			
	ldr	w11, [x5]		
	sxtw	x2, w11			
	ldr	w23, [x7]		
	sxtw	x0, w23			
	ldrsw	x1, [x1]		
	sub	x1, x1, #4		
	str	x1, [sp,128+16]		
	cmp	x1, xzr
	ble	.L1
	sbfiz	x23, x23, 3, 32		
	lsl	x17, x0, 4		
	lsl	x1, x0, 1		
	add	x16, x1, x0		
	lsl	x16, x16, 3		
	lsl	x15, x0, 5		
	add	x14, x0, x0, lsl 2	
	lsl	x14, x14, 3		
	//mov	x22, x23
	add	x3, x23, 64		
	//fmov	d12, x3
	//str	x3, [sp,136+8*1]	
	sbfiz	x11, x11, 3, 32		
	lsl	x10, x2, 4		
	lsl	x13, x2, 1		
	add	x9, x13, x2		
	lsl	x9, x9, 3		
	lsl	x7, x2, 5		
	add	x5, x2, x2, lsl 2	
	lsl	x5, x5, 3		
	
	
	mov	x2, x5			
	//fmov	d11, x2
	//str	x2, [sp,136+8*2]	
	mov	x25, x2			
	
	//lsl	x0, x0, 1		
	add	x0, x0, x0, lsl 2	
	sub	x0, x0, x26		
	lsl	x0, x0, 3		
	//fmov	d10, x0
	
	mov	x24, x0			
	

	lsl	x28, x8, 8		
	mov	x3, 0			
	sub	x26, x26, #31		
	add	x0, x23, 128		
	//fmov	d13, x0
	//str	x0, [sp,136+8*4]	
	mov	x27, x3			

	ptrue	p1.b
	lsr	x23, x23, 3		
	lsr	x17, x17, 3		
	lsr	x16, x16, 3		
	lsr	x15, x15, 3		
	//lsr	x14, x14, 3		
	b	.L3
.L9:
	//mov	x25, x19
	//sub	x13, x19, x22
	//mov	x24, x18
	//sub	x12, x18, x22
	add	x6, x6, 256*2
	prfm	pstl1keep, [x6,xzr,lsl #3]
	prfm	pstl1keep, [x6,x23,lsl #3]
	prfm	pstl1keep, [x6,x17,lsl #3]
	prfm	pstl1keep, [x6,x16,lsl #3]
	prfm	pstl1keep, [x6,x15,lsl #3]
	sub	x6, x6, 256*2

	ld1d	z2.d, p1/z, [x6,0,mul vl]
	ld1d	z3.d, p1/z, [x6,x23,lsl #3]
	ld1d	z4.d, p1/z, [x6,x17,lsl #3]
	ld1d	z5.d, p1/z, [x6,x16,lsl #3]
	ld1d	z6.d, p1/z, [x6,x15,lsl #3]

	ld1d	z7.d, p1/z, [x19,0,mul vl]
	ld1d	z8.d, p1/z, [x19,x23,lsl #3]
	ld1d	z9.d, p1/z, [x19,x17,lsl #3]
	ld1d	z10.d, p1/z, [x19,x16,lsl #3]
	ld1d	z11.d, p1/z, [x19,x15,lsl #3]

	ld1d	z12.d, p1/z, [x18,0,mul vl]
	ld1d	z13.d, p1/z, [x18,x23,lsl #3]
	ld1d	z14.d, p1/z, [x18,x17,lsl #3]
	ld1d	z15.d, p1/z, [x18,x16,lsl #3]
	ld1d	z16.d, p1/z, [x18,x15,lsl #3]

	ld1d	z17.d, p1/z, [x14,0,mul vl]
	ld1d	z18.d, p1/z, [x14,x23,lsl #3]
	ld1d	z19.d, p1/z, [x14,x17,lsl #3]
	ld1d	z20.d, p1/z, [x14,x16,lsl #3]
	ld1d	z21.d, p1/z, [x14,x15,lsl #3]
	cmp	x8, xzr
	ble	.L4
	mov	x0, x4			
	mov	x1, x21			
	mov	x2, x27			
	add	x11, x11, x0		
	add	x10, x10, x0		
	add	x9, x9, x0		
	add	x7, x7, x0		
	//add	x5, x5, x0


	prfm	pldl1keep, [x1,256*0]
	prfm	pldl1keep, [x1,256*1]
	prfm	pldl1keep, [x1,256*2]
	prfm	pldl1keep, [x1,256*3]
	prfm	pldl1keep, [x1,256*4]
	prfm	pldl1keep, [x1,256*5]
	prfm	pldl1keep, [x1,256*6]
	prfm	pldl1keep, [x1,256*7]
	prfm	pldl1keep, [x1,256*8]

	ld1rd	z22.d, p1/z, [x0,0]
	ld1rd	z23.d, p1/z, [x11,0]
	ld1rd	z24.d, p1/z, [x10,0]
	ld1rd	z25.d, p1/z, [x9,0]
	ld1rd	z26.d, p1/z, [x7,0]

	ld1rd	z27.d, p1/z, [x0,8]
	ld1rd	z28.d, p1/z, [x11,8]
	//ld1rd	z29.d, p1/z, [x10,8]
	//ld1rd	z30.d, p1/z, [x9,8]
	//ld1rd	z31.d, p1/z, [x7,8]

	ld1d	z0.d, p1/z, [x1,0,mul vl]

	//add	x1, x1, 8*8*4*2			
	//add	x0, x0, 8*2
	//add	x11, x11, 8*2
	//add	x10, x10, 8*2
	//add	x9, x9, 8*2
	//add	x7, x7, 8*2
	add	x2, x2, 1*2			

.L6:
	ld1d	z1.d, p1/z, [x1,1,mul vl]
	prfm	pldl1keep, [x1,256*9]
	fmla	z2.d, p1/m, z0.d, z22.d
	fmla	z3.d, p1/m, z0.d, z23.d
	ld1rd	z29.d, p1/z, [x10,8]
	ld1rd	z30.d, p1/z, [x9,8]
	fmla	z4.d, p1/m, z0.d, z24.d
	fmla	z5.d, p1/m, z0.d, z25.d
	fmla	z6.d, p1/m, z0.d, z26.d
	fmla	z7.d, p1/m, z1.d, z22.d
	ld1d	z0.d, p1/z, [x1,2,mul vl]
	ld1rd	z31.d, p1/z, [x7,8]
	fmla	z8.d, p1/m, z1.d, z23.d
	fmla	z9.d, p1/m, z1.d, z24.d
	fmla	z10.d, p1/m, z1.d, z25.d
	fmla	z11.d, p1/m, z1.d, z26.d
	ld1d	z1.d, p1/z, [x1,3,mul vl]
	add	x0, x0, 8*2
	fmla	z12.d, p1/m, z0.d, z22.d
	fmla	z13.d, p1/m, z0.d, z23.d
	add	x11, x11, 8*2
	add	x10, x10, 8*2
	fmla	z14.d, p1/m, z0.d, z24.d
	fmla	z15.d, p1/m, z0.d, z25.d
	fmla	z16.d, p1/m, z0.d, z26.d
	fmla	z17.d, p1/m, z1.d, z22.d
	ld1d	z0.d, p1/z, [x1,4,mul vl]
	add	x9, x9, 8*2
	fmla	z18.d, p1/m, z1.d, z23.d
	fmla	z19.d, p1/m, z1.d, z24.d
	ld1rd	z22.d, p1/z, [x0,0]
	ld1rd	z23.d, p1/z, [x11,0]
	fmla	z20.d, p1/m, z1.d, z25.d
	fmla	z21.d, p1/m, z1.d, z26.d

	ld1d	z1.d, p1/z, [x1,5,mul vl]
	prfm	pldl1keep, [x1,256*10]
	fmla	z2.d, p1/m, z0.d, z27.d
	fmla	z3.d, p1/m, z0.d, z28.d
	ld1rd	z24.d, p1/z, [x10,0]
	ld1rd	z25.d, p1/z, [x9,0]
	fmla	z4.d, p1/m, z0.d, z29.d
	fmla	z5.d, p1/m, z0.d, z30.d
	fmla	z6.d, p1/m, z0.d, z31.d
	fmla	z7.d, p1/m, z1.d, z27.d
	ld1d	z0.d, p1/z, [x1,6,mul vl]
	ld1rd	z26.d, p1/z, [x7,0+8*2]
	fmla	z8.d, p1/m, z1.d, z28.d
	fmla	z9.d, p1/m, z1.d, z29.d
	fmla	z10.d, p1/m, z1.d, z30.d
	fmla	z11.d, p1/m, z1.d, z31.d
	ld1d	z1.d, p1/z, [x1,7,mul vl]
	add	x1, x1, 8*8*4*2
	fmla	z12.d, p1/m, z0.d, z27.d
	fmla	z13.d, p1/m, z0.d, z28.d
	add	x7, x7, 8*2
	add	x2, x2, 1*2
	fmla	z14.d, p1/m, z0.d, z29.d
	fmla	z15.d, p1/m, z0.d, z30.d
	fmla	z16.d, p1/m, z0.d, z31.d
	fmla	z17.d, p1/m, z1.d, z27.d
	ld1d	z0.d, p1/z, [x1,0,mul vl]
	cmp	x8, x2
	fmla	z18.d, p1/m, z1.d, z28.d
	fmla	z19.d, p1/m, z1.d, z29.d
	ld1rd	z27.d, p1/z, [x0,8]
	ld1rd	z28.d, p1/z, [x11,8]
	fmla	z20.d, p1/m, z1.d, z30.d
	fmla	z21.d, p1/m, z1.d, z31.d

	nop
	bgt	.L6



	ld1d	z1.d, p1/z, [x1,1,mul vl]
	fmla	z2.d, p1/m, z0.d, z22.d
	fmla	z3.d, p1/m, z0.d, z23.d
	ld1rd	z29.d, p1/z, [x10,8]
	ld1rd	z30.d, p1/z, [x9,8]
	fmla	z4.d, p1/m, z0.d, z24.d
	fmla	z5.d, p1/m, z0.d, z25.d
	fmla	z6.d, p1/m, z0.d, z26.d
	ld1d	z0.d, p1/z, [x1,2,mul vl]
	ld1rd	z31.d, p1/z, [x7,8]
	fmla	z7.d, p1/m, z1.d, z22.d
	fmla	z8.d, p1/m, z1.d, z23.d
	fmla	z9.d, p1/m, z1.d, z24.d
	fmla	z10.d, p1/m, z1.d, z25.d
	fmla	z11.d, p1/m, z1.d, z26.d
	ld1d	z1.d, p1/z, [x1,3,mul vl]
	fmla	z12.d, p1/m, z0.d, z22.d
	fmla	z13.d, p1/m, z0.d, z23.d
	fmla	z14.d, p1/m, z0.d, z24.d
	fmla	z15.d, p1/m, z0.d, z25.d
	fmla	z16.d, p1/m, z0.d, z26.d
	ld1d	z0.d, p1/z, [x1,4,mul vl]
	fmla	z17.d, p1/m, z1.d, z22.d
	fmla	z18.d, p1/m, z1.d, z23.d
	fmla	z19.d, p1/m, z1.d, z24.d
	fmla	z20.d, p1/m, z1.d, z25.d
	fmla	z21.d, p1/m, z1.d, z26.d

	ld1d	z1.d, p1/z, [x1,5,mul vl]
	fmla	z2.d, p1/m, z0.d, z27.d
	fmla	z3.d, p1/m, z0.d, z28.d
	fmla	z4.d, p1/m, z0.d, z29.d
	fmla	z5.d, p1/m, z0.d, z30.d
	fmla	z6.d, p1/m, z0.d, z31.d
	ld1d	z0.d, p1/z, [x1,6,mul vl]
	fmla	z7.d, p1/m, z1.d, z27.d
	fmla	z8.d, p1/m, z1.d, z28.d
	fmla	z9.d, p1/m, z1.d, z29.d
	fmla	z10.d, p1/m, z1.d, z30.d
	fmla	z11.d, p1/m, z1.d, z31.d
	ld1d	z1.d, p1/z, [x1,7,mul vl]
	fmla	z12.d, p1/m, z0.d, z27.d
	fmla	z13.d, p1/m, z0.d, z28.d
	fmla	z14.d, p1/m, z0.d, z29.d
	fmla	z15.d, p1/m, z0.d, z30.d
	fmla	z16.d, p1/m, z0.d, z31.d
	//ld1d	z0.d, p1/z, [x1,0,mul vl]
	fmla	z17.d, p1/m, z1.d, z27.d
	fmla	z18.d, p1/m, z1.d, z28.d
	fmla	z19.d, p1/m, z1.d, z29.d
	fmla	z20.d, p1/m, z1.d, z30.d
	fmla	z21.d, p1/m, z1.d, z31.d

	add	x0, x0, 8*2
	add	x11, x11, 8*2
	add	x10, x10, 8*2
	add	x9, x9, 8*2
	add	x7, x7, 8*2

	add	x1, x1, 8*8*4*2		


	sub	x11, x11, x0		
	sub	x10, x10, x0		
	sub	x9, x9, x0		
	sub	x7, x7, x0		
	//sub	x5, x5, x0
	add	x21, x21, x28		
.L4:
	st1d	z2.d, p1, [x6,0,mul vl]
	st1d	z3.d, p1, [x6,x23,lsl #3]
	st1d	z4.d, p1, [x6,x17,lsl #3]
	st1d	z5.d, p1, [x6,x16,lsl #3]
	st1d	z6.d, p1, [x6,x15,lsl #3]
	st1d	z7.d, p1, [x19,0,mul vl]
	st1d	z8.d, p1, [x19,x23,lsl #3]
	st1d	z9.d, p1, [x19,x17,lsl #3]
	st1d	z10.d, p1, [x19,x16,lsl #3]
	st1d	z11.d, p1, [x19,x15,lsl #3]
	st1d	z12.d, p1, [x18,0,mul vl]
	st1d	z13.d, p1, [x18,x23,lsl #3]
	st1d	z14.d, p1, [x18,x17,lsl #3]
	st1d	z15.d, p1, [x18,x16,lsl #3]
	st1d	z16.d, p1, [x18,x15,lsl #3]
	st1d	z17.d, p1, [x14,0,mul vl]
	st1d	z18.d, p1, [x14,x23,lsl #3]
	st1d	z19.d, p1, [x14,x17,lsl #3]
	st1d	z20.d, p1, [x14,x16,lsl #3]
	st1d	z21.d, p1, [x14,x15,lsl #3]

	add	x6, x6, 256					
	add	x20, x20, 32		
	add	x19, x19, 256					
	add	x18, x18, 256					
	add	x14, x14, 256					
	cmp	x20, x26		
	blt	.L9
.L8:
	//fmov	x1, d11
	//ldr	x1, [sp,136+8*2]	
	mov	x1, x25			
	add	x4, x4, x1		
	//fmov	x0, d10
	//ldr	x0, [sp,136+8*3]	
	mov	x0, x24			
	add	x6, x6, x0		
	add	x3, x3, 5		
	ldr	x1, [sp,128+16]		
	cmp	x3, x1
	bge	.L1
.L3:
	cmp	x26, xzr
	ble	.L8
	//fmov	x0, d12
	//ldr	x0, [sp,136+8*1]	
	//add	x19, x6, x0
	add	x19, x6, 64		
	//fmov	x1, d13
	//ldr	x1, [sp,136+8*4]	
	//add	x18, x6, x1
	add	x18, x6, 128		
	add	x14, x6, 192		
	ldr	x21, [sp,136+16]		
	mov	x20, x27		
	b	.L9
.L1:
	ldp	x19, x20, [sp]
	ldp	x21, x22, [sp,16]
	ldp	x23, x24, [sp,32]
	ldp	x25, x26, [sp,48]
	ldp	x27, x28, [sp,64]
	ldp	d8, d9, [sp,80]
	ldp	d10, d11, [sp,96]
	ldp	d12, d13, [sp,112]
	ldp	d14, d15, [sp,128]
	add	sp, sp, #(144+8*0+16)
	ret
	.size	dl_gmwn1_base_, .-dl_gmwn1_base_
