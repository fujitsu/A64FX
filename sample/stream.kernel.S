			mov	x14, 4
			lsl	x14, x14, 60
			orr	x20, x20, x14
			orr	x21, x21, x14
			orr	x22, x22, x14
			orr	x23, x23, x14

			adrp	x14, a.5+6144
			add	x14, x14, :lo12:a.5+6144
			add	x14, x14, x1, lsl #3
.L213:					// :entr:term:body:swpl
/*     44 000#SWPL */	ld1d	z5.d, p0/z, [x8, x24, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z6.d, p0/z, [x9, x24, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z3.d, p0/z, z9.d
/*     44 000#SWPL */	fmad	z3.d, p0/m, z2.d, z10.d
/*     44 000#SWPL */	ld1d	z7.d, p0/z, [x10, x24, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z8.d, p0/z, [x11, x24, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z4.d, p0/z, z11.d
/*     44 000#SWPL */	fmad	z4.d, p0/m, z2.d, z12.d
/*     44 000#SWPL */	ld1d	z9.d, p0/z, [x12, x24, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z10.d, p0/z, [x13, x24, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z11.d, p0/z, z13.d
/*     44 000#SWPL */	fmad	z11.d, p0/m, z2.d, z14.d
/*     44 000#SWPL */	prfm	2, [x16, x1, lsl #3]	//  "c"
/*     44 000#SWPL */	prfm	0, [x17, x1, lsl #3]	//  "c"
/*     44 000#SWPL */	add	x2, x24, 32
/*     44 000#SWPL */	ld1d	z0.d, p0/z, [x6, x2, lsl #3]	//  "c"
/*     44 000#SWPL */	prfm	2, [x18, x1, lsl #3]	//  "b"
/*     44 000#SWPL */	prfm	0, [x19, x1, lsl #3]	//  "b"
/*     44 000#SWPL */	ld1d	z1.d, p0/z, [x7, x2, lsl #3]	//  "b"
/*     44 000#SWPL */	//prfm	18, [x14, x1, lsl #3]	//  "a"
			dc	zva, x14
			add	x14, x14, #(32*8)
/*     44 000#SWPL */	prfm	16, [x15, x1, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z15.d, p0, [x20, x1, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z3.d, p0, [x21, x1, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z4.d, p0, [x22, x1, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z11.d, p0, [x23, x1, lsl #3]	//  "a"
/*     44 000#     */	movprfx	z11.d, p0/z, z16.d
/*     44 000#SWPL */	fmad	z11.d, p0/m, z2.d, z17.d
/*     44 000#SWPL */	ld1d	z3.d, p0/z, [x8, x2, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z4.d, p0/z, [x9, x2, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z12.d, p0/z, z5.d
/*     44 000#SWPL */	fmad	z12.d, p0/m, z2.d, z6.d
/*     44 000#SWPL */	ld1d	z5.d, p0/z, [x10, x2, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z6.d, p0/z, [x11, x2, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z13.d, p0/z, z7.d
/*     44 000#SWPL */	fmad	z13.d, p0/m, z2.d, z8.d
/*     44 000#SWPL */	ld1d	z7.d, p0/z, [x12, x2, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z8.d, p0/z, [x13, x2, lsl #3]	//  "b"
/*     44 000#SWPL */	fmad	z9.d, p0/m, z2.d, z10.d
/*     44 000#SWPL */	prfm	2, [x16, x24, lsl #3]	//  "c"
/*     44 000#SWPL */	prfm	0, [x17, x24, lsl #3]	//  "c"
/*     44 000#SWPL */	add	x1, x24, 64
/*     44 000#SWPL */	ld1d	z15.d, p0/z, [x6, x1, lsl #3]	//  "c"
/*     44 000#SWPL */	prfm	2, [x18, x24, lsl #3]	//  "b"
/*     44 000#SWPL */	prfm	0, [x19, x24, lsl #3]	//  "b"
/*     44 000#SWPL */	ld1d	z18.d, p0/z, [x7, x1, lsl #3]	//  "b"
/*     44 000#SWPL */	//prfm	18, [x14, x24, lsl #3]	//  "a"
			dc	zva, x14
			add	x14, x14, #(32*8)
/*     44 000#SWPL */	prfm	16, [x15, x24, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z11.d, p0, [x20, x24, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z12.d, p0, [x21, x24, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z13.d, p0, [x22, x24, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z9.d, p0, [x23, x24, lsl #3]	//  "a"
/*     44 000#SWPL */	fmad	z0.d, p0/m, z2.d, z1.d
/*     44 000#SWPL */	ld1d	z9.d, p0/z, [x8, x1, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z10.d, p0/z, [x9, x1, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z1.d, p0/z, z3.d
/*     44 000#SWPL */	fmad	z1.d, p0/m, z2.d, z4.d
/*     44 000#SWPL */	ld1d	z11.d, p0/z, [x10, x1, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z12.d, p0/z, [x11, x1, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z3.d, p0/z, z5.d
/*     44 000#SWPL */	fmad	z3.d, p0/m, z2.d, z6.d
/*     44 000#SWPL */	ld1d	z13.d, p0/z, [x12, x1, lsl #3]	//  "c"
/*     44 000#SWPL */	ld1d	z14.d, p0/z, [x13, x1, lsl #3]	//  "b"
/*     44 000#     */	movprfx	z4.d, p0/z, z7.d
/*     44 000#SWPL */	fmad	z4.d, p0/m, z2.d, z8.d
/*     44 000#SWPL */	prfm	2, [x16, x2, lsl #3]	//  "c"
/*     44 000#SWPL */	prfm	0, [x17, x2, lsl #3]	//  "c"
/*     44 000#SWPL */	add	x24, x24, 96
/*     44 000#SWPL */	ld1d	z16.d, p0/z, [x6, x24, lsl #3]	//  "c"
/*     44 000#SWPL */	prfm	2, [x18, x2, lsl #3]	//  "b"
/*     44 000#SWPL */	prfm	0, [x19, x2, lsl #3]	//  "b"
/*     44 000#SWPL */	ld1d	z17.d, p0/z, [x7, x24, lsl #3]	//  "b"
/*     44 000#SWPL */	//prfm	18, [x14, x2, lsl #3]	//  "a"
			dc	zva, x14
			add	x14, x14, #(32*8)
/*     44 000#SWPL */	prfm	16, [x15, x2, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z0.d, p0, [x20, x2, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z1.d, p0, [x21, x2, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z3.d, p0, [x22, x2, lsl #3]	//  "a"
/*     44 000#SWPL */	st1d	z4.d, p0, [x23, x2, lsl #3]	//  "a"
/*     44 000#SWPL */	fmad	z15.d, p0/m, z2.d, z18.d
/*     44 000#     */	sub	w5, w5, 12
/*     44 000#     */	cmp	w5, 20
/*     44 000#     */	bge	.L213
