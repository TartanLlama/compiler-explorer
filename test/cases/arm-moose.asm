; Listing generated by Microsoft (R) Optimizing Compiler Version 19.00.24224.0 

	TTL	Z:\tmp\example.cpp
	THUMB
	.drectve
	DCB	"-defaultlib:LIBCMT "
	DCB	"-defaultlib:OLDNAMES "

	EXPORT	|?moose@@YAHHH@Z|			; moose
	.pdata
|$pdata1$?moose@@YAHHH@Z| DCD imagerel |?moose@@YAHHH@Z|
	DCD	0xfd1160d5
; Function compile flags: /Ogtpy
; File z:\tmp\example.cpp
	.text$mn

  00000		 |?moose@@YAHHH@Z| PROC			; moose

; 3    : int moose(int x, int y) {

  00000	b538		 push        {r3-r5,lr}
  00002		 |$M22|
  00002	4605		 mov         r5,r0

; 4    :     int foo = 1;

  00004	2001		 movs        r0,#1

; 5    :     for (int i = 0; i < y; ++i)

  00006	2400		 movs        r4,#0
  00008	eea4 5b90	 vdup.32     q10,r5
  0000c	2900		 cmp         r1,#0
  0000e	dd2b		 ble         |$LN18@moose|
  00010	2908		 cmp         r1,#8
  00012	d321		 bcc         |$LN11@moose|
  00014	108b		 asrs        r3,r1,#2
  00016	eb01 7353	 add         r3,r1,r3,lsr #0x1D
  0001a	10db		 asrs        r3,r3,#3
  0001c	eba1 03c3	 sub         r3,r1,r3,lsl #3
  00020	efc0 0e70	 vmov.i64    q8,#0
  00024	1acb		 subs        r3,r1,r3
  00026	ef60 21f0	 vmov        q9,q8
  0002a	ef64 49f4	 vmul.i32    q10,q10,q10
  0002e		 |$LL4@moose|
  0002e	3408		 adds        r4,r4,#8
  00030	429c		 cmp         r4,r3
  00032	ef64 08e0	 vadd.i32    q8,q10,q8
  00036	ef64 28e2	 vadd.i32    q9,q10,q9
  0003a	dbf8		 blt         |$LL4@moose|
  0003c	ef62 08e0	 vadd.i32    q8,q9,q8
  00040	ee31 2b90	 vmov.32     r2,d17[1]
  00044	ee11 3b90	 vmov.32     r3,d17[0]
  00048	441a		 add         r2,r2,r3
  0004a	ee30 3b90	 vmov.32     r3,d16[1]
  0004e	441a		 add         r2,r2,r3
  00050	ee10 3b90	 vmov.32     r3,d16[0]
  00054	4413		 add         r3,r3,r2
  00056	1c58		 adds        r0,r3,#1
  00058		 |$LN11@moose|
  00058	428c		 cmp         r4,r1
  0005a	da04		 bge         |$LN17@moose|
  0005c	1b0b		 subs        r3,r1,r4
  0005e	fb03 f305	 mul         r3,r3,r5
  00062	fb03 0005	 mla         r0,r3,r5,r0
  00066		 |$LN17@moose|
  00066		 |$M20|

; 6    :         foo += thing(x);
; 7    :     return foo;
; 8    : }

  00066	bd38		 pop         {r3-r5,pc}
  00068		 |$LN18@moose|
  00068		 |$M21|
  00068	bd38		 pop         {r3-r5,pc}
  0006a		 |$M23|

			 ENDP  ; |?moose@@YAHHH@Z|, moose

; Function compile flags: /Ogtpy
; File z:\tmp\example.cpp
	.text$mn

  00000		 |?thing@@YAHH@Z| PROC			; thing

; 1    : static int thing(int a) { return a * a; }

  00000	fb00 f000	 mul         r0,r0,r0
  00004		 |$M4|
  00004	4770		 bx          lr

			 ENDP  ; |?thing@@YAHH@Z|, thing

	END
