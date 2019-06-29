.data
num:  .word  0x11223344,0x55667788,0x99aabbcc,0x77770000,0x7fffffff,0x8000fff,0xcccc,0x9999,0xffff,0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x2019

.text
.globl main
main:
     la $s0,num
     li	$t0,20;
L1:lw	$t1,0($s0);  
     addi	$t1,$t1,-100;
     sw	$t1,0($s0); 
     addi  $s0,$s0,4; 
     addi  $t0,$t0,-1;
     bne	$t0,$zero,L1
     jr ra	#return to caller	
