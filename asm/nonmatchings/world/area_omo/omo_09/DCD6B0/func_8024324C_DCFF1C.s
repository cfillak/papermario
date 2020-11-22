.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024324C_DCFF1C
/* DCFF1C 8024324C 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* DCFF20 80243250 AFB3003C */  sw        $s3, 0x3c($sp)
/* DCFF24 80243254 0080982D */  daddu     $s3, $a0, $zero
/* DCFF28 80243258 AFBF0048 */  sw        $ra, 0x48($sp)
/* DCFF2C 8024325C AFB50044 */  sw        $s5, 0x44($sp)
/* DCFF30 80243260 AFB40040 */  sw        $s4, 0x40($sp)
/* DCFF34 80243264 AFB20038 */  sw        $s2, 0x38($sp)
/* DCFF38 80243268 AFB10034 */  sw        $s1, 0x34($sp)
/* DCFF3C 8024326C AFB00030 */  sw        $s0, 0x30($sp)
/* DCFF40 80243270 8E720148 */  lw        $s2, 0x148($s3)
/* DCFF44 80243274 86440008 */  lh        $a0, 8($s2)
/* DCFF48 80243278 8E70000C */  lw        $s0, 0xc($s3)
/* DCFF4C 8024327C 0C00EABB */  jal       get_npc_unsafe
/* DCFF50 80243280 00A0882D */   daddu    $s1, $a1, $zero
/* DCFF54 80243284 0260202D */  daddu     $a0, $s3, $zero
/* DCFF58 80243288 8E050000 */  lw        $a1, ($s0)
/* DCFF5C 8024328C 0C0B1EAF */  jal       get_variable
/* DCFF60 80243290 0040A02D */   daddu    $s4, $v0, $zero
/* DCFF64 80243294 AFA00010 */  sw        $zero, 0x10($sp)
/* DCFF68 80243298 8E4300D0 */  lw        $v1, 0xd0($s2)
/* DCFF6C 8024329C 8C630030 */  lw        $v1, 0x30($v1)
/* DCFF70 802432A0 AFA30014 */  sw        $v1, 0x14($sp)
/* DCFF74 802432A4 8E4300D0 */  lw        $v1, 0xd0($s2)
/* DCFF78 802432A8 8C63001C */  lw        $v1, 0x1c($v1)
/* DCFF7C 802432AC AFA30018 */  sw        $v1, 0x18($sp)
/* DCFF80 802432B0 8E4300D0 */  lw        $v1, 0xd0($s2)
/* DCFF84 802432B4 8C630024 */  lw        $v1, 0x24($v1)
/* DCFF88 802432B8 AFA3001C */  sw        $v1, 0x1c($sp)
/* DCFF8C 802432BC 8E4300D0 */  lw        $v1, 0xd0($s2)
/* DCFF90 802432C0 8C630028 */  lw        $v1, 0x28($v1)
/* DCFF94 802432C4 27B50010 */  addiu     $s5, $sp, 0x10
/* DCFF98 802432C8 AFA30020 */  sw        $v1, 0x20($sp)
/* DCFF9C 802432CC 8E4300D0 */  lw        $v1, 0xd0($s2)
/* DCFFA0 802432D0 3C014220 */  lui       $at, 0x4220
/* DCFFA4 802432D4 44810000 */  mtc1      $at, $f0
/* DCFFA8 802432D8 8C63002C */  lw        $v1, 0x2c($v1)
/* DCFFAC 802432DC 0040802D */  daddu     $s0, $v0, $zero
/* DCFFB0 802432E0 E7A00028 */  swc1      $f0, 0x28($sp)
/* DCFFB4 802432E4 A7A0002C */  sh        $zero, 0x2c($sp)
/* DCFFB8 802432E8 16200005 */  bnez      $s1, .L80243300
/* DCFFBC 802432EC AFA30024 */   sw       $v1, 0x24($sp)
/* DCFFC0 802432F0 8E4200B0 */  lw        $v0, 0xb0($s2)
/* DCFFC4 802432F4 30420004 */  andi      $v0, $v0, 4
/* DCFFC8 802432F8 1040002F */  beqz      $v0, .L802433B8
/* DCFFCC 802432FC 00000000 */   nop      
.L80243300:
/* DCFFD0 80243300 2404F7FF */  addiu     $a0, $zero, -0x801
/* DCFFD4 80243304 AE600070 */  sw        $zero, 0x70($s3)
/* DCFFD8 80243308 A680008E */  sh        $zero, 0x8e($s4)
/* DCFFDC 8024330C 8E4200CC */  lw        $v0, 0xcc($s2)
/* DCFFE0 80243310 8E830000 */  lw        $v1, ($s4)
/* DCFFE4 80243314 8C420000 */  lw        $v0, ($v0)
/* DCFFE8 80243318 00641824 */  and       $v1, $v1, $a0
/* DCFFEC 8024331C AE830000 */  sw        $v1, ($s4)
/* DCFFF0 80243320 AE820028 */  sw        $v0, 0x28($s4)
/* DCFFF4 80243324 8E4200D0 */  lw        $v0, 0xd0($s2)
/* DCFFF8 80243328 8C420034 */  lw        $v0, 0x34($v0)
/* DCFFFC 8024332C 54400005 */  bnel      $v0, $zero, .L80243344
/* DD0000 80243330 2402FDFF */   addiu    $v0, $zero, -0x201
/* DD0004 80243334 34620200 */  ori       $v0, $v1, 0x200
/* DD0008 80243338 2403FFF7 */  addiu     $v1, $zero, -9
/* DD000C 8024333C 08090CD3 */  j         .L8024334C
/* DD0010 80243340 00431024 */   and      $v0, $v0, $v1
.L80243344:
/* DD0014 80243344 00621024 */  and       $v0, $v1, $v0
/* DD0018 80243348 34420008 */  ori       $v0, $v0, 8
.L8024334C:
/* DD001C 8024334C AE820000 */  sw        $v0, ($s4)
/* DD0020 80243350 8E4200B0 */  lw        $v0, 0xb0($s2)
/* DD0024 80243354 30420004 */  andi      $v0, $v0, 4
/* DD0028 80243358 10400008 */  beqz      $v0, .L8024337C
/* DD002C 8024335C 24020063 */   addiu    $v0, $zero, 0x63
/* DD0030 80243360 AE620070 */  sw        $v0, 0x70($s3)
/* DD0034 80243364 AE600074 */  sw        $zero, 0x74($s3)
/* DD0038 80243368 8E4200B0 */  lw        $v0, 0xb0($s2)
/* DD003C 8024336C 2403FFFB */  addiu     $v1, $zero, -5
/* DD0040 80243370 00431024 */  and       $v0, $v0, $v1
/* DD0044 80243374 08090CE5 */  j         .L80243394
/* DD0048 80243378 AE4200B0 */   sw       $v0, 0xb0($s2)
.L8024337C:
/* DD004C 8024337C 8E420000 */  lw        $v0, ($s2)
/* DD0050 80243380 3C034000 */  lui       $v1, 0x4000
/* DD0054 80243384 00431024 */  and       $v0, $v0, $v1
/* DD0058 80243388 10400002 */  beqz      $v0, .L80243394
/* DD005C 8024338C 2402000C */   addiu    $v0, $zero, 0xc
/* DD0060 80243390 AE620070 */  sw        $v0, 0x70($s3)
.L80243394:
/* DD0064 80243394 3C05BFFF */  lui       $a1, 0xbfff
/* DD0068 80243398 34A5FFFF */  ori       $a1, $a1, 0xffff
/* DD006C 8024339C 2404FFFB */  addiu     $a0, $zero, -5
/* DD0070 802433A0 8E4200B0 */  lw        $v0, 0xb0($s2)
/* DD0074 802433A4 8E430000 */  lw        $v1, ($s2)
/* DD0078 802433A8 00441024 */  and       $v0, $v0, $a0
/* DD007C 802433AC 00651824 */  and       $v1, $v1, $a1
/* DD0080 802433B0 AE4200B0 */  sw        $v0, 0xb0($s2)
/* DD0084 802433B4 AE430000 */  sw        $v1, ($s2)
.L802433B8:
/* DD0088 802433B8 8E630070 */  lw        $v1, 0x70($s3)
/* DD008C 802433BC 2C620064 */  sltiu     $v0, $v1, 0x64
/* DD0090 802433C0 10400060 */  beqz      $v0, .L80243544
/* DD0094 802433C4 00031080 */   sll      $v0, $v1, 2
/* DD0098 802433C8 3C018025 */  lui       $at, 0x8025
/* DD009C 802433CC 00220821 */  addu      $at, $at, $v0
/* DD00A0 802433D0 8C22AB38 */  lw        $v0, -0x54c8($at)
/* DD00A4 802433D4 00400008 */  jr        $v0
/* DD00A8 802433D8 00000000 */   nop      
/* DD00AC 802433DC 0260202D */  daddu     $a0, $s3, $zero
/* DD00B0 802433E0 0200282D */  daddu     $a1, $s0, $zero
/* DD00B4 802433E4 0C012568 */  jal       func_800495A0
/* DD00B8 802433E8 02A0302D */   daddu    $a2, $s5, $zero
/* DD00BC 802433EC 0260202D */  daddu     $a0, $s3, $zero
/* DD00C0 802433F0 0200282D */  daddu     $a1, $s0, $zero
/* DD00C4 802433F4 0C0125AE */  jal       func_800496B8
/* DD00C8 802433F8 02A0302D */   daddu    $a2, $s5, $zero
/* DD00CC 802433FC 08090D51 */  j         .L80243544
/* DD00D0 80243400 00000000 */   nop      
/* DD00D4 80243404 0260202D */  daddu     $a0, $s3, $zero
/* DD00D8 80243408 0200282D */  daddu     $a1, $s0, $zero
/* DD00DC 8024340C 0C0126D1 */  jal       func_80049B44
/* DD00E0 80243410 02A0302D */   daddu    $a2, $s5, $zero
/* DD00E4 80243414 0260202D */  daddu     $a0, $s3, $zero
/* DD00E8 80243418 0200282D */  daddu     $a1, $s0, $zero
/* DD00EC 8024341C 0C012701 */  jal       func_80049C04
/* DD00F0 80243420 02A0302D */   daddu    $a2, $s5, $zero
/* DD00F4 80243424 08090D51 */  j         .L80243544
/* DD00F8 80243428 00000000 */   nop      
/* DD00FC 8024342C 0260202D */  daddu     $a0, $s3, $zero
/* DD0100 80243430 0200282D */  daddu     $a1, $s0, $zero
/* DD0104 80243434 0C01278F */  jal       func_80049E3C
/* DD0108 80243438 02A0302D */   daddu    $a2, $s5, $zero
/* DD010C 8024343C 0260202D */  daddu     $a0, $s3, $zero
/* DD0110 80243440 0200282D */  daddu     $a1, $s0, $zero
/* DD0114 80243444 0C0127B3 */  jal       func_80049ECC
/* DD0118 80243448 02A0302D */   daddu    $a2, $s5, $zero
/* DD011C 8024344C 08090D51 */  j         .L80243544
/* DD0120 80243450 00000000 */   nop      
/* DD0124 80243454 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* DD0128 80243458 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* DD012C 8024345C C68C0038 */  lwc1      $f12, 0x38($s4)
/* DD0130 80243460 C68E0040 */  lwc1      $f14, 0x40($s4)
/* DD0134 80243464 8C460028 */  lw        $a2, 0x28($v0)
/* DD0138 80243468 0C00A7B5 */  jal       dist2D
/* DD013C 8024346C 8C470030 */   lw       $a3, 0x30($v0)
/* DD0140 80243470 8E42006C */  lw        $v0, 0x6c($s2)
/* DD0144 80243474 10400008 */  beqz      $v0, .L80243498
/* DD0148 80243478 46000086 */   mov.s    $f2, $f0
/* DD014C 8024347C 44820000 */  mtc1      $v0, $f0
/* DD0150 80243480 00000000 */  nop       
/* DD0154 80243484 46800020 */  cvt.s.w   $f0, $f0
/* DD0158 80243488 4602003C */  c.lt.s    $f0, $f2
/* DD015C 8024348C 00000000 */  nop       
/* DD0160 80243490 4500000B */  bc1f      .L802434C0
/* DD0164 80243494 0260202D */   daddu    $a0, $s3, $zero
.L80243498:
/* DD0168 80243498 0260202D */  daddu     $a0, $s3, $zero
/* DD016C 8024349C 8E050024 */  lw        $a1, 0x24($s0)
/* DD0170 802434A0 8E060028 */  lw        $a2, 0x28($s0)
/* DD0174 802434A4 0C090952 */  jal       func_80242548_DCF218
/* DD0178 802434A8 02A0382D */   daddu    $a3, $s5, $zero
/* DD017C 802434AC 8E630070 */  lw        $v1, 0x70($s3)
/* DD0180 802434B0 2402000C */  addiu     $v0, $zero, 0xc
/* DD0184 802434B4 14620023 */  bne       $v1, $v0, .L80243544
/* DD0188 802434B8 00000000 */   nop      
/* DD018C 802434BC 0260202D */  daddu     $a0, $s3, $zero
.L802434C0:
/* DD0190 802434C0 0200282D */  daddu     $a1, $s0, $zero
/* DD0194 802434C4 0C0127DF */  jal       func_80049F7C
/* DD0198 802434C8 02A0302D */   daddu    $a2, $s5, $zero
/* DD019C 802434CC 0260202D */  daddu     $a0, $s3, $zero
/* DD01A0 802434D0 0200282D */  daddu     $a1, $s0, $zero
/* DD01A4 802434D4 0C012849 */  jal       func_8004A124
/* DD01A8 802434D8 02A0302D */   daddu    $a2, $s5, $zero
/* DD01AC 802434DC 08090D51 */  j         .L80243544
/* DD01B0 802434E0 00000000 */   nop      
/* DD01B4 802434E4 0260202D */  daddu     $a0, $s3, $zero
/* DD01B8 802434E8 0200282D */  daddu     $a1, $s0, $zero
/* DD01BC 802434EC 0C0128FA */  jal       func_8004A3E8
/* DD01C0 802434F0 02A0302D */   daddu    $a2, $s5, $zero
/* DD01C4 802434F4 08090D51 */  j         .L80243544
/* DD01C8 802434F8 00000000 */   nop      
/* DD01CC 802434FC 0C0909A3 */  jal       func_8024268C_DCF35C
/* DD01D0 80243500 0260202D */   daddu    $a0, $s3, $zero
/* DD01D4 80243504 08090D51 */  j         .L80243544
/* DD01D8 80243508 00000000 */   nop      
/* DD01DC 8024350C 0C0909E3 */  jal       UnkSetDurationFunc
/* DD01E0 80243510 0260202D */   daddu    $a0, $s3, $zero
/* DD01E4 80243514 08090D51 */  j         .L80243544
/* DD01E8 80243518 00000000 */   nop      
/* DD01EC 8024351C 0C0909F4 */  jal       func_802427D0_DCF4A0
/* DD01F0 80243520 0260202D */   daddu    $a0, $s3, $zero
/* DD01F4 80243524 08090D51 */  j         .L80243544
/* DD01F8 80243528 00000000 */   nop      
/* DD01FC 8024352C 0C090A1C */  jal       UnkDurationCheck
/* DD0200 80243530 0260202D */   daddu    $a0, $s3, $zero
/* DD0204 80243534 08090D51 */  j         .L80243544
/* DD0208 80243538 00000000 */   nop      
/* DD020C 8024353C 0C0129CF */  jal       func_8004A73C
/* DD0210 80243540 0260202D */   daddu    $a0, $s3, $zero
.L80243544:
/* DD0214 80243544 8FBF0048 */  lw        $ra, 0x48($sp)
/* DD0218 80243548 8FB50044 */  lw        $s5, 0x44($sp)
/* DD021C 8024354C 8FB40040 */  lw        $s4, 0x40($sp)
/* DD0220 80243550 8FB3003C */  lw        $s3, 0x3c($sp)
/* DD0224 80243554 8FB20038 */  lw        $s2, 0x38($sp)
/* DD0228 80243558 8FB10034 */  lw        $s1, 0x34($sp)
/* DD022C 8024355C 8FB00030 */  lw        $s0, 0x30($sp)
/* DD0230 80243560 0000102D */  daddu     $v0, $zero, $zero
/* DD0234 80243564 03E00008 */  jr        $ra
/* DD0238 80243568 27BD0050 */   addiu    $sp, $sp, 0x50
