.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80038560
/* 13960 80038560 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 13964 80038564 2402F7FF */  addiu     $v0, $zero, -0x801
/* 13968 80038568 AFB20018 */  sw        $s2, 0x18($sp)
/* 1396C 8003856C 00829024 */  and       $s2, $a0, $v0
/* 13970 80038570 3C03800A */  lui       $v1, %hi(D_8009E9A0)
/* 13974 80038574 8C63E9A0 */  lw        $v1, %lo(D_8009E9A0)($v1)
/* 13978 80038578 00121080 */  sll       $v0, $s2, 2
/* 1397C 8003857C AFBF001C */  sw        $ra, 0x1c($sp)
/* 13980 80038580 AFB10014 */  sw        $s1, 0x14($sp)
/* 13984 80038584 AFB00010 */  sw        $s0, 0x10($sp)
/* 13988 80038588 00431021 */  addu      $v0, $v0, $v1
/* 1398C 8003858C 8C500000 */  lw        $s0, ($v0)
/* 13990 80038590 12000038 */  beqz      $s0, .L80038674
/* 13994 80038594 00000000 */   nop
/* 13998 80038598 8E020000 */  lw        $v0, ($s0)
/* 1399C 8003859C 10400035 */  beqz      $v0, .L80038674
/* 139A0 800385A0 00000000 */   nop
/* 139A4 800385A4 8E040020 */  lw        $a0, 0x20($s0)
/* 139A8 800385A8 10800004 */  beqz      $a0, .L800385BC
/* 139AC 800385AC 00000000 */   nop
/* 139B0 800385B0 0C00AB3B */  jal       func_8002ACEC
/* 139B4 800385B4 00000000 */   nop
/* 139B8 800385B8 AE000020 */  sw        $zero, 0x20($s0)
.L800385BC:
/* 139BC 800385BC 8E030000 */  lw        $v1, ($s0)
/* 139C0 800385C0 3C024000 */  lui       $v0, 0x4000
/* 139C4 800385C4 00621024 */  and       $v0, $v1, $v0
/* 139C8 800385C8 1440000A */  bnez      $v0, .L800385F4
/* 139CC 800385CC 3C020100 */   lui      $v0, 0x100
/* 139D0 800385D0 00621024 */  and       $v0, $v1, $v0
/* 139D4 800385D4 14400007 */  bnez      $v0, .L800385F4
/* 139D8 800385D8 00000000 */   nop
/* 139DC 800385DC 0C04484E */  jal       func_80112138
/* 139E0 800385E0 8E040024 */   lw       $a0, 0x24($s0)
/* 139E4 800385E4 10400003 */  beqz      $v0, .L800385F4
/* 139E8 800385E8 00000000 */   nop
.L800385EC:
/* 139EC 800385EC 0800E17B */  j         .L800385EC
/* 139F0 800385F0 00000000 */   nop
.L800385F4:
/* 139F4 800385F4 8E040078 */  lw        $a0, 0x78($s0)
/* 139F8 800385F8 0C045D4E */  jal       func_80117538
/* 139FC 800385FC 0000882D */   daddu    $s1, $zero, $zero
/* 13A00 80038600 0200202D */  daddu     $a0, $s0, $zero
.L80038604:
/* 13A04 80038604 0C00F03A */  jal       func_8003C0E8
/* 13A08 80038608 0220282D */   daddu    $a1, $s1, $zero
/* 13A0C 8003860C 26310001 */  addiu     $s1, $s1, 1
/* 13A10 80038610 2A220002 */  slti      $v0, $s1, 2
/* 13A14 80038614 1440FFFB */  bnez      $v0, .L80038604
/* 13A18 80038618 0200202D */   daddu    $a0, $s0, $zero
/* 13A1C 8003861C 8E020000 */  lw        $v0, ($s0)
/* 13A20 80038620 3C030010 */  lui       $v1, 0x10
/* 13A24 80038624 00431024 */  and       $v0, $v0, $v1
/* 13A28 80038628 10400003 */  beqz      $v0, .L80038638
/* 13A2C 8003862C 00000000 */   nop
/* 13A30 80038630 0C00EA9B */  jal       func_8003AA6C
/* 13A34 80038634 0200202D */   daddu    $a0, $s0, $zero
.L80038638:
/* 13A38 80038638 3C11800A */  lui       $s1, %hi(D_8009E9A0)
/* 13A3C 8003863C 2631E9A0 */  addiu     $s1, $s1, %lo(D_8009E9A0)
/* 13A40 80038640 8E220000 */  lw        $v0, ($s1)
/* 13A44 80038644 00128080 */  sll       $s0, $s2, 2
/* 13A48 80038648 02021021 */  addu      $v0, $s0, $v0
/* 13A4C 8003864C 0C00AB3B */  jal       func_8002ACEC
/* 13A50 80038650 8C440000 */   lw       $a0, ($v0)
/* 13A54 80038654 3C04800A */  lui       $a0, %hi(D_8009A5E4)
/* 13A58 80038658 2484A5E4 */  addiu     $a0, $a0, %lo(D_8009A5E4)
/* 13A5C 8003865C 8E230000 */  lw        $v1, ($s1)
/* 13A60 80038660 94820000 */  lhu       $v0, ($a0)
/* 13A64 80038664 02038021 */  addu      $s0, $s0, $v1
/* 13A68 80038668 2442FFFF */  addiu     $v0, $v0, -1
/* 13A6C 8003866C AE000000 */  sw        $zero, ($s0)
/* 13A70 80038670 A4820000 */  sh        $v0, ($a0)
.L80038674:
/* 13A74 80038674 8FBF001C */  lw        $ra, 0x1c($sp)
/* 13A78 80038678 8FB20018 */  lw        $s2, 0x18($sp)
/* 13A7C 8003867C 8FB10014 */  lw        $s1, 0x14($sp)
/* 13A80 80038680 8FB00010 */  lw        $s0, 0x10($sp)
/* 13A84 80038684 03E00008 */  jr        $ra
/* 13A88 80038688 27BD0020 */   addiu    $sp, $sp, 0x20
