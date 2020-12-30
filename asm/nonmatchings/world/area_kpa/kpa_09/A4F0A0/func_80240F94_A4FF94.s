.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240F94_A4FF94
/* A4FF94 80240F94 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* A4FF98 80240F98 AFB3003C */  sw        $s3, 0x3c($sp)
/* A4FF9C 80240F9C 0080982D */  daddu     $s3, $a0, $zero
/* A4FFA0 80240FA0 AFBF0048 */  sw        $ra, 0x48($sp)
/* A4FFA4 80240FA4 AFB50044 */  sw        $s5, 0x44($sp)
/* A4FFA8 80240FA8 AFB40040 */  sw        $s4, 0x40($sp)
/* A4FFAC 80240FAC AFB20038 */  sw        $s2, 0x38($sp)
/* A4FFB0 80240FB0 AFB10034 */  sw        $s1, 0x34($sp)
/* A4FFB4 80240FB4 AFB00030 */  sw        $s0, 0x30($sp)
/* A4FFB8 80240FB8 8E720148 */  lw        $s2, 0x148($s3)
/* A4FFBC 80240FBC 86440008 */  lh        $a0, 8($s2)
/* A4FFC0 80240FC0 8E70000C */  lw        $s0, 0xc($s3)
/* A4FFC4 80240FC4 0C00EABB */  jal       get_npc_unsafe
/* A4FFC8 80240FC8 00A0882D */   daddu    $s1, $a1, $zero
/* A4FFCC 80240FCC 0260202D */  daddu     $a0, $s3, $zero
/* A4FFD0 80240FD0 8E050000 */  lw        $a1, ($s0)
/* A4FFD4 80240FD4 0C0B1EAF */  jal       get_variable
/* A4FFD8 80240FD8 0040A02D */   daddu    $s4, $v0, $zero
/* A4FFDC 80240FDC AFA00010 */  sw        $zero, 0x10($sp)
/* A4FFE0 80240FE0 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A4FFE4 80240FE4 8C630030 */  lw        $v1, 0x30($v1)
/* A4FFE8 80240FE8 AFA30014 */  sw        $v1, 0x14($sp)
/* A4FFEC 80240FEC 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A4FFF0 80240FF0 8C63001C */  lw        $v1, 0x1c($v1)
/* A4FFF4 80240FF4 AFA30018 */  sw        $v1, 0x18($sp)
/* A4FFF8 80240FF8 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A4FFFC 80240FFC 8C630024 */  lw        $v1, 0x24($v1)
/* A50000 80241000 AFA3001C */  sw        $v1, 0x1c($sp)
/* A50004 80241004 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A50008 80241008 8C630028 */  lw        $v1, 0x28($v1)
/* A5000C 8024100C 27B50010 */  addiu     $s5, $sp, 0x10
/* A50010 80241010 AFA30020 */  sw        $v1, 0x20($sp)
/* A50014 80241014 8E4300D0 */  lw        $v1, 0xd0($s2)
/* A50018 80241018 3C014220 */  lui       $at, 0x4220
/* A5001C 8024101C 44810000 */  mtc1      $at, $f0
/* A50020 80241020 8C63002C */  lw        $v1, 0x2c($v1)
/* A50024 80241024 0040802D */  daddu     $s0, $v0, $zero
/* A50028 80241028 E7A00028 */  swc1      $f0, 0x28($sp)
/* A5002C 8024102C A7A0002C */  sh        $zero, 0x2c($sp)
/* A50030 80241030 16200005 */  bnez      $s1, .L80241048
/* A50034 80241034 AFA30024 */   sw       $v1, 0x24($sp)
/* A50038 80241038 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A5003C 8024103C 30420004 */  andi      $v0, $v0, 4
/* A50040 80241040 1040002F */  beqz      $v0, .L80241100
/* A50044 80241044 00000000 */   nop
.L80241048:
/* A50048 80241048 2404F7FF */  addiu     $a0, $zero, -0x801
/* A5004C 8024104C AE600070 */  sw        $zero, 0x70($s3)
/* A50050 80241050 A680008E */  sh        $zero, 0x8e($s4)
/* A50054 80241054 8E4200CC */  lw        $v0, 0xcc($s2)
/* A50058 80241058 8E830000 */  lw        $v1, ($s4)
/* A5005C 8024105C 8C420000 */  lw        $v0, ($v0)
/* A50060 80241060 00641824 */  and       $v1, $v1, $a0
/* A50064 80241064 AE830000 */  sw        $v1, ($s4)
/* A50068 80241068 AE820028 */  sw        $v0, 0x28($s4)
/* A5006C 8024106C 8E4200D0 */  lw        $v0, 0xd0($s2)
/* A50070 80241070 8C420034 */  lw        $v0, 0x34($v0)
/* A50074 80241074 54400005 */  bnel      $v0, $zero, .L8024108C
/* A50078 80241078 2402FDFF */   addiu    $v0, $zero, -0x201
/* A5007C 8024107C 34620200 */  ori       $v0, $v1, 0x200
/* A50080 80241080 2403FFF7 */  addiu     $v1, $zero, -9
/* A50084 80241084 08090425 */  j         .L80241094
/* A50088 80241088 00431024 */   and      $v0, $v0, $v1
.L8024108C:
/* A5008C 8024108C 00621024 */  and       $v0, $v1, $v0
/* A50090 80241090 34420008 */  ori       $v0, $v0, 8
.L80241094:
/* A50094 80241094 AE820000 */  sw        $v0, ($s4)
/* A50098 80241098 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A5009C 8024109C 30420004 */  andi      $v0, $v0, 4
/* A500A0 802410A0 10400008 */  beqz      $v0, .L802410C4
/* A500A4 802410A4 24020063 */   addiu    $v0, $zero, 0x63
/* A500A8 802410A8 AE620070 */  sw        $v0, 0x70($s3)
/* A500AC 802410AC AE600074 */  sw        $zero, 0x74($s3)
/* A500B0 802410B0 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A500B4 802410B4 2403FFFB */  addiu     $v1, $zero, -5
/* A500B8 802410B8 00431024 */  and       $v0, $v0, $v1
/* A500BC 802410BC 08090437 */  j         .L802410DC
/* A500C0 802410C0 AE4200B0 */   sw       $v0, 0xb0($s2)
.L802410C4:
/* A500C4 802410C4 8E420000 */  lw        $v0, ($s2)
/* A500C8 802410C8 3C034000 */  lui       $v1, 0x4000
/* A500CC 802410CC 00431024 */  and       $v0, $v0, $v1
/* A500D0 802410D0 10400002 */  beqz      $v0, .L802410DC
/* A500D4 802410D4 2402000C */   addiu    $v0, $zero, 0xc
/* A500D8 802410D8 AE620070 */  sw        $v0, 0x70($s3)
.L802410DC:
/* A500DC 802410DC 3C05BFFF */  lui       $a1, 0xbfff
/* A500E0 802410E0 34A5FFFF */  ori       $a1, $a1, 0xffff
/* A500E4 802410E4 2404FFFB */  addiu     $a0, $zero, -5
/* A500E8 802410E8 8E4200B0 */  lw        $v0, 0xb0($s2)
/* A500EC 802410EC 8E430000 */  lw        $v1, ($s2)
/* A500F0 802410F0 00441024 */  and       $v0, $v0, $a0
/* A500F4 802410F4 00651824 */  and       $v1, $v1, $a1
/* A500F8 802410F8 AE4200B0 */  sw        $v0, 0xb0($s2)
/* A500FC 802410FC AE430000 */  sw        $v1, ($s2)
.L80241100:
/* A50100 80241100 8E630070 */  lw        $v1, 0x70($s3)
/* A50104 80241104 2C620064 */  sltiu     $v0, $v1, 0x64
/* A50108 80241108 10400060 */  beqz      $v0, .L8024128C
/* A5010C 8024110C 00031080 */   sll      $v0, $v1, 2
/* A50110 80241110 3C018024 */  lui       $at, %hi(D_802427E8)
/* A50114 80241114 00220821 */  addu      $at, $at, $v0
/* A50118 80241118 8C2227E8 */  lw        $v0, %lo(D_802427E8)($at)
/* A5011C 8024111C 00400008 */  jr        $v0
/* A50120 80241120 00000000 */   nop
/* A50124 80241124 0260202D */  daddu     $a0, $s3, $zero
/* A50128 80241128 0200282D */  daddu     $a1, $s0, $zero
/* A5012C 8024112C 0C012568 */  jal       func_800495A0
/* A50130 80241130 02A0302D */   daddu    $a2, $s5, $zero
/* A50134 80241134 0260202D */  daddu     $a0, $s3, $zero
/* A50138 80241138 0200282D */  daddu     $a1, $s0, $zero
/* A5013C 8024113C 0C0125AE */  jal       func_800496B8
/* A50140 80241140 02A0302D */   daddu    $a2, $s5, $zero
/* A50144 80241144 080904A3 */  j         .L8024128C
/* A50148 80241148 00000000 */   nop
/* A5014C 8024114C 0260202D */  daddu     $a0, $s3, $zero
/* A50150 80241150 0200282D */  daddu     $a1, $s0, $zero
/* A50154 80241154 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* A50158 80241158 02A0302D */   daddu    $a2, $s5, $zero
/* A5015C 8024115C 0260202D */  daddu     $a0, $s3, $zero
/* A50160 80241160 0200282D */  daddu     $a1, $s0, $zero
/* A50164 80241164 0C012701 */  jal       func_80049C04
/* A50168 80241168 02A0302D */   daddu    $a2, $s5, $zero
/* A5016C 8024116C 080904A3 */  j         .L8024128C
/* A50170 80241170 00000000 */   nop
/* A50174 80241174 0260202D */  daddu     $a0, $s3, $zero
/* A50178 80241178 0200282D */  daddu     $a1, $s0, $zero
/* A5017C 8024117C 0C01278F */  jal       func_80049E3C
/* A50180 80241180 02A0302D */   daddu    $a2, $s5, $zero
/* A50184 80241184 0260202D */  daddu     $a0, $s3, $zero
/* A50188 80241188 0200282D */  daddu     $a1, $s0, $zero
/* A5018C 8024118C 0C0127B3 */  jal       func_80049ECC
/* A50190 80241190 02A0302D */   daddu    $a2, $s5, $zero
/* A50194 80241194 080904A3 */  j         .L8024128C
/* A50198 80241198 00000000 */   nop
/* A5019C 8024119C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A501A0 802411A0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A501A4 802411A4 C68C0038 */  lwc1      $f12, 0x38($s4)
/* A501A8 802411A8 C68E0040 */  lwc1      $f14, 0x40($s4)
/* A501AC 802411AC 8C460028 */  lw        $a2, 0x28($v0)
/* A501B0 802411B0 0C00A7B5 */  jal       dist2D
/* A501B4 802411B4 8C470030 */   lw       $a3, 0x30($v0)
/* A501B8 802411B8 8E42006C */  lw        $v0, 0x6c($s2)
/* A501BC 802411BC 10400008 */  beqz      $v0, .L802411E0
/* A501C0 802411C0 46000086 */   mov.s    $f2, $f0
/* A501C4 802411C4 44820000 */  mtc1      $v0, $f0
/* A501C8 802411C8 00000000 */  nop
/* A501CC 802411CC 46800020 */  cvt.s.w   $f0, $f0
/* A501D0 802411D0 4602003C */  c.lt.s    $f0, $f2
/* A501D4 802411D4 00000000 */  nop
/* A501D8 802411D8 4500000B */  bc1f      .L80241208
/* A501DC 802411DC 0260202D */   daddu    $a0, $s3, $zero
.L802411E0:
/* A501E0 802411E0 0260202D */  daddu     $a0, $s3, $zero
/* A501E4 802411E4 8E050024 */  lw        $a1, 0x24($s0)
/* A501E8 802411E8 8E060028 */  lw        $a2, 0x28($s0)
/* A501EC 802411EC 0C0900A4 */  jal       func_80240290_A4F290
/* A501F0 802411F0 02A0382D */   daddu    $a3, $s5, $zero
/* A501F4 802411F4 8E630070 */  lw        $v1, 0x70($s3)
/* A501F8 802411F8 2402000C */  addiu     $v0, $zero, 0xc
/* A501FC 802411FC 14620023 */  bne       $v1, $v0, .L8024128C
/* A50200 80241200 00000000 */   nop
/* A50204 80241204 0260202D */  daddu     $a0, $s3, $zero
.L80241208:
/* A50208 80241208 0200282D */  daddu     $a1, $s0, $zero
/* A5020C 8024120C 0C0127DF */  jal       func_80049F7C
/* A50210 80241210 02A0302D */   daddu    $a2, $s5, $zero
/* A50214 80241214 0260202D */  daddu     $a0, $s3, $zero
/* A50218 80241218 0200282D */  daddu     $a1, $s0, $zero
/* A5021C 8024121C 0C012849 */  jal       func_8004A124
/* A50220 80241220 02A0302D */   daddu    $a2, $s5, $zero
/* A50224 80241224 080904A3 */  j         .L8024128C
/* A50228 80241228 00000000 */   nop
/* A5022C 8024122C 0260202D */  daddu     $a0, $s3, $zero
/* A50230 80241230 0200282D */  daddu     $a1, $s0, $zero
/* A50234 80241234 0C0128FA */  jal       func_8004A3E8
/* A50238 80241238 02A0302D */   daddu    $a2, $s5, $zero
/* A5023C 8024123C 080904A3 */  j         .L8024128C
/* A50240 80241240 00000000 */   nop
/* A50244 80241244 0C0900F5 */  jal       func_802403D4_A4F3D4
/* A50248 80241248 0260202D */   daddu    $a0, $s3, $zero
/* A5024C 8024124C 080904A3 */  j         .L8024128C
/* A50250 80241250 00000000 */   nop
/* A50254 80241254 0C090135 */  jal       kpa_09_UnkSetDurationFunc
/* A50258 80241258 0260202D */   daddu    $a0, $s3, $zero
/* A5025C 8024125C 080904A3 */  j         .L8024128C
/* A50260 80241260 00000000 */   nop
/* A50264 80241264 0C090146 */  jal       kpa_09_UnkNpcAIFunc9
/* A50268 80241268 0260202D */   daddu    $a0, $s3, $zero
/* A5026C 8024126C 080904A3 */  j         .L8024128C
/* A50270 80241270 00000000 */   nop
/* A50274 80241274 0C09016E */  jal       kpa_09_UnkDurationCheck
/* A50278 80241278 0260202D */   daddu    $a0, $s3, $zero
/* A5027C 8024127C 080904A3 */  j         .L8024128C
/* A50280 80241280 00000000 */   nop
/* A50284 80241284 0C0129CF */  jal       func_8004A73C
/* A50288 80241288 0260202D */   daddu    $a0, $s3, $zero
.L8024128C:
/* A5028C 8024128C 8FBF0048 */  lw        $ra, 0x48($sp)
/* A50290 80241290 8FB50044 */  lw        $s5, 0x44($sp)
/* A50294 80241294 8FB40040 */  lw        $s4, 0x40($sp)
/* A50298 80241298 8FB3003C */  lw        $s3, 0x3c($sp)
/* A5029C 8024129C 8FB20038 */  lw        $s2, 0x38($sp)
/* A502A0 802412A0 8FB10034 */  lw        $s1, 0x34($sp)
/* A502A4 802412A4 8FB00030 */  lw        $s0, 0x30($sp)
/* A502A8 802412A8 0000102D */  daddu     $v0, $zero, $zero
/* A502AC 802412AC 03E00008 */  jr        $ra
/* A502B0 802412B0 27BD0050 */   addiu    $sp, $sp, 0x50
