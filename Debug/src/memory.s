	.file	"memory.c"
	.text
.Ltext0:
	.file 0 "/cygdrive/c/Users/sudhe/eclipse-workspace/C_Memory_layout/Debug" "../src/memory.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "ro_data\0"
.LC1:
	.ascii "a_stack adress=%p \11\0"
.LC2:
	.ascii "a_stack data=%d\12\0"
.LC3:
	.ascii "b_bss adress=%p\11\0"
.LC4:
	.ascii "b_bss data =%d\12\0"
.LC5:
	.ascii "c_init adress=%p \11\0"
.LC6:
	.ascii "c_init data=%d \12\0"
.LC7:
	.ascii "d_reg data=%d \12\0"
.LC8:
	.ascii "ptr adress=%p \11\0"
.LC9:
	.ascii "ptr data=%#lx \12\0"
.LC10:
	.ascii "buff_ptr adress=%p \11\0"
.LC11:
	.ascii "buff_ptr data=%#lx \12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB4:
	.file 1 "../src/memory.c"
	.loc 1 14 16
	pushq	%rbp
	.seh_pushreg	%rbp
.LCFI0:
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
.LCFI1:
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	.loc 1 14 16
	call	__main
	.loc 1 18 27
	movl	$10, -8(%rbp)
	.loc 1 19 11
	leaq	.LC0(%rip), %rax
	movq	%rax, -16(%rbp)
	.loc 1 20 20
	movl	$10, %ecx
	call	malloc
	.loc 1 20 11
	movq	%rax, -24(%rbp)
	.loc 1 22 5
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 23 5
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 25 5
	leaq	b_bss.1(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 26 5
	movl	b_bss.1(%rip), %eax
	movl	%eax, %edx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 28 5
	leaq	c_init.0(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 29 6
	movl	c_init.0(%rip), %eax
	movl	%eax, %edx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 32 8
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 34 8
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 35 12
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 37 12
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 38 20
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	printf
	.loc 1 40 24
	movq	-24(%rbp), %rax
	.loc 1 40 23
	testq	%rax, %rax
	je	.L2
	.loc 1 41 20
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L2:
	.loc 1 49 8
	movl	$0, %eax
	.loc 1 50 1
	addq	$64, %rsp
	popq	%rbp
.LCFI2:
	ret
.LFE4:
	.seh_endproc
.lcomm b_bss.1,4,4
	.data
	.align 4
c_init.0:
	.long	8
	.section	.debug_frame,"dr"
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.secrel32	.Lframe0
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.byte	0x4
	.long	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc6
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE0:
	.text
.Letext0:
	.file 2 "/usr/include/stdio.h"
	.file 3 "/usr/include/stdlib.h"
	.file 4 "/usr/lib/gcc/x86_64-pc-cygwin/12/include/stddef.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x22c
	.word	0x5
	.byte	0x1
	.byte	0x8
	.secrel32	.Ldebug_abbrev0
	.uleb128 0x6
	.ascii "GNU C17 12.4.0 -mtune=generic -march=x86-64 -g3 -O0 -fmessage-length=0\0"
	.byte	0x1d
	.secrel32	.LASF0
	.secrel32	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x7
	.long	0xb8
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x8
	.ascii "size_t\0"
	.byte	0x4
	.byte	0xd6
	.byte	0x1b
	.long	0xe0
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x9
	.long	0x124
	.uleb128 0xa
	.byte	0x8
	.uleb128 0x4
	.long	0x124
	.uleb128 0x4
	.long	0x12c
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0xb
	.ascii "free\0"
	.byte	0x3
	.byte	0x5e
	.byte	0x6
	.long	0x16a
	.uleb128 0x3
	.long	0x131
	.byte	0
	.uleb128 0x5
	.ascii "printf\0"
	.byte	0x2
	.byte	0xce
	.byte	0x5
	.long	0xb8
	.long	0x184
	.uleb128 0x3
	.long	0x138
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.ascii "malloc\0"
	.byte	0x3
	.byte	0x6c
	.byte	0x7
	.long	0x131
	.long	0x19d
	.uleb128 0x3
	.long	0xf5
	.byte	0
	.uleb128 0xd
	.ascii "main\0"
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.long	0xb8
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.ascii "a_stack\0"
	.byte	0xf
	.byte	0x9
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2
	.ascii "b_bss\0"
	.byte	0x10
	.byte	0x10
	.long	0xb8
	.uleb128 0x9
	.byte	0x3
	.quad	b_bss.1
	.uleb128 0x2
	.ascii "c_init\0"
	.byte	0x11
	.byte	0x10
	.long	0xb8
	.uleb128 0x9
	.byte	0x3
	.quad	c_init.0
	.uleb128 0x2
	.ascii "d_reg\0"
	.byte	0x12
	.byte	0x1b
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.ascii "ptr\0"
	.byte	0x13
	.byte	0xb
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2
	.ascii "buff_ptr\0"
	.byte	0x14
	.byte	0xb
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x5
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x1
	.uleb128 0
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_VERSION__ 201710L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_16__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_UTF_32__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__STDC_HOSTED__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC__ 12\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_MINOR__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__VERSION__ \"12.4.0\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__pic__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PIC__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "_LP64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LP64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_SIZE_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_POINTER__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-16LE\"\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_ABI_VERSION 1017\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_MIN__ 0U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SCHAR_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SHRT_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LONG_LONG_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WCHAR_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__WINT_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PTRDIFF_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZE_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTMAX_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTMAX_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIG_ATOMIC_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST16_WIDTH__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST32_WIDTH__ 32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT64_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_LEAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT64_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST8_WIDTH__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST16_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST32_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INT_FAST64_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST16_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST32_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__INTPTR_WIDTH__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__UINTPTR_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EVAL_METHOD_TS_18661_3__ 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MAX__ 3.40282346638528859811704183484516925e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_MIN__ 1.17549435082228750796873653722224568e-38F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DBL_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__LDBL_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MANT_DIG__ 11\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_DIG__ 3\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MIN_EXP__ (-13)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MIN_10_EXP__ (-4)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MAX_EXP__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MAX_10_EXP__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_DECIMAL_DIG__ 5\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT16_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DIG__ 6\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MANT_DIG__ 113\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DIG__ 33\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DECIMAL_DIG__ 36\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT128_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DIG__ 15\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT32X_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DIG__ 18\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FLT64X_IS_IEC_60559__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__USER_LABEL_PREFIX__ \0"
	.byte	0x1
	.uleb128 0
	.ascii "__GNUC_STDC_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_DESTRUCTIVE_SIZE 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_CONSTRUCTIVE_SIZE 64\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__HAVE_SPECULATION_SAFE_VALUE 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_INT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_WINT_T__ 4\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_PTRDIFF_T__ 8\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__amd64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__x86_64__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT80__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__k8 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__k8__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__code_model_medium__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MMX__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__FXSR__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SSE2_MATH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__MMX_WITH_SSE__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEG_GS 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__SEH__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "_cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0
	.ascii "__CYGWIN__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__unix 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__unix__ 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "unix 1\0"
	.byte	0x1
	.uleb128 0
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x1b
	.ascii "_STDIO_H_ \0"
	.file 5 "/usr/include/_ansi.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x8
	.ascii "_ANSIDECL_H_ \0"
	.file 6 "/usr/include/newlib.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x7
	.ascii "__NEWLIB_H__ 1\0"
	.file 7 "/usr/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x4
	.ascii "_NEWLIB_VERSION_H__ 1\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "_NEWLIB_VERSION \"4.4.0\"\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "__NEWLIB__ 4\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "__NEWLIB_MINOR__ 4\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "__NEWLIB_PATCHLEVEL__ 0\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1b
	.ascii "_ATEXIT_DYNAMIC_ALLOC 1\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "_FSEEK_OPTIMIZATION 1\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_FVWRITE_IN_STREAMIO 1\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "_HAVE_LONG_DOUBLE 1\0"
	.byte	0x1
	.uleb128 0x169
	.ascii "_MB_CAPABLE 1\0"
	.byte	0x1
	.uleb128 0x16c
	.ascii "_MB_LEN_MAX 8\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "_REENT_CHECK_VERIFY 1\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "_UNBUF_STREAM_OPT 1\0"
	.byte	0x1
	.uleb128 0x181
	.ascii "_WANT_IO_C99_FORMATS 1\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "_WANT_IO_LONG_DOUBLE 1\0"
	.byte	0x1
	.uleb128 0x189
	.ascii "_WANT_IO_LONG_LONG 1\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "_WANT_IO_POS_ARGS 1\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "_WANT_USE_GDTOA 1\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "_WIDE_ORIENT 1\0"
	.byte	0x4
	.file 8 "/usr/include/sys/config.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x2
	.ascii "__SYS_CONFIG_H__ \0"
	.file 9 "/usr/include/machine/ieeefp.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x1ad
	.ascii "__IEEE_LITTLE_ENDIAN \0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "_SUPPORTS_ERREXCEPT \0"
	.byte	0x1
	.uleb128 0x202
	.ascii "__OBSOLETE_MATH_DEFAULT 0\0"
	.byte	0x1
	.uleb128 0x20a
	.ascii "__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT\0"
	.byte	0x4
	.file 10 "/usr/include/sys/features.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x16
	.ascii "_SYS_FEATURES_H \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)\0"
	.byte	0x2
	.uleb128 0x88
	.ascii "_DEFAULT_SOURCE\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_DEFAULT_SOURCE 1\0"
	.byte	0x2
	.uleb128 0x8d
	.ascii "_POSIX_SOURCE\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "_POSIX_SOURCE 1\0"
	.byte	0x2
	.uleb128 0x8f
	.ascii "_POSIX_C_SOURCE\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "_POSIX_C_SOURCE 200809L\0"
	.byte	0x2
	.uleb128 0xa3
	.ascii "_ATFILE_SOURCE\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "_ATFILE_SOURCE 1\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__ATFILE_VISIBLE 1\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__BSD_VISIBLE 1\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "__GNU_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__ISO_C_VISIBLE 2011\0"
	.byte	0x1
	.uleb128 0x122
	.ascii "__LARGEFILE_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "__MISC_VISIBLE 1\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "__POSIX_VISIBLE 200809\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "__SVID_VISIBLE 1\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "__XSI_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "__SSP_FORTIFY_LEVEL 0\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "_POSIX_VERSION 200809L\0"
	.byte	0x1
	.uleb128 0x1ab
	.ascii "_POSIX2_VERSION 200809L\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "_POSIX_ADVISORY_INFO 200809L\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "_POSIX_ASYNCHRONOUS_IO 200809L\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "_POSIX_BARRIERS 200809L\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "_POSIX_CHOWN_RESTRICTED 1\0"
	.byte	0x1
	.uleb128 0x1c3
	.ascii "_POSIX_CLOCK_SELECTION 200809L\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "_POSIX_CPUTIME 200809L\0"
	.byte	0x1
	.uleb128 0x1c5
	.ascii "_POSIX_FSYNC 200809L\0"
	.byte	0x1
	.uleb128 0x1c6
	.ascii "_POSIX_IPV6 200809L\0"
	.byte	0x1
	.uleb128 0x1c7
	.ascii "_POSIX_JOB_CONTROL 1\0"
	.byte	0x1
	.uleb128 0x1c8
	.ascii "_POSIX_MAPPED_FILES 200809L\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "_POSIX_MEMLOCK_RANGE 200809L\0"
	.byte	0x1
	.uleb128 0x1cb
	.ascii "_POSIX_MEMORY_PROTECTION 200809L\0"
	.byte	0x1
	.uleb128 0x1cc
	.ascii "_POSIX_MESSAGE_PASSING 200809L\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "_POSIX_MONOTONIC_CLOCK 200809L\0"
	.byte	0x1
	.uleb128 0x1ce
	.ascii "_POSIX_NO_TRUNC 1\0"
	.byte	0x1
	.uleb128 0x1d0
	.ascii "_POSIX_PRIORITY_SCHEDULING 200809L\0"
	.byte	0x1
	.uleb128 0x1d1
	.ascii "_POSIX_RAW_SOCKETS 200809L\0"
	.byte	0x1
	.uleb128 0x1d2
	.ascii "_POSIX_READER_WRITER_LOCKS 200809L\0"
	.byte	0x1
	.uleb128 0x1d3
	.ascii "_POSIX_REALTIME_SIGNALS 200809L\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "_POSIX_REGEXP 1\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "_POSIX_SAVED_IDS 1\0"
	.byte	0x1
	.uleb128 0x1d6
	.ascii "_POSIX_SEMAPHORES 200809L\0"
	.byte	0x1
	.uleb128 0x1d7
	.ascii "_POSIX_SHARED_MEMORY_OBJECTS 200809L\0"
	.byte	0x1
	.uleb128 0x1d8
	.ascii "_POSIX_SHELL 1\0"
	.byte	0x1
	.uleb128 0x1d9
	.ascii "_POSIX_SPAWN 200809L\0"
	.byte	0x1
	.uleb128 0x1da
	.ascii "_POSIX_SPIN_LOCKS 200809L\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "_POSIX_SYNCHRONIZED_IO 200809L\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "_POSIX_THREAD_ATTR_STACKADDR 200809L\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "_POSIX_THREAD_ATTR_STACKSIZE 200809L\0"
	.byte	0x1
	.uleb128 0x1df
	.ascii "_POSIX_THREAD_CPUTIME 200809L\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "_POSIX_THREAD_PRIORITY_SCHEDULING 200809L\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "_POSIX_THREAD_PROCESS_SHARED 200809L\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "_POSIX_THREAD_SAFE_FUNCTIONS 200809L\0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "_POSIX_THREADS 200809L\0"
	.byte	0x1
	.uleb128 0x1e7
	.ascii "_POSIX_TIMEOUTS 200809L\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "_POSIX_TIMERS 200809L\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "_POSIX_VDISABLE '\\0'\0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "_POSIX2_C_VERSION _POSIX2_VERSION\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "_POSIX2_C_BIND _POSIX2_VERSION\0"
	.byte	0x1
	.uleb128 0x1f3
	.ascii "_POSIX2_C_DEV _POSIX2_VERSION\0"
	.byte	0x1
	.uleb128 0x1f4
	.ascii "_POSIX2_CHAR_TERM _POSIX2_VERSION\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "_POSIX2_SW_DEV _POSIX2_VERSION\0"
	.byte	0x1
	.uleb128 0x1ff
	.ascii "_POSIX2_UPE _POSIX2_VERSION\0"
	.byte	0x1
	.uleb128 0x202
	.ascii "_POSIX_V6_ILP32_OFF32 -1\0"
	.byte	0x1
	.uleb128 0x204
	.ascii "_POSIX_V6_ILP32_OFFBIG -1\0"
	.byte	0x1
	.uleb128 0x205
	.ascii "_POSIX_V6_LP64_OFF64 1\0"
	.byte	0x1
	.uleb128 0x206
	.ascii "_POSIX_V6_LPBIG_OFFBIG 1\0"
	.byte	0x1
	.uleb128 0x20c
	.ascii "_POSIX_V7_ILP32_OFF32 _POSIX_V6_ILP32_OFF32\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "_POSIX_V7_ILP32_OFFBIG _POSIX_V6_ILP32_OFFBIG\0"
	.byte	0x1
	.uleb128 0x20e
	.ascii "_POSIX_V7_LP64_OFF64 _POSIX_V6_LP64_OFF64\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "_POSIX_V7_LPBIG_OFFBIG _POSIX_V6_LPBIG_OFFBIG\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "_XBS5_ILP32_OFF32 _POSIX_V6_ILP32_OFF32\0"
	.byte	0x1
	.uleb128 0x211
	.ascii "_XBS5_ILP32_OFFBIG _POSIX_V6_ILP32_OFFBIG\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "_XBS5_LP64_OFF64 _POSIX_V6_LP64_OFF64\0"
	.byte	0x1
	.uleb128 0x213
	.ascii "_XBS5_LPBIG_OFFBIG _POSIX_V6_LPBIG_OFFBIG\0"
	.byte	0x1
	.uleb128 0x226
	.ascii "__STDC_ISO_10646__ 201806L\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xe0
	.ascii "_POINTER_INT long\0"
	.byte	0x2
	.uleb128 0xe6
	.ascii "__RAND_MAX\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "__RAND_MAX 0x7fffffff\0"
	.file 11 "/usr/include/cygwin/config.h"
	.byte	0x3
	.uleb128 0xee
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x12
	.ascii "_CYGWIN_CONFIG_H \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "__DYNAMIC_REENT__ \0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__CYGTLS_PADSIZE__ 12800\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "_SYMSTR(x) #x\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__FILENAME_MAX__ 4096\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "_READ_WRITE_RETURN_TYPE _ssize_t\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "_READ_WRITE_BUFSIZE_TYPE size_t\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__LINUX_ERRNO_EXTENSIONS__ 1\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_MB_EXTENDED_CHARSETS_ALL 1\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__HAVE_LOCALE_INFO__ 1\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "__HAVE_LOCALE_INFO_EXTENDED__ 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_WANT_C99_TIME_FORMATS 1\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_GLIBC_EXTENSION 1\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_STDIO_BSD_SEMANTICS 1\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__TM_GMTOFF tm_gmtoff\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__TM_ZONE tm_zone\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_USE_LONG_TIME_T 1\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "_REENT_BACKWARD_BINARY_COMPAT 1\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__EXPORT \0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "__IMPORT __declspec(dllimport)\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "DEFAULT_LOCALE \"C.UTF-8\"\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x122
	.ascii "_USE_GDTOA \0"
	.byte	0x1
	.uleb128 0x136
	.ascii "_MB_EXTENDED_CHARSETS_ISO 1\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "_MB_EXTENDED_CHARSETS_WINDOWS 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1f
	.ascii "_BEGIN_STD_C \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "_END_STD_C \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "_NOTHROW \0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_LONG_DOUBLE long double\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "_ATTRIBUTE(attrs) __attribute__ (attrs)\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_ELIDABLE_INLINE static __inline__\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_NOINLINE __attribute__ ((__noinline__))\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_NOINLINE_STATIC _NOINLINE static\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1f
	.ascii "_FSTDIO \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__need_NULL \0"
	.file 12 "/usr/include/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2b
	.ascii "_SYS_CDEFS_H_ \0"
	.file 13 "/usr/include/machine/_default_types.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x6
	.ascii "_MACHINE__DEFAULT_TYPES_H \0"
	.byte	0x1
	.uleb128 0xf
	.ascii "__EXP(x) __ ##x ##__\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "__have_longlong64 1\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__have_long64 1\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "___int8_t_defined 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "___int16_t_defined 1\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "___int32_t_defined 1\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "___int64_t_defined 1\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "___int_least8_t_defined 1\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "___int_least16_t_defined 1\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "___int_least32_t_defined 1\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "___int_least64_t_defined 1\0"
	.byte	0x2
	.uleb128 0xf4
	.ascii "__EXP\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb9
	.ascii "__size_t__ \0"
	.byte	0x1
	.uleb128 0xba
	.ascii "__SIZE_T__ \0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "_SIZE_T \0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "_SYS_SIZE_T_H \0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "_T_SIZE_ \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "_T_SIZE \0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "__SIZE_T \0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "_BSD_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_BSD_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "_SIZE_T_DECLARED \0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "__DEFINED_size_t \0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "___int_size_t_h \0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "_GCC_SIZE_T \0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "_SIZET_ \0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "__size_t \0"
	.byte	0x2
	.uleb128 0xed
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x18f
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19a
	.ascii "__need_NULL\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x31
	.ascii "__PMT(args) args\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__DOTS , ...\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__THROW \0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__ptr_t void *\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__long_double_t long double\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "__attribute_malloc__ \0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__attribute_pure__ \0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "__attribute_format_strfmon__(a,b) \0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__flexarr [0]\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__bounded \0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__unbounded \0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__ptrvalue \0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "__has_extension __has_feature\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "__has_feature(x) 0\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "__BEGIN_DECLS \0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__END_DECLS \0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "__GNUCLIKE_ASM 3\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__GNUCLIKE_MATH_BUILTIN_CONSTANTS \0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__GNUCLIKE___TYPEOF 1\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "__GNUCLIKE___SECTION 1\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "__GNUCLIKE_CTOR_SECTION_HANDLING 1\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__GNUCLIKE_BUILTIN_CONSTANT_P 1\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "__GNUCLIKE_BUILTIN_VARARGS 1\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "__GNUCLIKE_BUILTIN_STDARG 1\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "__GNUCLIKE_BUILTIN_VAALIST 1\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "__GNUC_VA_LIST_COMPATIBILITY 1\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "__compiler_membar() __asm __volatile(\" \" : : : \"memory\")\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "__GNUCLIKE_BUILTIN_NEXT_ARG 1\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "__GNUCLIKE_MATH_BUILTIN_RELOPS \0"
	.byte	0x1
	.uleb128 0x87
	.ascii "__GNUCLIKE_BUILTIN_MEMCPY 1\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "__CC_SUPPORTS_INLINE 1\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "__CC_SUPPORTS___INLINE 1\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__CC_SUPPORTS___INLINE__ 1\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "__CC_SUPPORTS___FUNC__ 1\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "__CC_SUPPORTS_WARNING 1\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "__CC_SUPPORTS_VARADIC_XXX 1\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "__P(protos) protos\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "__CONCAT1(x,y) x ## y\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "__CONCAT(x,y) __CONCAT1(x,y)\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "__STRING(x) #x\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "__XSTRING(x) __STRING(x)\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__const const\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__signed signed\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "__volatile volatile\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "__weak_symbol __attribute__((__weak__))\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "__dead2 __attribute__((__noreturn__))\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "__pure2 __attribute__((__const__))\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "__unused __attribute__((__unused__))\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "__used __attribute__((__used__))\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "__packed __attribute__((__packed__))\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "__aligned(x) __attribute__((__aligned__(x)))\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "__section(x) __attribute__((__section__(x)))\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "__alloc_size(x) __attribute__((__alloc_size__(x)))\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "__alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "__alloc_align(x) __attribute__((__alloc_align__(x)))\0"
	.byte	0x1
	.uleb128 0x152
	.ascii "__generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)\0"
	.byte	0x1
	.uleb128 0x164
	.ascii "__min_size(x) static (x)\0"
	.byte	0x1
	.uleb128 0x16a
	.ascii "__malloc_like __attribute__((__malloc__))\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "__pure __attribute__((__pure__))\0"
	.byte	0x1
	.uleb128 0x172
	.ascii "__always_inline __inline__ __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "__noinline __attribute__ ((__noinline__))\0"
	.byte	0x1
	.uleb128 0x17e
	.ascii "__nonnull(x) __attribute__((__nonnull__ x))\0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "__nonnull_all __attribute__((__nonnull__))\0"
	.byte	0x1
	.uleb128 0x186
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0x187
	.ascii "__result_use_check __attribute__((__warn_unused_result__))\0"
	.byte	0x1
	.uleb128 0x18e
	.ascii "__returns_twice __attribute__((__returns_twice__))\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "__unreachable() __builtin_unreachable()\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "__restrict restrict\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "__restrict_arr restrict\0"
	.byte	0x1
	.uleb128 0x1d4
	.ascii "__predict_true(exp) __builtin_expect((exp), 1)\0"
	.byte	0x1
	.uleb128 0x1d5
	.ascii "__predict_false(exp) __builtin_expect((exp), 0)\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "__null_sentinel __attribute__((__sentinel__))\0"
	.byte	0x1
	.uleb128 0x1dd
	.ascii "__exported __attribute__((__visibility__(\"default\")))\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "__hidden \0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "__offsetof(type,field) offsetof(type, field)\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))\0"
	.byte	0x1
	.uleb128 0x1f5
	.ascii "__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})\0"
	.byte	0x1
	.uleb128 0x20b
	.ascii "__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x20d
	.ascii "__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x20f
	.ascii "__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))\0"
	.byte	0x1
	.uleb128 0x210
	.ascii "__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x21c
	.ascii "__printf0like(fmtarg,firstvararg) \0"
	.byte	0x1
	.uleb128 0x220
	.ascii "__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))\0"
	.byte	0x1
	.uleb128 0x23e
	.ascii "__weak_reference(sym,alias) __asm__(\".stabs \\\"_\" #alias \"\\\",11,0,0,0\"); __asm__(\".stabs \\\"_\" #sym \"\\\",1,0,0,0\")\0"
	.byte	0x1
	.uleb128 0x241
	.ascii "__warn_references(sym,msg) __asm__(\".stabs \\\"\" msg \"\\\",30,0,0,0\"); __asm__(\".stabs \\\"_\" #sym \"\\\",1,0,0,0\")\0"
	.byte	0x1
	.uleb128 0x250
	.ascii "__FBSDID(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x254
	.ascii "__RCSID(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x258
	.ascii "__RCSID_SOURCE(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x25c
	.ascii "__SCCSID(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x260
	.ascii "__COPYRIGHT(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))\0"
	.byte	0x1
	.uleb128 0x268
	.ascii "__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))\0"
	.byte	0x1
	.uleb128 0x26c
	.ascii "__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "_Nonnull \0"
	.byte	0x1
	.uleb128 0x274
	.ascii "_Nullable \0"
	.byte	0x1
	.uleb128 0x275
	.ascii "_Null_unspecified \0"
	.byte	0x1
	.uleb128 0x276
	.ascii "__NULLABILITY_PRAGMA_PUSH \0"
	.byte	0x1
	.uleb128 0x277
	.ascii "__NULLABILITY_PRAGMA_POP \0"
	.byte	0x1
	.uleb128 0x28c
	.ascii "__arg_type_tag(arg_kind,arg_idx,type_tag_idx) \0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "__datatype_type_tag(kind,type) \0"
	.byte	0x1
	.uleb128 0x29f
	.ascii "__lock_annotate(x) \0"
	.byte	0x1
	.uleb128 0x2a5
	.ascii "__lockable __lock_annotate(lockable)\0"
	.byte	0x1
	.uleb128 0x2a8
	.ascii "__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2aa
	.ascii "__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2b0
	.ascii "__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2b4
	.ascii "__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2bd
	.ascii "__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2bf
	.ascii "__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2c5
	.ascii "__no_lock_analysis __lock_annotate(no_thread_safety_analysis)\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "__nosanitizeaddress \0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "__nosanitizememory \0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "__nosanitizethread \0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "__guarded_by(x) __lock_annotate(guarded_by(x))\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "__builtin_is_aligned(x,align) (((__uintptr_t)x & ((align) - 1)) == 0)\0"
	.byte	0x1
	.uleb128 0x2e6
	.ascii "__builtin_align_up(x,align) ((__typeof__(x))(((__uintptr_t)(x)+((align)-1))&(~((align)-1))))\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "__builtin_align_down(x,align) ((__typeof__(x))((x)&(~((align)-1))))\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "__align_up(x,y) __builtin_align_up(x, y)\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "__align_down(x,y) __builtin_align_down(x, y)\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "__is_aligned(x,y) __builtin_is_aligned(x, y)\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x27
	.ascii "_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_STDDEF_H_ \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_ANSI_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x84
	.ascii "_PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x85
	.ascii "_T_PTRDIFF_ \0"
	.byte	0x1
	.uleb128 0x86
	.ascii "_T_PTRDIFF \0"
	.byte	0x1
	.uleb128 0x87
	.ascii "__PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x88
	.ascii "_PTRDIFF_T_ \0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_BSD_PTRDIFF_T_ \0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "___int_ptrdiff_t_h \0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "_GCC_PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "_PTRDIFF_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__DEFINED_ptrdiff_t \0"
	.byte	0x2
	.uleb128 0x9e
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0xed
	.ascii "__need_size_t\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__wchar_t__ \0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__WCHAR_T__ \0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "_T_WCHAR_ \0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "_T_WCHAR \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__WCHAR_T \0"
	.byte	0x1
	.uleb128 0x111
	.ascii "_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x112
	.ascii "_BSD_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x113
	.ascii "_WCHAR_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0x114
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x116
	.ascii "___int_wchar_t_h \0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__INT_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x118
	.ascii "_GCC_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x119
	.ascii "_WCHAR_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "__DEFINED_wchar_t \0"
	.byte	0x2
	.uleb128 0x127
	.ascii "_BSD_WCHAR_T_\0"
	.byte	0x2
	.uleb128 0x15d
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x18f
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19a
	.ascii "__need_NULL\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "_GCC_MAX_ALIGN_T \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x27
	.ascii "__need___va_list \0"
	.file 14 "/usr/lib/gcc/x86_64-pc-cygwin/12/include/stdarg.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0xe
	.byte	0x2
	.uleb128 0x22
	.ascii "__need___va_list\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__GNUC_VA_LIST \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2f
	.ascii "_VA_LIST_DEFINED \0"
	.file 15 "/usr/include/sys/reent.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0xf
	.byte	0x1
	.uleb128 0xb
	.ascii "_SYS_REENT_H_ \0"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x4
	.file 16 "/usr/include/sys/_types.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x14
	.ascii "_SYS__TYPES_H \0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__need_wint_t \0"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x9e
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0xed
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x15d
	.ascii "__need_wchar_t\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "_WINT_T \0"
	.byte	0x2
	.uleb128 0x169
	.ascii "__need_wint_t\0"
	.byte	0x2
	.uleb128 0x18f
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19a
	.ascii "__need_NULL\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"
	.byte	0x4
	.file 17 "/usr/include/machine/_types.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x4
	.ascii "_MACHINE__TYPES_H \0"
	.byte	0x1
	.uleb128 0x8
	.ascii "__machine_blkcnt_t_defined \0"
	.byte	0x1
	.uleb128 0xb
	.ascii "__machine_blksize_t_defined \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__machine_dev_t_defined \0"
	.byte	0x1
	.uleb128 0x11
	.ascii "__machine_fsblkcnt_t_defined \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "__machine_fsfilcnt_t_defined \0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__machine_uid_t_defined \0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "__machine_gid_t_defined \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__machine_ino_t_defined \0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__machine_key_t_defined \0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__machine_sa_family_t_defined \0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__machine_socklen_t_defined \0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x7f
	.ascii "__size_t\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "unsigned signed\0"
	.byte	0x2
	.uleb128 0x94
	.ascii "unsigned\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "_CLOCK_T_ unsigned long\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "_TIME_T_ long\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_CLOCKID_T_ unsigned long\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "_TIMER_T_ unsigned long\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x12
	.ascii "_NULL 0\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__Long int\0"
	.file 18 "/usr/include/sys/lock.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x12
	.byte	0x1
	.uleb128 0xa
	.ascii "_SYS_LOCK_H_ \0"
	.byte	0x1
	.uleb128 0xd
	.ascii "_LOCK_RECURSIVE_T _LOCK_T\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "_LOCK_T_RECURSIVE_INITIALIZER ((_LOCK_T)18)\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_LOCK_T_INITIALIZER ((_LOCK_T)19)\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__LOCK_INIT(CLASS,NAME) CLASS _LOCK_T NAME = _LOCK_T_INITIALIZER;\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__LOCK_INIT_RECURSIVE(CLASS,NAME) CLASS _LOCK_T NAME = _LOCK_T_RECURSIVE_INITIALIZER;\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "__lock_init(__lock) __cygwin_lock_init(&__lock)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "__lock_init_recursive(__lock) __cygwin_lock_init_recursive(&__lock)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__lock_close(__lock) __cygwin_lock_fini(&__lock)\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "__lock_close_recursive(__lock) __cygwin_lock_fini(&__lock)\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__lock_acquire(__lock) __cygwin_lock_lock(&__lock)\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__lock_acquire_recursive(__lock) __cygwin_lock_lock(&__lock)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__lock_try_acquire(lock) __cygwin_lock_trylock(&__lock)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__lock_try_acquire_recursive(lock) __cygwin_lock_trylock(&__lock)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__lock_release(__lock) __cygwin_lock_unlock(&__lock)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__lock_release_recursive(__lock) __cygwin_lock_unlock(&__lock)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x4e
	.ascii "_ATEXIT_SIZE 32\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "_ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "_REENT_SMALL_CHECK_INIT(ptr) \0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "_fpos64_t _fpos_t\0"
	.byte	0x1
	.uleb128 0x12b
	.ascii "_RAND48_SEED_0 (0x330e)\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "_RAND48_SEED_1 (0xabcd)\0"
	.byte	0x1
	.uleb128 0x12d
	.ascii "_RAND48_SEED_2 (0x1234)\0"
	.byte	0x1
	.uleb128 0x12e
	.ascii "_RAND48_MULT_0 (0xe66d)\0"
	.byte	0x1
	.uleb128 0x12f
	.ascii "_RAND48_MULT_1 (0xdeec)\0"
	.byte	0x1
	.uleb128 0x130
	.ascii "_RAND48_MULT_2 (0x0005)\0"
	.byte	0x1
	.uleb128 0x131
	.ascii "_RAND48_ADD (0x000b)\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "_REENT_EMERGENCY_SIZE 25\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "_REENT_ASCTIME_SIZE 26\0"
	.byte	0x1
	.uleb128 0x13f
	.ascii "_REENT_SIGNAL_SIZE 24\0"
	.byte	0x1
	.uleb128 0x144
	.ascii "_REENT_INIT_RESERVED_0 0,\0"
	.byte	0x1
	.uleb128 0x145
	.ascii "_REENT_INIT_RESERVED_1 0,\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "_REENT_INIT_RESERVED_2 0,\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "_REENT_INIT_RESERVED_6_7 _NULL, _ATEXIT_INIT,\0"
	.byte	0x1
	.uleb128 0x148
	.ascii "_REENT_INIT_RESERVED_8 {_NULL, 0, _NULL},\0"
	.byte	0x1
	.uleb128 0x28d
	.ascii "_REENT_INIT(var) { 0, &__sf[0], &__sf[1], &__sf[2], 0, \"\", _REENT_INIT_RESERVED_1 _NULL, _REENT_INIT_RESERVED_0 _NULL, _NULL, 0, _NULL, _NULL, 0, _NULL, { { _REENT_INIT_RESERVED_2 _NULL, \"\", {0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, \"\", \"\", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_RESERVED_6_7 _NULL }\0"
	.byte	0x1
	.uleb128 0x2bc
	.ascii "_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = &__sf[0]; (var)->_stdout = &__sf[1]; (var)->_stderr = &__sf[2]; (var)->_new._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = _RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_SEED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "_REENT_CHECK_RAND48(ptr) \0"
	.byte	0x1
	.uleb128 0x2cb
	.ascii "_REENT_CHECK_MP(ptr) \0"
	.byte	0x1
	.uleb128 0x2cc
	.ascii "_REENT_CHECK_TM(ptr) \0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "_REENT_CHECK_ASCTIME_BUF(ptr) \0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "_REENT_CHECK_EMERGENCY(ptr) \0"
	.byte	0x1
	.uleb128 0x2cf
	.ascii "_REENT_CHECK_MISC(ptr) \0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "_REENT_CHECK_SIGNAL_BUF(ptr) \0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "_REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "_REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "_REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)\0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "_REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "_REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)\0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "_REENT_MP_RESULT(ptr) ((ptr)->_result)\0"
	.byte	0x1
	.uleb128 0x2d8
	.ascii "_REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)\0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "_REENT_MP_P5S(ptr) ((ptr)->_p5s)\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "_REENT_MP_FREELIST(ptr) ((ptr)->_freelist)\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "_REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "_REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "_REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)\0"
	.byte	0x1
	.uleb128 0x2de
	.ascii "_REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "_REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)\0"
	.byte	0x1
	.uleb128 0x2e0
	.ascii "_REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)\0"
	.byte	0x1
	.uleb128 0x2e1
	.ascii "_REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "_REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)\0"
	.byte	0x1
	.uleb128 0x2e3
	.ascii "_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)\0"
	.byte	0x1
	.uleb128 0x2e4
	.ascii "_REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)\0"
	.byte	0x1
	.uleb128 0x2e7
	.ascii "_REENT_C8RTOMB_STATE(ptr) ((ptr)->_new._reent._c8rtomb_state)\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "_REENT_C16RTOMB_STATE(ptr) ((ptr)->_new._reent._c16rtomb_state)\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "_REENT_C32RTOMB_STATE(ptr) ((ptr)->_new._reent._c32rtomb_state)\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "_REENT_MBRTOC8_STATE(ptr) ((ptr)->_new._reent._mbrtoc8_state)\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "_REENT_MBRTOC16_STATE(ptr) ((ptr)->_new._reent._mbrtoc16_state)\0"
	.byte	0x1
	.uleb128 0x2ec
	.ascii "_REENT_MBRTOC32_STATE(ptr) ((ptr)->_new._reent._mbrtoc32_state)\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "_REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "_REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "_REENT_CLEANUP(_ptr) ((_ptr)->__cleanup)\0"
	.byte	0x1
	.uleb128 0x2f5
	.ascii "_REENT_CVTBUF(_ptr) ((_ptr)->_cvtbuf)\0"
	.byte	0x1
	.uleb128 0x2f6
	.ascii "_REENT_CVTLEN(_ptr) ((_ptr)->_cvtlen)\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "_REENT_EMERGENCY(_ptr) ((_ptr)->_emergency)\0"
	.byte	0x1
	.uleb128 0x2f8
	.ascii "_REENT_ERRNO(_ptr) ((_ptr)->_errno)\0"
	.byte	0x1
	.uleb128 0x2f9
	.ascii "_REENT_INC(_ptr) ((_ptr)->_inc)\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "_REENT_LOCALE(_ptr) ((_ptr)->_locale)\0"
	.byte	0x1
	.uleb128 0x2fb
	.ascii "_REENT_SIG_FUNC(_ptr) ((_ptr)->_sig_func)\0"
	.byte	0x1
	.uleb128 0x2fc
	.ascii "_REENT_STDIN(_ptr) ((_ptr)->_stdin)\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "_REENT_STDOUT(_ptr) ((_ptr)->_stdout)\0"
	.byte	0x1
	.uleb128 0x2fe
	.ascii "_REENT_STDERR(_ptr) ((_ptr)->_stderr)\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }\0"
	.byte	0x1
	.uleb128 0x30b
	.ascii "__ATTRIBUTE_IMPURE_PTR__ \0"
	.byte	0x1
	.uleb128 0x311
	.ascii "__ATTRIBUTE_IMPURE_DATA__ \0"
	.byte	0x1
	.uleb128 0x31c
	.ascii "_REENT (__getreent())\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "_REENT_IS_NULL(_ptr) ((_ptr) == NULL)\0"
	.byte	0x1
	.uleb128 0x323
	.ascii "_GLOBAL_REENT (&_impure_data)\0"
	.byte	0x1
	.uleb128 0x382
	.ascii "_Kmax (sizeof (size_t) << 3)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x43
	.ascii "__FILE_defined \0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "_OFF_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x52
	.ascii "_SSIZE_T_DECLARED \0"
	.file 19 "/usr/include/sys/stdio.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xa
	.ascii "_SYS_STDIO_H_ \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_flockfile(fp) ({ if (!((fp)->_flags & __SSTR)) __cygwin_lock_lock ((_LOCK_T *)&(fp)->_lock); })\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "_ftrylockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __cygwin_lock_trylock ((_LOCK_T *)&(fp)->_lock))\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "_funlockfile(fp) ({ if (!((fp)->_flags & __SSTR)) __cygwin_lock_unlock ((_LOCK_T *)&(fp)->_lock); })\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x57
	.ascii "__SLBF 0x0001\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "__SNBF 0x0002\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "__SRD 0x0004\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "__SWR 0x0008\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__SRW 0x0010\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "__SEOF 0x0020\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "__SERR 0x0040\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__SMBF 0x0080\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "__SAPP 0x0100\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "__SSTR 0x0200\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "__SOPT 0x0400\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "__SNPT 0x0800\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "__SOFF 0x1000\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__SORD 0x2000\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__SCLE 0x4000\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "__SL64 0x8000\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__SNLK 0x0001\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__SWID 0x2000\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "_IOFBF 0\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "_IOLBF 1\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "_IONBF 2\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "EOF (-1)\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "BUFSIZ 1024\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "FOPEN_MAX 20\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "FILENAME_MAX __FILENAME_MAX__\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "L_tmpnam FILENAME_MAX\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "P_tmpdir \"/tmp\"\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "SEEK_SET 0\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "SEEK_END 2\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "TMP_MAX 26\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "stdin _REENT_STDIN(_REENT)\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "stdout _REENT_STDOUT(_REENT)\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "stderr _REENT_STDERR(_REENT)\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "_stdin_r(x) _REENT_STDIN(x)\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "_stdout_r(x) _REENT_STDOUT(x)\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "_stderr_r(x) _REENT_STDERR(x)\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "__VALIST __gnuc_va_list\0"
	.byte	0x1
	.uleb128 0x26f
	.ascii "fropen(__cookie,__fn) funopen(__cookie, __fn, NULL, NULL, NULL)\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "fwopen(__cookie,__fn) funopen(__cookie, NULL, __fn, NULL, NULL)\0"
	.byte	0x1
	.uleb128 0x292
	.ascii "__sgetc_raw_r(__ptr,__f) (--(__f)->_r < 0 ? __srget_r(__ptr, __f) : (int)(*(__f)->_p++))\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "__sfeof(p) ((int)(((p)->_flags & __SEOF) != 0))\0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "__sferror(p) ((int)(((p)->_flags & __SERR) != 0))\0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "__sclearerr(p) ((void)((p)->_flags &= ~(__SERR|__SEOF)))\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "__sfileno(p) ((p)->_file)\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "feof(p) __sfeof(p)\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "ferror(p) __sferror(p)\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "clearerr(p) __sclearerr(p)\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "feof_unlocked(p) __sfeof(p)\0"
	.byte	0x1
	.uleb128 0x2e0
	.ascii "ferror_unlocked(p) __sferror(p)\0"
	.byte	0x1
	.uleb128 0x2e1
	.ascii "clearerr_unlocked(p) __sclearerr(p)\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "getchar_unlocked() _getchar_unlocked()\0"
	.byte	0x1
	.uleb128 0x304
	.ascii "putchar_unlocked(_c) _putchar_unlocked(_c)\0"
	.byte	0x1
	.uleb128 0x30a
	.ascii "fast_putc(x,p) (--(p)->_w < 0 ? __swbuf_r(_REENT, (int)(x), p) == EOF : (*(p)->_p = (x), (p)->_p++, 0))\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "L_ctermid 16\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x8
	.ascii "_STDLIB_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0xf
	.ascii "__need_NULL \0"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x2
	.uleb128 0x9e
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0xed
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x15d
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x18f
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x194
	.ascii "NULL ((void *)0)\0"
	.byte	0x2
	.uleb128 0x19a
	.ascii "__need_NULL\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"
	.byte	0x4
	.file 20 "/usr/include/machine/stdlib.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x14
	.byte	0x1
	.uleb128 0xa
	.ascii "_MACHSTDLIB_H_ \0"
	.byte	0x4
	.file 21 "/usr/include/alloca.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x8
	.ascii "_NEWLIB_ALLOCA_H \0"
	.byte	0x2
	.uleb128 0xd
	.ascii "alloca\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "alloca(size) __builtin_alloca(size)\0"
	.byte	0x4
	.file 22 "/usr/include/cygwin/stdlib.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x16
	.byte	0x1
	.uleb128 0xa
	.ascii "_CYGWIN_STDLIB_H \0"
	.file 23 "/usr/include/cygwin/wait.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xa
	.ascii "_CYGWIN_WAIT_H \0"
	.byte	0x1
	.uleb128 0xc
	.ascii "WAIT_ANY (pid_t)-1\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "WAIT_MYPGRP (pid_t)0\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "WNOHANG 1\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "WUNTRACED 2\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WCONTINUED 8\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "__W_CONTINUED 0xffff\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "__WCOREFLAG 0x80\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "WIFEXITED(_w) (((_w) & 0xff) == 0)\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "WIFSIGNALED(_w) (((_w) & 0x7f) > 0 && (((_w) & 0x7f) < 0x7f))\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "WIFSTOPPED(_w) (((_w) & 0xff) == 0x7f)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "WIFCONTINUED(_w) (((_w) & 0xffff) == __W_CONTINUED)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "WEXITSTATUS(_w) (((_w) >> 8) & 0xff)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "WTERMSIG(_w) ((_w) & 0x7f)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "WSTOPSIG WEXITSTATUS\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "WCOREDUMP(_w) (WIFSIGNALED(_w) && ((_w) & __WCOREFLAG))\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x38
	.ascii "_malloc_r\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_malloc_r(r,s) malloc (s)\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "_free_r\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "_free_r(r,p) free (p)\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "_realloc_r\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_realloc_r(r,p,s) realloc (p, s)\0"
	.byte	0x2
	.uleb128 0x3e
	.ascii "_calloc_r\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "_calloc_r(r,s1,s2) calloc (s1, s2);\0"
	.byte	0x2
	.uleb128 0x40
	.ascii "_memalign_r\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "_memalign_r(r,s1,s2) memalign (s1, s2);\0"
	.byte	0x2
	.uleb128 0x42
	.ascii "_mallinfo_r\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "_mallinfo_r(r) mallinfo ()\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "_malloc_stats_r\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_malloc_stats_r(r) malloc_stats ()\0"
	.byte	0x2
	.uleb128 0x46
	.ascii "_mallopt_r\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_mallopt_r(i1,i2) mallopt (i1, i2)\0"
	.byte	0x2
	.uleb128 0x48
	.ascii "_malloc_usable_size_r\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_malloc_usable_size_r(r,p) malloc_usable_size (p)\0"
	.byte	0x2
	.uleb128 0x4a
	.ascii "_valloc_r\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "_valloc_r(r,s) valloc (s)\0"
	.byte	0x2
	.uleb128 0x4c
	.ascii "_pvalloc_r\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "_pvalloc_r(r,s) pvalloc (s)\0"
	.byte	0x2
	.uleb128 0x4e
	.ascii "_malloc_trim_r\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "_malloc_trim_r(r,s) malloc_trim (s)\0"
	.byte	0x2
	.uleb128 0x50
	.ascii "_mstats_r\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "_mstats_r(r,p) mstats (p)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x38
	.ascii "__compar_fn_t_defined \0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "EXIT_FAILURE 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "EXIT_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "RAND_MAX __RAND_MAX\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "MB_CUR_MAX __locale_mb_cur_max()\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "strtodf strtof\0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
	.section	.debug_line_str,"dr"
.LASF1:
	.ascii "/cygdrive/c/Users/sudhe/eclipse-workspace/C_Memory_layout/Debug\0"
.LASF0:
	.ascii "../src/memory.c\0"
	.ident	"GCC: (GNU) 12.4.0"
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
