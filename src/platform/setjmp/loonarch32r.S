#ifdef __ISA_LOONGARCH32R__
  .globl  setjmp
  .type   setjmp, @function
setjmp:
#if __loongarch_grlen == 32
  st.w   $ra,  $a0, 0
  st.w   $sp,  $a0, 4
  st.w   $x,   $a0, 8
  st.w   $fp,  $a0, 12
  st.w   $s0,  $a0, 16
  st.w   $s1,  $a0, 20
  st.w   $s2,  $a0, 24
  st.w   $s3,  $a0, 28
  st.w   $s4,  $a0, 32
  st.w   $s5,  $a0, 36
  st.w   $s6,  $a0, 40
  st.w   $s7,  $a0, 44
  st.w   $s8,  $a0, 48
#else /* loongarch_grlen == 64 */
  st.d   $ra,  $a0, 0
  st.d   $sp,  $a0, 8
  st.d   $x,   $a0, 16
  st.d   $fp,  $a0, 24
  st.d   $s0,  $a0, 32
  st.d   $s1,  $a0, 40
  st.d   $s2,  $a0, 48
  st.d   $s3,  $a0, 56
  st.d   $s4,  $a0, 64
  st.d   $s5,  $a0, 72
  st.d   $s6,  $a0, 80
  st.d   $s7,  $a0, 88
  st.d   $s8,  $a0, 96
#endif
  move   $a0, $zero
  jr     $ra
  .size	setjmp, .-setjmp

  .globl longjmp
  .type  longjmp, @function
longjmp:
#if __loongarch_grlen == 32
  ld.w   $ra,  $a0, 0
  ld.w   $sp,  $a0, 4
  ld.w   $x,   $a0, 8
  ld.w   $fp,  $a0, 12
  ld.w   $s0,  $a0, 16
  ld.w   $s1,  $a0, 20
  ld.w   $s2,  $a0, 24
  ld.w   $s3,  $a0, 28
  ld.w   $s4,  $a0, 32
  ld.w   $s5,  $a0, 36
  ld.w   $s6,  $a0, 40
  ld.w   $s7,  $a0, 44
  ld.w   $s8,  $a0, 48
#else /* loongarch_grlen == 64 */
  ld.d   $ra,  $a0, 0
  ld.d   $sp,  $a0, 8
  ld.d   $x,   $a0, 16
  ld.d   $fp,  $a0, 24
  ld.d   $s0,  $a0, 32
  ld.d   $s1,  $a0, 40
  ld.d   $s2,  $a0, 48
  ld.d   $s3,  $a0, 56
  ld.d   $s4,  $a0, 64
  ld.d   $s5,  $a0, 72
  ld.d   $s6,  $a0, 80
  ld.d   $s7,  $a0, 88
  ld.d   $s8,  $a0, 96
#endif
  bnez   $a1,  1f
  addi.w $a1,  $a1, 1
1:
  move   $a0,  $a1
  jr     $ra
	.size	 longjmp, .-longjmp
#endif
