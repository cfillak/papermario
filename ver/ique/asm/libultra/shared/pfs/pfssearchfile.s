.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel osPfsFindFile
/* 44170 80068D70 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 44174 80068D74 AFB10034 */  sw        $s1, 0x34($sp)
/* 44178 80068D78 00808821 */  addu      $s1, $a0, $zero
/* 4417C 80068D7C AFB60048 */  sw        $s6, 0x48($sp)
/* 44180 80068D80 00C0B021 */  addu      $s6, $a2, $zero
/* 44184 80068D84 AFB3003C */  sw        $s3, 0x3C($sp)
/* 44188 80068D88 00E09821 */  addu      $s3, $a3, $zero
/* 4418C 80068D8C AFB50044 */  sw        $s5, 0x44($sp)
/* 44190 80068D90 30B5FFFF */  andi      $s5, $a1, 0xFFFF
/* 44194 80068D94 AFBF004C */  sw        $ra, 0x4C($sp)
/* 44198 80068D98 AFB40040 */  sw        $s4, 0x40($sp)
/* 4419C 80068D9C AFB20038 */  sw        $s2, 0x38($sp)
/* 441A0 80068DA0 AFB00030 */  sw        $s0, 0x30($sp)
/* 441A4 80068DA4 8E220000 */  lw        $v0, 0x0($s1)
/* 441A8 80068DA8 8FB20060 */  lw        $s2, 0x60($sp)
/* 441AC 80068DAC 30420001 */  andi      $v0, $v0, 0x1
/* 441B0 80068DB0 10400049 */  beqz      $v0, .LIQUE_80068ED8
/* 441B4 80068DB4 8FB40064 */   lw       $s4, 0x64($sp)
/* 441B8 80068DB8 0C01A701 */  jal       __osCheckId
/* 441BC 80068DBC 02202021 */   addu     $a0, $s1, $zero
/* 441C0 80068DC0 00404821 */  addu      $t1, $v0, $zero
/* 441C4 80068DC4 15200046 */  bnez      $t1, .LIQUE_80068EE0
/* 441C8 80068DC8 8FBF004C */   lw       $ra, 0x4C($sp)
/* 441CC 80068DCC 8E220050 */  lw        $v0, 0x50($s1)
/* 441D0 80068DD0 1840003F */  blez      $v0, .LIQUE_80068ED0
/* 441D4 80068DD4 00008021 */   addu     $s0, $zero, $zero
/* 441D8 80068DD8 27A70010 */  addiu     $a3, $sp, 0x10
.LIQUE_80068DDC:
/* 441DC 80068DDC 8E240004 */  lw        $a0, 0x4($s1)
/* 441E0 80068DE0 9626005E */  lhu       $a2, 0x5E($s1)
/* 441E4 80068DE4 8E250008 */  lw        $a1, 0x8($s1)
/* 441E8 80068DE8 00D03021 */  addu      $a2, $a2, $s0
/* 441EC 80068DEC 0C01A7D8 */  jal       __osContRamRead
/* 441F0 80068DF0 30C6FFFF */   andi     $a2, $a2, 0xFFFF
/* 441F4 80068DF4 00404821 */  addu      $t1, $v0, $zero
/* 441F8 80068DF8 15200038 */  bnez      $t1, .LIQUE_80068EDC
/* 441FC 80068DFC 01201021 */   addu     $v0, $t1, $zero
/* 44200 80068E00 8E240004 */  lw        $a0, 0x4($s1)
/* 44204 80068E04 0C01A518 */  jal       __osPfsGetStatus
/* 44208 80068E08 8E250008 */   lw       $a1, 0x8($s1)
/* 4420C 80068E0C 00404821 */  addu      $t1, $v0, $zero
/* 44210 80068E10 15200025 */  bnez      $t1, .LIQUE_80068EA8
/* 44214 80068E14 97A20014 */   lhu      $v0, 0x14($sp)
/* 44218 80068E18 54550029 */  bnel      $v0, $s5, .LIQUE_80068EC0
/* 4421C 80068E1C 8E220050 */   lw       $v0, 0x50($s1)
/* 44220 80068E20 8FA20010 */  lw        $v0, 0x10($sp)
/* 44224 80068E24 54560026 */  bnel      $v0, $s6, .LIQUE_80068EC0
/* 44228 80068E28 8E220050 */   lw       $v0, 0x50($s1)
/* 4422C 80068E2C 1260000C */  beqz      $s3, .LIQUE_80068E60
/* 44230 80068E30 00004021 */   addu     $t0, $zero, $zero
/* 44234 80068E34 00003021 */  addu      $a2, $zero, $zero
/* 44238 80068E38 27A70020 */  addiu     $a3, $sp, 0x20
/* 4423C 80068E3C 00E61821 */  addu      $v1, $a3, $a2
.LIQUE_80068E40:
/* 44240 80068E40 02662021 */  addu      $a0, $s3, $a2
/* 44244 80068E44 90650000 */  lbu       $a1, 0x0($v1)
/* 44248 80068E48 90820000 */  lbu       $v0, 0x0($a0)
/* 4424C 80068E4C 14A2001A */  bne       $a1, $v0, .LIQUE_80068EB8
/* 44250 80068E50 24C60001 */   addiu    $a2, $a2, 0x1
/* 44254 80068E54 28C20010 */  slti      $v0, $a2, 0x10
/* 44258 80068E58 1440FFF9 */  bnez      $v0, .LIQUE_80068E40
/* 4425C 80068E5C 00E61821 */   addu     $v1, $a3, $a2
.LIQUE_80068E60:
/* 44260 80068E60 1240000E */  beqz      $s2, .LIQUE_80068E9C
/* 44264 80068E64 00000000 */   nop
/* 44268 80068E68 55000015 */  bnel      $t0, $zero, .LIQUE_80068EC0
/* 4426C 80068E6C 8E220050 */   lw       $v0, 0x50($s1)
/* 44270 80068E70 00003021 */  addu      $a2, $zero, $zero
/* 44274 80068E74 27A7001C */  addiu     $a3, $sp, 0x1C
/* 44278 80068E78 00E61821 */  addu      $v1, $a3, $a2
.LIQUE_80068E7C:
/* 4427C 80068E7C 02462021 */  addu      $a0, $s2, $a2
/* 44280 80068E80 90650000 */  lbu       $a1, 0x0($v1)
/* 44284 80068E84 90820000 */  lbu       $v0, 0x0($a0)
/* 44288 80068E88 14A20009 */  bne       $a1, $v0, .LIQUE_80068EB0
/* 4428C 80068E8C 24C60001 */   addiu    $a2, $a2, 0x1
/* 44290 80068E90 28C20004 */  slti      $v0, $a2, 0x4
/* 44294 80068E94 1440FFF9 */  bnez      $v0, .LIQUE_80068E7C
/* 44298 80068E98 00E61821 */   addu     $v1, $a3, $a2
.LIQUE_80068E9C:
/* 4429C 80068E9C 55000008 */  bnel      $t0, $zero, .LIQUE_80068EC0
/* 442A0 80068EA0 8E220050 */   lw       $v0, 0x50($s1)
/* 442A4 80068EA4 AE900000 */  sw        $s0, 0x0($s4)
.LIQUE_80068EA8:
/* 442A8 80068EA8 0801A3B7 */  j         .LIQUE_80068EDC
/* 442AC 80068EAC 01201021 */   addu     $v0, $t1, $zero
.LIQUE_80068EB0:
/* 442B0 80068EB0 0801A3A7 */  j         .LIQUE_80068E9C
/* 442B4 80068EB4 24080001 */   addiu    $t0, $zero, 0x1
.LIQUE_80068EB8:
/* 442B8 80068EB8 0801A398 */  j         .LIQUE_80068E60
/* 442BC 80068EBC 24080001 */   addiu    $t0, $zero, 0x1
.LIQUE_80068EC0:
/* 442C0 80068EC0 26100001 */  addiu     $s0, $s0, 0x1
/* 442C4 80068EC4 0202102A */  slt       $v0, $s0, $v0
/* 442C8 80068EC8 1440FFC4 */  bnez      $v0, .LIQUE_80068DDC
/* 442CC 80068ECC 27A70010 */   addiu    $a3, $sp, 0x10
.LIQUE_80068ED0:
/* 442D0 80068ED0 2403FFFF */  addiu     $v1, $zero, -0x1
/* 442D4 80068ED4 AE830000 */  sw        $v1, 0x0($s4)
.LIQUE_80068ED8:
/* 442D8 80068ED8 24020005 */  addiu     $v0, $zero, 0x5
.LIQUE_80068EDC:
/* 442DC 80068EDC 8FBF004C */  lw        $ra, 0x4C($sp)
.LIQUE_80068EE0:
/* 442E0 80068EE0 8FB60048 */  lw        $s6, 0x48($sp)
/* 442E4 80068EE4 8FB50044 */  lw        $s5, 0x44($sp)
/* 442E8 80068EE8 8FB40040 */  lw        $s4, 0x40($sp)
/* 442EC 80068EEC 8FB3003C */  lw        $s3, 0x3C($sp)
/* 442F0 80068EF0 8FB20038 */  lw        $s2, 0x38($sp)
/* 442F4 80068EF4 8FB10034 */  lw        $s1, 0x34($sp)
/* 442F8 80068EF8 8FB00030 */  lw        $s0, 0x30($sp)
/* 442FC 80068EFC 03E00008 */  jr        $ra
/* 44300 80068F00 27BD0050 */   addiu    $sp, $sp, 0x50
/* 44304 80068F04 00000000 */  nop
/* 44308 80068F08 00000000 */  nop
/* 4430C 80068F0C 00000000 */  nop
