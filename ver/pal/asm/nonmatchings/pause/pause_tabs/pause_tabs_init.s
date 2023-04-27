.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel pause_tabs_init
/* 13DFD8 80249198 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13DFDC 8024919C AFB20018 */  sw         $s2, 0x18($sp)
/* 13DFE0 802491A0 0080902D */  daddu      $s2, $a0, $zero
/* 13DFE4 802491A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 13DFE8 802491A8 0000802D */  daddu      $s0, $zero, $zero
/* 13DFEC 802491AC AFB3001C */  sw         $s3, 0x1C($sp)
/* 13DFF0 802491B0 3C138025 */  lui        $s3, %hi(gPauseTabsHudScripts)
/* 13DFF4 802491B4 26733540 */  addiu      $s3, $s3, %lo(gPauseTabsHudScripts)
/* 13DFF8 802491B8 AFB10014 */  sw         $s1, 0x14($sp)
/* 13DFFC 802491BC 3C118027 */  lui        $s1, %hi(gPauseTabsIconIDs)
/* 13E000 802491C0 26312500 */  addiu      $s1, $s1, %lo(gPauseTabsIconIDs)
/* 13E004 802491C4 AFBF0020 */  sw         $ra, 0x20($sp)
.Lpause_802491C8:
/* 13E008 802491C8 3C048015 */  lui        $a0, %hi(gCurrentLanguage)
/* 13E00C 802491CC 8C84AE4C */  lw         $a0, %lo(gCurrentLanguage)($a0)
/* 13E010 802491D0 00101880 */  sll        $v1, $s0, 2
/* 13E014 802491D4 00041040 */  sll        $v0, $a0, 1
/* 13E018 802491D8 00441021 */  addu       $v0, $v0, $a0
/* 13E01C 802491DC 000210C0 */  sll        $v0, $v0, 3
/* 13E020 802491E0 00621821 */  addu       $v1, $v1, $v0
/* 13E024 802491E4 00731821 */  addu       $v1, $v1, $s3
/* 13E028 802491E8 8C640000 */  lw         $a0, 0x0($v1)
/* 13E02C 802491EC 0C050015 */  jal        hud_element_create
/* 13E030 802491F0 26100001 */   addiu     $s0, $s0, 0x1
/* 13E034 802491F4 0040202D */  daddu      $a0, $v0, $zero
/* 13E038 802491F8 24050080 */  addiu      $a1, $zero, 0x80
/* 13E03C 802491FC 0C050D6C */  jal        hud_element_set_flags
/* 13E040 80249200 AE240000 */   sw        $a0, 0x0($s1)
/* 13E044 80249204 2A020006 */  slti       $v0, $s0, 0x6
/* 13E048 80249208 1440FFEF */  bnez       $v0, .Lpause_802491C8
/* 13E04C 8024920C 26310004 */   addiu     $s1, $s1, 0x4
/* 13E050 80249210 24100006 */  addiu      $s0, $zero, 0x6
/* 13E054 80249214 3C028025 */  lui        $v0, %hi(gPauseTabsWindowBPs+0xD8)
/* 13E058 80249218 24423698 */  addiu      $v0, $v0, %lo(gPauseTabsWindowBPs+0xD8)
.Lpause_8024921C:
/* 13E05C 8024921C AC520010 */  sw         $s2, 0x10($v0)
/* 13E060 80249220 2610FFFF */  addiu      $s0, $s0, -0x1
/* 13E064 80249224 0601FFFD */  bgez       $s0, .Lpause_8024921C
/* 13E068 80249228 2442FFDC */   addiu     $v0, $v0, -0x24
/* 13E06C 8024922C 3C048025 */  lui        $a0, %hi(gPauseTabsWindowBPs)
/* 13E070 80249230 248435C0 */  addiu      $a0, $a0, %lo(gPauseTabsWindowBPs)
/* 13E074 80249234 0C051AB8 */  jal        setup_pause_menu_tab
/* 13E078 80249238 24050007 */   addiu     $a1, $zero, 0x7
/* 13E07C 8024923C 24020019 */  addiu      $v0, $zero, 0x19
/* 13E080 80249240 3C018016 */  lui        $at, %hi(gWindows+0x56E)
/* 13E084 80249244 A4228E7E */  sh         $v0, %lo(gWindows+0x56E)($at)
/* 13E088 80249248 24020001 */  addiu      $v0, $zero, 0x1
/* 13E08C 8024924C 3C018027 */  lui        $at, %hi(gPauseTabsHorizScrollPos)
/* 13E090 80249250 AC20251C */  sw         $zero, %lo(gPauseTabsHorizScrollPos)($at)
/* 13E094 80249254 A2420000 */  sb         $v0, 0x0($s2)
/* 13E098 80249258 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13E09C 8024925C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 13E0A0 80249260 8FB20018 */  lw         $s2, 0x18($sp)
/* 13E0A4 80249264 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E0A8 80249268 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E0AC 8024926C 24020005 */  addiu      $v0, $zero, 0x5
/* 13E0B0 80249270 3C018027 */  lui        $at, %hi(gPauseTabsPreviousTab)
/* 13E0B4 80249274 AC222518 */  sw         $v0, %lo(gPauseTabsPreviousTab)($at)
/* 13E0B8 80249278 03E00008 */  jr         $ra
/* 13E0BC 8024927C 27BD0028 */   addiu     $sp, $sp, 0x28
