.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel osPfsDeleteFile
/* 43A00 80068600 27BDFEA8 */  addiu     $sp, $sp, -0x158
/* 43A04 80068604 AFB3014C */  sw        $s3, 0x14C($sp)
/* 43A08 80068608 00809821 */  addu      $s3, $a0, $zero
/* 43A0C 8006860C 30A5FFFF */  andi      $a1, $a1, 0xFFFF
/* 43A10 80068610 AFBF0154 */  sw        $ra, 0x154($sp)
/* 43A14 80068614 AFB40150 */  sw        $s4, 0x150($sp)
/* 43A18 80068618 AFB20148 */  sw        $s2, 0x148($sp)
/* 43A1C 8006861C AFB10144 */  sw        $s1, 0x144($sp)
/* 43A20 80068620 10A00003 */  beqz      $a1, .LIQUE_80068630
/* 43A24 80068624 AFB00140 */   sw       $s0, 0x140($sp)
/* 43A28 80068628 14C00003 */  bnez      $a2, .LIQUE_80068638
/* 43A2C 8006862C 02602021 */   addu     $a0, $s3, $zero
.LIQUE_80068630:
/* 43A30 80068630 0801A1DC */  j         .LIQUE_80068770
/* 43A34 80068634 24020005 */   addiu    $v0, $zero, 0x5
.LIQUE_80068638:
/* 43A38 80068638 8FA20168 */  lw        $v0, 0x168($sp)
/* 43A3C 8006863C 27A30138 */  addiu     $v1, $sp, 0x138
/* 43A40 80068640 AFA30014 */  sw        $v1, 0x14($sp)
/* 43A44 80068644 0C01A35C */  jal       osPfsFindFile
/* 43A48 80068648 AFA20010 */   sw       $v0, 0x10($sp)
/* 43A4C 8006864C 14400049 */  bnez      $v0, .LIQUE_80068774
/* 43A50 80068650 8FBF0154 */   lw       $ra, 0x154($sp)
/* 43A54 80068654 92620065 */  lbu       $v0, 0x65($s3)
/* 43A58 80068658 10400005 */  beqz      $v0, .LIQUE_80068670
/* 43A5C 8006865C 02602021 */   addu     $a0, $s3, $zero
/* 43A60 80068660 0C01A568 */  jal       __osPfsSelectBank
/* 43A64 80068664 00002821 */   addu     $a1, $zero, $zero
/* 43A68 80068668 14400042 */  bnez      $v0, .LIQUE_80068774
/* 43A6C 8006866C 8FBF0154 */   lw       $ra, 0x154($sp)
.LIQUE_80068670:
/* 43A70 80068670 27A70118 */  addiu     $a3, $sp, 0x118
/* 43A74 80068674 8E640004 */  lw        $a0, 0x4($s3)
/* 43A78 80068678 9666005E */  lhu       $a2, 0x5E($s3)
/* 43A7C 8006867C 97A2013A */  lhu       $v0, 0x13A($sp)
/* 43A80 80068680 8E650008 */  lw        $a1, 0x8($s3)
/* 43A84 80068684 00C23021 */  addu      $a2, $a2, $v0
/* 43A88 80068688 0C01A7D8 */  jal       __osContRamRead
/* 43A8C 8006868C 30C6FFFF */   andi     $a2, $a2, 0xFFFF
/* 43A90 80068690 14400038 */  bnez      $v0, .LIQUE_80068774
/* 43A94 80068694 8FBF0154 */   lw       $ra, 0x154($sp)
/* 43A98 80068698 93B0011E */  lbu       $s0, 0x11E($sp)
/* 43A9C 8006869C 92620064 */  lbu       $v0, 0x64($s3)
/* 43AA0 800686A0 0202102B */  sltu      $v0, $s0, $v0
/* 43AA4 800686A4 10400031 */  beqz      $v0, .LIQUE_8006876C
/* 43AA8 800686A8 93B2011F */   lbu      $s2, 0x11F($sp)
/* 43AAC 800686AC 24140001 */  addiu     $s4, $zero, 0x1
.LIQUE_800686B0:
/* 43AB0 800686B0 02602021 */  addu      $a0, $s3, $zero
/* 43AB4 800686B4 27A50018 */  addiu     $a1, $sp, 0x18
/* 43AB8 800686B8 00003021 */  addu      $a2, $zero, $zero
/* 43ABC 800686BC 0C01A731 */  jal       __osPfsRWInode
/* 43AC0 800686C0 02003821 */   addu     $a3, $s0, $zero
/* 43AC4 800686C4 1440002A */  bnez      $v0, .LIQUE_80068770
/* 43AC8 800686C8 27B1013C */   addiu    $s1, $sp, 0x13C
/* 43ACC 800686CC AFB10010 */  sw        $s1, 0x10($sp)
/* 43AD0 800686D0 02602021 */  addu      $a0, $s3, $zero
/* 43AD4 800686D4 27A50018 */  addiu     $a1, $sp, 0x18
/* 43AD8 800686D8 02403021 */  addu      $a2, $s2, $zero
/* 43ADC 800686DC 0C01A1E4 */  jal       __osPfsReleasePages
/* 43AE0 800686E0 02003821 */   addu     $a3, $s0, $zero
/* 43AE4 800686E4 14400022 */  bnez      $v0, .LIQUE_80068770
/* 43AE8 800686E8 02602021 */   addu     $a0, $s3, $zero
/* 43AEC 800686EC 27A50018 */  addiu     $a1, $sp, 0x18
/* 43AF0 800686F0 24060001 */  addiu     $a2, $zero, 0x1
/* 43AF4 800686F4 0C01A731 */  jal       __osPfsRWInode
/* 43AF8 800686F8 02003821 */   addu     $a3, $s0, $zero
/* 43AFC 800686FC 1440001D */  bnez      $v0, .LIQUE_80068774
/* 43B00 80068700 8FBF0154 */   lw       $ra, 0x154($sp)
/* 43B04 80068704 97A2013C */  lhu       $v0, 0x13C($sp)
/* 43B08 80068708 10540007 */  beq       $v0, $s4, .LIQUE_80068728
/* 43B0C 8006870C 92620064 */   lbu      $v0, 0x64($s3)
/* 43B10 80068710 93B0013C */  lbu       $s0, 0x13C($sp)
/* 43B14 80068714 92230001 */  lbu       $v1, 0x1($s1)
/* 43B18 80068718 0202102B */  sltu      $v0, $s0, $v0
/* 43B1C 8006871C 1440FFE4 */  bnez      $v0, .LIQUE_800686B0
/* 43B20 80068720 00609021 */   addu     $s2, $v1, $zero
/* 43B24 80068724 92620064 */  lbu       $v0, 0x64($s3)
.LIQUE_80068728:
/* 43B28 80068728 0202102B */  sltu      $v0, $s0, $v0
/* 43B2C 8006872C 1040000F */  beqz      $v0, .LIQUE_8006876C
/* 43B30 80068730 27B00118 */   addiu    $s0, $sp, 0x118
/* 43B34 80068734 02002021 */  addu      $a0, $s0, $zero
/* 43B38 80068738 0C018ACC */  jal       bzero
/* 43B3C 8006873C 24050020 */   addiu    $a1, $zero, 0x20
/* 43B40 80068740 8E640004 */  lw        $a0, 0x4($s3)
/* 43B44 80068744 8E650008 */  lw        $a1, 0x8($s3)
/* 43B48 80068748 9666005E */  lhu       $a2, 0x5E($s3)
/* 43B4C 8006874C 97A2013A */  lhu       $v0, 0x13A($sp)
/* 43B50 80068750 02003821 */  addu      $a3, $s0, $zero
/* 43B54 80068754 AFA00010 */  sw        $zero, 0x10($sp)
/* 43B58 80068758 00C23021 */  addu      $a2, $a2, $v0
/* 43B5C 8006875C 0C01A808 */  jal       __osContRamWrite
/* 43B60 80068760 30C6FFFF */   andi     $a2, $a2, 0xFFFF
/* 43B64 80068764 0801A1DD */  j         .LIQUE_80068774
/* 43B68 80068768 8FBF0154 */   lw       $ra, 0x154($sp)
.LIQUE_8006876C:
/* 43B6C 8006876C 24020003 */  addiu     $v0, $zero, 0x3
.LIQUE_80068770:
/* 43B70 80068770 8FBF0154 */  lw        $ra, 0x154($sp)
.LIQUE_80068774:
/* 43B74 80068774 8FB40150 */  lw        $s4, 0x150($sp)
/* 43B78 80068778 8FB3014C */  lw        $s3, 0x14C($sp)
/* 43B7C 8006877C 8FB20148 */  lw        $s2, 0x148($sp)
/* 43B80 80068780 8FB10144 */  lw        $s1, 0x144($sp)
/* 43B84 80068784 8FB00140 */  lw        $s0, 0x140($sp)
/* 43B88 80068788 03E00008 */  jr        $ra
/* 43B8C 8006878C 27BD0158 */   addiu    $sp, $sp, 0x158

glabel __osPfsReleasePages
/* 43B90 80068790 30C600FF */  andi      $a2, $a2, 0xFF
/* 43B94 80068794 30E700FF */  andi      $a3, $a3, 0xFF
/* 43B98 80068798 00071200 */  sll       $v0, $a3, 8
/* 43B9C 8006879C 00463025 */  or        $a2, $v0, $a2
/* 43BA0 800687A0 0801A1ED */  j         .LIQUE_800687B4
/* 43BA4 800687A4 24080003 */   addiu    $t0, $zero, 0x3
.LIQUE_800687A8:
/* 43BA8 800687A8 00021202 */  srl       $v0, $v0, 8
/* 43BAC 800687AC 14470010 */  bne       $v0, $a3, .LIQUE_800687F0
/* 43BB0 800687B0 00001021 */   addu     $v0, $zero, $zero
.LIQUE_800687B4:
/* 43BB4 800687B4 00C01021 */  addu      $v0, $a2, $zero
/* 43BB8 800687B8 304300FF */  andi      $v1, $v0, 0xFF
/* 43BBC 800687BC 00031840 */  sll       $v1, $v1, 1
/* 43BC0 800687C0 00A31821 */  addu      $v1, $a1, $v1
/* 43BC4 800687C4 304200FF */  andi      $v0, $v0, 0xFF
/* 43BC8 800687C8 00021040 */  sll       $v0, $v0, 1
/* 43BCC 800687CC 94660000 */  lhu       $a2, 0x0($v1)
/* 43BD0 800687D0 00A21021 */  addu      $v0, $a1, $v0
/* 43BD4 800687D4 A4480000 */  sh        $t0, 0x0($v0)
/* 43BD8 800687D8 8C830060 */  lw        $v1, 0x60($a0)
/* 43BDC 800687DC 30C2FFFF */  andi      $v0, $a2, 0xFFFF
/* 43BE0 800687E0 0043182A */  slt       $v1, $v0, $v1
/* 43BE4 800687E4 1060FFF0 */  beqz      $v1, .LIQUE_800687A8
/* 43BE8 800687E8 8FA30010 */   lw       $v1, 0x10($sp)
/* 43BEC 800687EC 00001021 */  addu      $v0, $zero, $zero
.LIQUE_800687F0:
/* 43BF0 800687F0 03E00008 */  jr        $ra
/* 43BF4 800687F4 A4660000 */   sh       $a2, 0x0($v1)
/* 43BF8 800687F8 00000000 */  nop
/* 43BFC 800687FC 00000000 */  nop
