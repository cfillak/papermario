.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006DDA0
/* 491A0 8006DDA0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 491A4 8006DDA4 AFB20010 */  sw        $s2, 0x10($sp)
/* 491A8 8006DDA8 0000902D */  daddu     $s2, $zero, $zero
/* 491AC 8006DDAC AFB1000C */  sw        $s1, 0xc($sp)
/* 491B0 8006DDB0 04810008 */  bgez      $a0, .L8006DDD4
/* 491B4 8006DDB4 AFB00008 */   sw       $s0, 8($sp)
/* 491B8 8006DDB8 2412FFFF */  addiu     $s2, $zero, -1
/* 491BC 8006DDBC 00054823 */  negu      $t1, $a1
/* 491C0 8006DDC0 00041823 */  negu      $v1, $a0
/* 491C4 8006DDC4 0009102B */  sltu      $v0, $zero, $t1
/* 491C8 8006DDC8 00624023 */  subu      $t0, $v1, $v0
/* 491CC 8006DDCC 0100202D */  daddu     $a0, $t0, $zero
/* 491D0 8006DDD0 0120282D */  daddu     $a1, $t1, $zero
.L8006DDD4:
/* 491D4 8006DDD4 04C10008 */  bgez      $a2, .L8006DDF8
/* 491D8 8006DDD8 00E0402D */   daddu    $t0, $a3, $zero
/* 491DC 8006DDDC 00075823 */  negu      $t3, $a3
/* 491E0 8006DDE0 00061823 */  negu      $v1, $a2
/* 491E4 8006DDE4 000B102B */  sltu      $v0, $zero, $t3
/* 491E8 8006DDE8 00625023 */  subu      $t2, $v1, $v0
/* 491EC 8006DDEC 0140302D */  daddu     $a2, $t2, $zero
/* 491F0 8006DDF0 0160382D */  daddu     $a3, $t3, $zero
/* 491F4 8006DDF4 00E0402D */  daddu     $t0, $a3, $zero
.L8006DDF8:
/* 491F8 8006DDF8 00C0482D */  daddu     $t1, $a2, $zero
/* 491FC 8006DDFC 00A0582D */  daddu     $t3, $a1, $zero
/* 49200 8006DE00 0080502D */  daddu     $t2, $a0, $zero
/* 49204 8006DE04 152000A6 */  bnez      $t1, .L8006E0A0
/* 49208 8006DE08 03A0C82D */   daddu    $t9, $sp, $zero
/* 4920C 8006DE0C 0148102B */  sltu      $v0, $t2, $t0
/* 49210 8006DE10 1040001D */  beqz      $v0, .L8006DE88
/* 49214 8006DE14 3402FFFF */   ori      $v0, $zero, 0xffff
/* 49218 8006DE18 0048102B */  sltu      $v0, $v0, $t0
/* 4921C 8006DE1C 14400005 */  bnez      $v0, .L8006DE34
/* 49220 8006DE20 00E0182D */   daddu    $v1, $a3, $zero
/* 49224 8006DE24 2D020100 */  sltiu     $v0, $t0, 0x100
/* 49228 8006DE28 38420001 */  xori      $v0, $v0, 1
/* 4922C 8006DE2C 0801B793 */  j         .L8006DE4C
/* 49230 8006DE30 000220C0 */   sll      $a0, $v0, 3
.L8006DE34:
/* 49234 8006DE34 3C0200FF */  lui       $v0, 0xff
/* 49238 8006DE38 3442FFFF */  ori       $v0, $v0, 0xffff
/* 4923C 8006DE3C 0048102B */  sltu      $v0, $v0, $t0
/* 49240 8006DE40 14400002 */  bnez      $v0, .L8006DE4C
/* 49244 8006DE44 24040018 */   addiu    $a0, $zero, 0x18
/* 49248 8006DE48 24040010 */  addiu     $a0, $zero, 0x10
.L8006DE4C:
/* 4924C 8006DE4C 00831006 */  srlv      $v0, $v1, $a0
/* 49250 8006DE50 3C01800A */  lui       $at, %hi(D_80099F20)
/* 49254 8006DE54 00220821 */  addu      $at, $at, $v0
/* 49258 8006DE58 90229F20 */  lbu       $v0, %lo(D_80099F20)($at)
/* 4925C 8006DE5C 00441021 */  addu      $v0, $v0, $a0
/* 49260 8006DE60 24040020 */  addiu     $a0, $zero, 0x20
/* 49264 8006DE64 00826823 */  subu      $t5, $a0, $v0
/* 49268 8006DE68 11A0005B */  beqz      $t5, .L8006DFD8
/* 4926C 8006DE6C 01AA1804 */   sllv     $v1, $t2, $t5
/* 49270 8006DE70 01A84004 */  sllv      $t0, $t0, $t5
/* 49274 8006DE74 008D1023 */  subu      $v0, $a0, $t5
/* 49278 8006DE78 004B1006 */  srlv      $v0, $t3, $v0
/* 4927C 8006DE7C 00625025 */  or        $t2, $v1, $v0
/* 49280 8006DE80 0801B7F6 */  j         .L8006DFD8
/* 49284 8006DE84 01AB5804 */   sllv     $t3, $t3, $t5
.L8006DE88:
/* 49288 8006DE88 15000008 */  bnez      $t0, .L8006DEAC
/* 4928C 8006DE8C 0048102B */   sltu     $v0, $v0, $t0
/* 49290 8006DE90 24020001 */  addiu     $v0, $zero, 1
/* 49294 8006DE94 15200002 */  bnez      $t1, .L8006DEA0
/* 49298 8006DE98 0049001B */   divu     $zero, $v0, $t1
/* 4929C 8006DE9C 0007000D */  break     7
.L8006DEA0:
/* 492A0 8006DEA0 00004012 */   mflo     $t0
/* 492A4 8006DEA4 3402FFFF */  ori       $v0, $zero, 0xffff
/* 492A8 8006DEA8 0048102B */  sltu      $v0, $v0, $t0
.L8006DEAC:
/* 492AC 8006DEAC 14400005 */  bnez      $v0, .L8006DEC4
/* 492B0 8006DEB0 0100202D */   daddu    $a0, $t0, $zero
/* 492B4 8006DEB4 2D020100 */  sltiu     $v0, $t0, 0x100
/* 492B8 8006DEB8 38420001 */  xori      $v0, $v0, 1
/* 492BC 8006DEBC 0801B7B7 */  j         .L8006DEDC
/* 492C0 8006DEC0 000218C0 */   sll      $v1, $v0, 3
.L8006DEC4:
/* 492C4 8006DEC4 3C0200FF */  lui       $v0, 0xff
/* 492C8 8006DEC8 3442FFFF */  ori       $v0, $v0, 0xffff
/* 492CC 8006DECC 0048102B */  sltu      $v0, $v0, $t0
/* 492D0 8006DED0 14400002 */  bnez      $v0, .L8006DEDC
/* 492D4 8006DED4 24030018 */   addiu    $v1, $zero, 0x18
/* 492D8 8006DED8 24030010 */  addiu     $v1, $zero, 0x10
.L8006DEDC:
/* 492DC 8006DEDC 00641006 */  srlv      $v0, $a0, $v1
/* 492E0 8006DEE0 3C01800A */  lui       $at, %hi(D_80099F20)
/* 492E4 8006DEE4 00220821 */  addu      $at, $at, $v0
/* 492E8 8006DEE8 90229F20 */  lbu       $v0, %lo(D_80099F20)($at)
/* 492EC 8006DEEC 00431021 */  addu      $v0, $v0, $v1
/* 492F0 8006DEF0 24030020 */  addiu     $v1, $zero, 0x20
/* 492F4 8006DEF4 00626823 */  subu      $t5, $v1, $v0
/* 492F8 8006DEF8 15A00003 */  bnez      $t5, .L8006DF08
/* 492FC 8006DEFC 006DC023 */   subu     $t8, $v1, $t5
/* 49300 8006DF00 0801B7F6 */  j         .L8006DFD8
/* 49304 8006DF04 01485023 */   subu     $t2, $t2, $t0
.L8006DF08:
/* 49308 8006DF08 01A84004 */  sllv      $t0, $t0, $t5
/* 4930C 8006DF0C 030A2006 */  srlv      $a0, $t2, $t8
/* 49310 8006DF10 01AA1804 */  sllv      $v1, $t2, $t5
/* 49314 8006DF14 030B1006 */  srlv      $v0, $t3, $t8
/* 49318 8006DF18 00625025 */  or        $t2, $v1, $v0
/* 4931C 8006DF1C 00082C02 */  srl       $a1, $t0, 0x10
/* 49320 8006DF20 14A00002 */  bnez      $a1, .L8006DF2C
/* 49324 8006DF24 0085001B */   divu     $zero, $a0, $a1
/* 49328 8006DF28 0007000D */  break     7
.L8006DF2C:
/* 4932C 8006DF2C 00001012 */   mflo     $v0
/* 49330 8006DF30 00001810 */  mfhi      $v1
/* 49334 8006DF34 3106FFFF */  andi      $a2, $t0, 0xffff
/* 49338 8006DF38 00000000 */  nop
/* 4933C 8006DF3C 00460018 */  mult      $v0, $a2
/* 49340 8006DF40 00031C00 */  sll       $v1, $v1, 0x10
/* 49344 8006DF44 000A1402 */  srl       $v0, $t2, 0x10
/* 49348 8006DF48 00621825 */  or        $v1, $v1, $v0
/* 4934C 8006DF4C 00002012 */  mflo      $a0
/* 49350 8006DF50 0064102B */  sltu      $v0, $v1, $a0
/* 49354 8006DF54 10400008 */  beqz      $v0, .L8006DF78
/* 49358 8006DF58 01AB5804 */   sllv     $t3, $t3, $t5
/* 4935C 8006DF5C 00681821 */  addu      $v1, $v1, $t0
/* 49360 8006DF60 0068102B */  sltu      $v0, $v1, $t0
/* 49364 8006DF64 54400005 */  bnel      $v0, $zero, .L8006DF7C
/* 49368 8006DF68 00641823 */   subu     $v1, $v1, $a0
/* 4936C 8006DF6C 0064102B */  sltu      $v0, $v1, $a0
/* 49370 8006DF70 54400001 */  bnel      $v0, $zero, .L8006DF78
/* 49374 8006DF74 00681821 */   addu     $v1, $v1, $t0
.L8006DF78:
/* 49378 8006DF78 00641823 */  subu      $v1, $v1, $a0
.L8006DF7C:
/* 4937C 8006DF7C 14A00002 */  bnez      $a1, .L8006DF88
/* 49380 8006DF80 0065001B */   divu     $zero, $v1, $a1
/* 49384 8006DF84 0007000D */  break     7
.L8006DF88:
/* 49388 8006DF88 00001012 */   mflo     $v0
/* 4938C 8006DF8C 00001810 */  mfhi      $v1
/* 49390 8006DF90 00000000 */  nop
/* 49394 8006DF94 00000000 */  nop
/* 49398 8006DF98 00460018 */  mult      $v0, $a2
/* 4939C 8006DF9C 00031C00 */  sll       $v1, $v1, 0x10
/* 493A0 8006DFA0 3142FFFF */  andi      $v0, $t2, 0xffff
/* 493A4 8006DFA4 00621825 */  or        $v1, $v1, $v0
/* 493A8 8006DFA8 00002012 */  mflo      $a0
/* 493AC 8006DFAC 0064102B */  sltu      $v0, $v1, $a0
/* 493B0 8006DFB0 50400009 */  beql      $v0, $zero, .L8006DFD8
/* 493B4 8006DFB4 00645023 */   subu     $t2, $v1, $a0
/* 493B8 8006DFB8 00681821 */  addu      $v1, $v1, $t0
/* 493BC 8006DFBC 0068102B */  sltu      $v0, $v1, $t0
/* 493C0 8006DFC0 14400005 */  bnez      $v0, .L8006DFD8
/* 493C4 8006DFC4 00645023 */   subu     $t2, $v1, $a0
/* 493C8 8006DFC8 0064102B */  sltu      $v0, $v1, $a0
/* 493CC 8006DFCC 54400001 */  bnel      $v0, $zero, .L8006DFD4
/* 493D0 8006DFD0 00681821 */   addu     $v1, $v1, $t0
.L8006DFD4:
/* 493D4 8006DFD4 00645023 */  subu      $t2, $v1, $a0
.L8006DFD8:
/* 493D8 8006DFD8 00082C02 */  srl       $a1, $t0, 0x10
/* 493DC 8006DFDC 14A00002 */  bnez      $a1, .L8006DFE8
/* 493E0 8006DFE0 0145001B */   divu     $zero, $t2, $a1
/* 493E4 8006DFE4 0007000D */  break     7
.L8006DFE8:
/* 493E8 8006DFE8 00001012 */   mflo     $v0
/* 493EC 8006DFEC 00001810 */  mfhi      $v1
/* 493F0 8006DFF0 3106FFFF */  andi      $a2, $t0, 0xffff
/* 493F4 8006DFF4 00000000 */  nop
/* 493F8 8006DFF8 00460018 */  mult      $v0, $a2
/* 493FC 8006DFFC 00031C00 */  sll       $v1, $v1, 0x10
/* 49400 8006E000 000B1402 */  srl       $v0, $t3, 0x10
/* 49404 8006E004 00621825 */  or        $v1, $v1, $v0
/* 49408 8006E008 00002012 */  mflo      $a0
/* 4940C 8006E00C 0064102B */  sltu      $v0, $v1, $a0
/* 49410 8006E010 50400009 */  beql      $v0, $zero, .L8006E038
/* 49414 8006E014 00641823 */   subu     $v1, $v1, $a0
/* 49418 8006E018 00681821 */  addu      $v1, $v1, $t0
/* 4941C 8006E01C 0068102B */  sltu      $v0, $v1, $t0
/* 49420 8006E020 54400005 */  bnel      $v0, $zero, .L8006E038
/* 49424 8006E024 00641823 */   subu     $v1, $v1, $a0
/* 49428 8006E028 0064102B */  sltu      $v0, $v1, $a0
/* 4942C 8006E02C 54400001 */  bnel      $v0, $zero, .L8006E034
/* 49430 8006E030 00681821 */   addu     $v1, $v1, $t0
.L8006E034:
/* 49434 8006E034 00641823 */  subu      $v1, $v1, $a0
.L8006E038:
/* 49438 8006E038 14A00002 */  bnez      $a1, .L8006E044
/* 4943C 8006E03C 0065001B */   divu     $zero, $v1, $a1
/* 49440 8006E040 0007000D */  break     7
.L8006E044:
/* 49444 8006E044 00001012 */   mflo     $v0
/* 49448 8006E048 00001810 */  mfhi      $v1
/* 4944C 8006E04C 00000000 */  nop
/* 49450 8006E050 00000000 */  nop
/* 49454 8006E054 00460018 */  mult      $v0, $a2
/* 49458 8006E058 00031C00 */  sll       $v1, $v1, 0x10
/* 4945C 8006E05C 3162FFFF */  andi      $v0, $t3, 0xffff
/* 49460 8006E060 00621825 */  or        $v1, $v1, $v0
/* 49464 8006E064 00002012 */  mflo      $a0
/* 49468 8006E068 0064102B */  sltu      $v0, $v1, $a0
/* 4946C 8006E06C 10400007 */  beqz      $v0, .L8006E08C
/* 49470 8006E070 00000000 */   nop
/* 49474 8006E074 00681821 */  addu      $v1, $v1, $t0
/* 49478 8006E078 0068102B */  sltu      $v0, $v1, $t0
/* 4947C 8006E07C 14400003 */  bnez      $v0, .L8006E08C
/* 49480 8006E080 0064102B */   sltu     $v0, $v1, $a0
/* 49484 8006E084 54400001 */  bnel      $v0, $zero, .L8006E08C
/* 49488 8006E088 00681821 */   addu     $v1, $v1, $t0
.L8006E08C:
/* 4948C 8006E08C 13200087 */  beqz      $t9, .L8006E2AC
/* 49490 8006E090 00645823 */   subu     $t3, $v1, $a0
/* 49494 8006E094 01AB7806 */  srlv      $t7, $t3, $t5
/* 49498 8006E098 0801B8A9 */  j         .L8006E2A4
/* 4949C 8006E09C 0000702D */   daddu    $t6, $zero, $zero
.L8006E0A0:
/* 494A0 8006E0A0 0149102B */  sltu      $v0, $t2, $t1
/* 494A4 8006E0A4 10400007 */  beqz      $v0, .L8006E0C4
/* 494A8 8006E0A8 3402FFFF */   ori      $v0, $zero, 0xffff
/* 494AC 8006E0AC 00A0782D */  daddu     $t7, $a1, $zero
/* 494B0 8006E0B0 0140702D */  daddu     $t6, $t2, $zero
/* 494B4 8006E0B4 AFAE0000 */  sw        $t6, ($sp)
/* 494B8 8006E0B8 AFAF0004 */  sw        $t7, 4($sp)
/* 494BC 8006E0BC 0801B8AB */  j         .L8006E2AC
/* 494C0 8006E0C0 00000000 */   nop
.L8006E0C4:
/* 494C4 8006E0C4 0049102B */  sltu      $v0, $v0, $t1
/* 494C8 8006E0C8 14400005 */  bnez      $v0, .L8006E0E0
/* 494CC 8006E0CC 0120202D */   daddu    $a0, $t1, $zero
/* 494D0 8006E0D0 2D220100 */  sltiu     $v0, $t1, 0x100
/* 494D4 8006E0D4 38420001 */  xori      $v0, $v0, 1
/* 494D8 8006E0D8 0801B83E */  j         .L8006E0F8
/* 494DC 8006E0DC 000218C0 */   sll      $v1, $v0, 3
.L8006E0E0:
/* 494E0 8006E0E0 3C0200FF */  lui       $v0, 0xff
/* 494E4 8006E0E4 3442FFFF */  ori       $v0, $v0, 0xffff
/* 494E8 8006E0E8 0049102B */  sltu      $v0, $v0, $t1
/* 494EC 8006E0EC 14400002 */  bnez      $v0, .L8006E0F8
/* 494F0 8006E0F0 24030018 */   addiu    $v1, $zero, 0x18
/* 494F4 8006E0F4 24030010 */  addiu     $v1, $zero, 0x10
.L8006E0F8:
/* 494F8 8006E0F8 00641006 */  srlv      $v0, $a0, $v1
/* 494FC 8006E0FC 3C01800A */  lui       $at, %hi(D_80099F20)
/* 49500 8006E100 00220821 */  addu      $at, $at, $v0
/* 49504 8006E104 90229F20 */  lbu       $v0, %lo(D_80099F20)($at)
/* 49508 8006E108 00431021 */  addu      $v0, $v0, $v1
/* 4950C 8006E10C 24030020 */  addiu     $v1, $zero, 0x20
/* 49510 8006E110 00626823 */  subu      $t5, $v1, $v0
/* 49514 8006E114 15A0000F */  bnez      $t5, .L8006E154
/* 49518 8006E118 006DC023 */   subu     $t8, $v1, $t5
/* 4951C 8006E11C 012A102B */  sltu      $v0, $t1, $t2
/* 49520 8006E120 14400004 */  bnez      $v0, .L8006E134
/* 49524 8006E124 01682023 */   subu     $a0, $t3, $t0
/* 49528 8006E128 0168102B */  sltu      $v0, $t3, $t0
/* 4952C 8006E12C 14400005 */  bnez      $v0, .L8006E144
/* 49530 8006E130 00000000 */   nop
.L8006E134:
/* 49534 8006E134 01491823 */  subu      $v1, $t2, $t1
/* 49538 8006E138 0164102B */  sltu      $v0, $t3, $a0
/* 4953C 8006E13C 00625023 */  subu      $t2, $v1, $v0
/* 49540 8006E140 0080582D */  daddu     $t3, $a0, $zero
.L8006E144:
/* 49544 8006E144 13200059 */  beqz      $t9, .L8006E2AC
/* 49548 8006E148 0160782D */   daddu    $t7, $t3, $zero
/* 4954C 8006E14C 0801B8A9 */  j         .L8006E2A4
/* 49550 8006E150 0140702D */   daddu    $t6, $t2, $zero
.L8006E154:
/* 49554 8006E154 01A91804 */  sllv      $v1, $t1, $t5
/* 49558 8006E158 03081006 */  srlv      $v0, $t0, $t8
/* 4955C 8006E15C 00624825 */  or        $t1, $v1, $v0
/* 49560 8006E160 01A84004 */  sllv      $t0, $t0, $t5
/* 49564 8006E164 030A2006 */  srlv      $a0, $t2, $t8
/* 49568 8006E168 01AA1804 */  sllv      $v1, $t2, $t5
/* 4956C 8006E16C 030B1006 */  srlv      $v0, $t3, $t8
/* 49570 8006E170 00625025 */  or        $t2, $v1, $v0
/* 49574 8006E174 00093402 */  srl       $a2, $t1, 0x10
/* 49578 8006E178 14C00002 */  bnez      $a2, .L8006E184
/* 4957C 8006E17C 0086001B */   divu     $zero, $a0, $a2
/* 49580 8006E180 0007000D */  break     7
.L8006E184:
/* 49584 8006E184 00003812 */   mflo     $a3
/* 49588 8006E188 00001810 */  mfhi      $v1
/* 4958C 8006E18C 312CFFFF */  andi      $t4, $t1, 0xffff
/* 49590 8006E190 00000000 */  nop
/* 49594 8006E194 00EC0018 */  mult      $a3, $t4
/* 49598 8006E198 000A1402 */  srl       $v0, $t2, 0x10
/* 4959C 8006E19C 00031C00 */  sll       $v1, $v1, 0x10
/* 495A0 8006E1A0 00621825 */  or        $v1, $v1, $v0
/* 495A4 8006E1A4 00002812 */  mflo      $a1
/* 495A8 8006E1A8 0065102B */  sltu      $v0, $v1, $a1
/* 495AC 8006E1AC 1040000A */  beqz      $v0, .L8006E1D8
/* 495B0 8006E1B0 01AB5804 */   sllv     $t3, $t3, $t5
/* 495B4 8006E1B4 00691821 */  addu      $v1, $v1, $t1
/* 495B8 8006E1B8 0069102B */  sltu      $v0, $v1, $t1
/* 495BC 8006E1BC 14400006 */  bnez      $v0, .L8006E1D8
/* 495C0 8006E1C0 24E7FFFF */   addiu    $a3, $a3, -1
/* 495C4 8006E1C4 0065102B */  sltu      $v0, $v1, $a1
/* 495C8 8006E1C8 50400004 */  beql      $v0, $zero, .L8006E1DC
/* 495CC 8006E1CC 00651823 */   subu     $v1, $v1, $a1
/* 495D0 8006E1D0 24E7FFFF */  addiu     $a3, $a3, -1
/* 495D4 8006E1D4 00691821 */  addu      $v1, $v1, $t1
.L8006E1D8:
/* 495D8 8006E1D8 00651823 */  subu      $v1, $v1, $a1
.L8006E1DC:
/* 495DC 8006E1DC 14C00002 */  bnez      $a2, .L8006E1E8
/* 495E0 8006E1E0 0066001B */   divu     $zero, $v1, $a2
/* 495E4 8006E1E4 0007000D */  break     7
.L8006E1E8:
/* 495E8 8006E1E8 00002012 */   mflo     $a0
/* 495EC 8006E1EC 00001810 */  mfhi      $v1
/* 495F0 8006E1F0 00000000 */  nop
/* 495F4 8006E1F4 00000000 */  nop
/* 495F8 8006E1F8 008C0018 */  mult      $a0, $t4
/* 495FC 8006E1FC 3142FFFF */  andi      $v0, $t2, 0xffff
/* 49600 8006E200 00031C00 */  sll       $v1, $v1, 0x10
/* 49604 8006E204 00621825 */  or        $v1, $v1, $v0
/* 49608 8006E208 00002812 */  mflo      $a1
/* 4960C 8006E20C 0065102B */  sltu      $v0, $v1, $a1
/* 49610 8006E210 5040000B */  beql      $v0, $zero, .L8006E240
/* 49614 8006E214 00655023 */   subu     $t2, $v1, $a1
/* 49618 8006E218 00691821 */  addu      $v1, $v1, $t1
/* 4961C 8006E21C 0069102B */  sltu      $v0, $v1, $t1
/* 49620 8006E220 14400006 */  bnez      $v0, .L8006E23C
/* 49624 8006E224 2484FFFF */   addiu    $a0, $a0, -1
/* 49628 8006E228 0065102B */  sltu      $v0, $v1, $a1
/* 4962C 8006E22C 10400004 */  beqz      $v0, .L8006E240
/* 49630 8006E230 00655023 */   subu     $t2, $v1, $a1
/* 49634 8006E234 2484FFFF */  addiu     $a0, $a0, -1
/* 49638 8006E238 00691821 */  addu      $v1, $v1, $t1
.L8006E23C:
/* 4963C 8006E23C 00655023 */  subu      $t2, $v1, $a1
.L8006E240:
/* 49640 8006E240 00071400 */  sll       $v0, $a3, 0x10
/* 49644 8006E244 00441025 */  or        $v0, $v0, $a0
/* 49648 8006E248 00480019 */  multu     $v0, $t0
/* 4964C 8006E24C 00003010 */  mfhi      $a2
/* 49650 8006E250 0146102B */  sltu      $v0, $t2, $a2
/* 49654 8006E254 00002812 */  mflo      $a1
/* 49658 8006E258 54400005 */  bnel      $v0, $zero, .L8006E270
/* 4965C 8006E25C 00A82023 */   subu     $a0, $a1, $t0
/* 49660 8006E260 14CA0007 */  bne       $a2, $t2, .L8006E280
/* 49664 8006E264 0165102B */   sltu     $v0, $t3, $a1
/* 49668 8006E268 10400005 */  beqz      $v0, .L8006E280
/* 4966C 8006E26C 00A82023 */   subu     $a0, $a1, $t0
.L8006E270:
/* 49670 8006E270 00C91823 */  subu      $v1, $a2, $t1
/* 49674 8006E274 00A4102B */  sltu      $v0, $a1, $a0
/* 49678 8006E278 00623023 */  subu      $a2, $v1, $v0
/* 4967C 8006E27C 0080282D */  daddu     $a1, $a0, $zero
.L8006E280:
/* 49680 8006E280 1320000A */  beqz      $t9, .L8006E2AC
/* 49684 8006E284 01651823 */   subu     $v1, $t3, $a1
/* 49688 8006E288 01462023 */  subu      $a0, $t2, $a2
/* 4968C 8006E28C 0163102B */  sltu      $v0, $t3, $v1
/* 49690 8006E290 00825023 */  subu      $t2, $a0, $v0
/* 49694 8006E294 030A1004 */  sllv      $v0, $t2, $t8
/* 49698 8006E298 01A31806 */  srlv      $v1, $v1, $t5
/* 4969C 8006E29C 00437825 */  or        $t7, $v0, $v1
/* 496A0 8006E2A0 01AA7006 */  srlv      $t6, $t2, $t5
.L8006E2A4:
/* 496A4 8006E2A4 AF2E0000 */  sw        $t6, ($t9)
/* 496A8 8006E2A8 AF2F0004 */  sw        $t7, 4($t9)
.L8006E2AC:
/* 496AC 8006E2AC 12400009 */  beqz      $s2, .L8006E2D4
/* 496B0 8006E2B0 00000000 */   nop
/* 496B4 8006E2B4 8FA20000 */  lw        $v0, ($sp)
/* 496B8 8006E2B8 8FA30004 */  lw        $v1, 4($sp)
/* 496BC 8006E2BC 00038823 */  negu      $s1, $v1
/* 496C0 8006E2C0 00021023 */  negu      $v0, $v0
/* 496C4 8006E2C4 0011202B */  sltu      $a0, $zero, $s1
/* 496C8 8006E2C8 00448023 */  subu      $s0, $v0, $a0
/* 496CC 8006E2CC AFB00000 */  sw        $s0, ($sp)
/* 496D0 8006E2D0 AFB10004 */  sw        $s1, 4($sp)
.L8006E2D4:
/* 496D4 8006E2D4 8FA20000 */  lw        $v0, ($sp)
/* 496D8 8006E2D8 8FA30004 */  lw        $v1, 4($sp)
/* 496DC 8006E2DC 8FB20010 */  lw        $s2, 0x10($sp)
/* 496E0 8006E2E0 8FB1000C */  lw        $s1, 0xc($sp)
/* 496E4 8006E2E4 8FB00008 */  lw        $s0, 8($sp)
/* 496E8 8006E2E8 03E00008 */  jr        $ra
/* 496EC 8006E2EC 27BD0018 */   addiu    $sp, $sp, 0x18
