.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel msg_draw_char
/* C163C 8012A75C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* C1640 8012A760 AFB3001C */  sw        $s3, 0x1C($sp)
/* C1644 8012A764 0080982D */  daddu     $s3, $a0, $zero
/* C1648 8012A768 AFB00010 */  sw        $s0, 0x10($sp)
/* C164C 8012A76C 00A0802D */  daddu     $s0, $a1, $zero
/* C1650 8012A770 AFB20018 */  sw        $s2, 0x18($sp)
/* C1654 8012A774 00C0902D */  daddu     $s2, $a2, $zero
/* C1658 8012A778 AFB40020 */  sw        $s4, 0x20($sp)
/* C165C 8012A77C 00E0A02D */  daddu     $s4, $a3, $zero
/* C1660 8012A780 AFB10014 */  sw        $s1, 0x14($sp)
/* C1664 8012A784 8FB10038 */  lw        $s1, 0x38($sp)
/* C1668 8012A788 2402033F */  addiu     $v0, $zero, 0x33F
/* C166C 8012A78C 16420007 */  bne       $s2, $v0, .LIQUE_8012A7AC
/* C1670 8012A790 AFBF0024 */   sw       $ra, 0x24($sp)
/* C1674 8012A794 3C040002 */  lui       $a0, %hi(D_19F80)
/* C1678 8012A798 24849F80 */  addiu     $a0, $a0, %lo(D_19F80)
/* C167C 8012A79C 3C068015 */  lui       $a2, %hi(D_801544A0)
/* C1680 8012A7A0 24C644A0 */  addiu     $a2, $a2, %lo(D_801544A0)
/* C1684 8012A7A4 0804AA00 */  j         .LIQUE_8012A800
/* C1688 8012A7A8 24050080 */   addiu    $a1, $zero, 0x80
.LIQUE_8012A7AC:
/* C168C 8012A7AC 24020340 */  addiu     $v0, $zero, 0x340
/* C1690 8012A7B0 16420007 */  bne       $s2, $v0, .LIQUE_8012A7D0
/* C1694 8012A7B4 2A4200A6 */   slti     $v0, $s2, 0xA6
/* C1698 8012A7B8 3C040002 */  lui       $a0, %hi(D_1A000)
/* C169C 8012A7BC 2484A000 */  addiu     $a0, $a0, %lo(D_1A000)
/* C16A0 8012A7C0 3C068015 */  lui       $a2, %hi(D_80154520)
/* C16A4 8012A7C4 24C64520 */  addiu     $a2, $a2, %lo(D_80154520)
/* C16A8 8012A7C8 0804AA00 */  j         .LIQUE_8012A800
/* C16AC 8012A7CC 24050080 */   addiu    $a1, $zero, 0x80
.LIQUE_8012A7D0:
/* C16B0 8012A7D0 1440000D */  bnez      $v0, .LIQUE_8012A808
/* C16B4 8012A7D4 001221C0 */   sll      $a0, $s2, 7
/* C16B8 8012A7D8 3C020000 */  lui       $v0, (0x0 >> 16)
/* C16BC 8012A7DC 24420000 */  addiu     $v0, $v0, 0x0
/* C16C0 8012A7E0 00822021 */  addu      $a0, $a0, $v0
/* C16C4 8012A7E4 24050080 */  addiu     $a1, $zero, 0x80
/* C16C8 8012A7E8 3C068015 */  lui       $a2, %hi(D_8014AD24)
/* C16CC 8012A7EC 8CC6AD24 */  lw        $a2, %lo(D_8014AD24)($a2)
/* C16D0 8012A7F0 3C028015 */  lui       $v0, %hi(D_801544A0)
/* C16D4 8012A7F4 244244A0 */  addiu     $v0, $v0, %lo(D_801544A0)
/* C16D8 8012A7F8 000631C0 */  sll       $a2, $a2, 7
/* C16DC 8012A7FC 00C23021 */  addu      $a2, $a2, $v0
.LIQUE_8012A800:
/* C16E0 8012A800 0C0486BA */  jal       load_font_data
/* C16E4 8012A804 00000000 */   nop
.LIQUE_8012A808:
/* C16E8 8012A808 9602003C */  lhu       $v0, 0x3C($s0)
/* C16EC 8012A80C C6060018 */  lwc1      $f6, 0x18($s0)
/* C16F0 8012A810 C602001C */  lwc1      $f2, 0x1C($s0)
/* C16F4 8012A814 00021080 */  sll       $v0, $v0, 2
/* C16F8 8012A818 3C09802F */  lui       $t1, %hi(gMsgCharsets)
/* C16FC 8012A81C 01224821 */  addu      $t1, $t1, $v0
/* C1700 8012A820 8D29B5A8 */  lw        $t1, %lo(gMsgCharsets)($t1)
/* C1704 8012A824 8FA3003C */  lw        $v1, 0x3C($sp)
/* C1708 8012A828 91220000 */  lbu       $v0, 0x0($t1)
/* C170C 8012A82C 8E070004 */  lw        $a3, 0x4($s0)
/* C1710 8012A830 44822000 */  mtc1      $v0, $f4
/* C1714 8012A834 00000000 */  nop
/* C1718 8012A838 46802120 */  cvt.s.w   $f4, $f4
/* C171C 8012A83C 46043102 */  mul.s     $f4, $f6, $f4
/* C1720 8012A840 00000000 */  nop
/* C1724 8012A844 960A003E */  lhu       $t2, 0x3E($s0)
/* C1728 8012A848 91220001 */  lbu       $v0, 0x1($t1)
/* C172C 8012A84C 8E050008 */  lw        $a1, 0x8($s0)
/* C1730 8012A850 44820000 */  mtc1      $v0, $f0
/* C1734 8012A854 00000000 */  nop
/* C1738 8012A858 46800020 */  cvt.s.w   $f0, $f0
/* C173C 8012A85C 46001082 */  mul.s     $f2, $f2, $f0
/* C1740 8012A860 00000000 */  nop
/* C1744 8012A864 8E06000C */  lw        $a2, 0xC($s0)
/* C1748 8012A868 8E040000 */  lw        $a0, 0x0($s0)
/* C174C 8012A86C 4600220D */  trunc.w.s $f8, $f4
/* C1750 8012A870 44024000 */  mfc1      $v0, $f8
/* C1754 8012A874 00000000 */  nop
/* C1758 8012A878 02224021 */  addu      $t0, $s1, $v0
/* C175C 8012A87C 4600120D */  trunc.w.s $f8, $f2
/* C1760 8012A880 44024000 */  mfc1      $v0, $f8
/* C1764 8012A884 00000000 */  nop
/* C1768 8012A888 00625821 */  addu      $t3, $v1, $v0
/* C176C 8012A88C 0227102A */  slt       $v0, $s1, $a3
/* C1770 8012A890 1040021F */  beqz      $v0, .LIQUE_8012B110
/* C1774 8012A894 0066102A */   slt      $v0, $v1, $a2
/* C1778 8012A898 1040021D */  beqz      $v0, .LIQUE_8012B110
/* C177C 8012A89C 0088102A */   slt      $v0, $a0, $t0
/* C1780 8012A8A0 1040021B */  beqz      $v0, .LIQUE_8012B110
/* C1784 8012A8A4 00AB102A */   slt      $v0, $a1, $t3
/* C1788 8012A8A8 10400219 */  beqz      $v0, .LIQUE_8012B110
/* C178C 8012A8AC 0224102A */   slt      $v0, $s1, $a0
/* C1790 8012A8B0 10400017 */  beqz      $v0, .LIQUE_8012A910
/* C1794 8012A8B4 02241023 */   subu     $v0, $s1, $a0
/* C1798 8012A8B8 04420001 */  bltzl     $v0, .LIQUE_8012A8C0
/* C179C 8012A8BC 00021023 */   negu     $v0, $v0
.LIQUE_8012A8C0:
/* C17A0 8012A8C0 44820000 */  mtc1      $v0, $f0
/* C17A4 8012A8C4 00000000 */  nop
/* C17A8 8012A8C8 46800020 */  cvt.s.w   $f0, $f0
/* C17AC 8012A8CC 46060103 */  div.s     $f4, $f0, $f6
/* C17B0 8012A8D0 3C013FE0 */  lui       $at, (0x3FE00000 >> 16)
/* C17B4 8012A8D4 44811800 */  mtc1      $at, $f3
/* C17B8 8012A8D8 44801000 */  mtc1      $zero, $f2
/* C17BC 8012A8DC 46002021 */  cvt.d.s   $f0, $f4
/* C17C0 8012A8E0 46220000 */  add.d     $f0, $f0, $f2
/* C17C4 8012A8E4 3C014040 */  lui       $at, (0x40400000 >> 16)
/* C17C8 8012A8E8 44811800 */  mtc1      $at, $f3
/* C17CC 8012A8EC 44801000 */  mtc1      $zero, $f2
/* C17D0 8012A8F0 00000000 */  nop
/* C17D4 8012A8F4 46220002 */  mul.d     $f0, $f0, $f2
/* C17D8 8012A8F8 00000000 */  nop
/* C17DC 8012A8FC 46200020 */  cvt.s.d   $f0, $f0
/* C17E0 8012A900 4600020D */  trunc.w.s $f8, $f0
/* C17E4 8012A904 44184000 */  mfc1      $t8, $f8
/* C17E8 8012A908 0804AA46 */  j         .LIQUE_8012A918
/* C17EC 8012A90C 0080782D */   daddu    $t7, $a0, $zero
.LIQUE_8012A910:
/* C17F0 8012A910 0000C02D */  daddu     $t8, $zero, $zero
/* C17F4 8012A914 0220782D */  daddu     $t7, $s1, $zero
.LIQUE_8012A918:
/* C17F8 8012A918 0065102A */  slt       $v0, $v1, $a1
/* C17FC 8012A91C 10400017 */  beqz      $v0, .LIQUE_8012A97C
/* C1800 8012A920 0000702D */   daddu    $t6, $zero, $zero
/* C1804 8012A924 8E6204FC */  lw        $v0, 0x4FC($s3)
/* C1808 8012A928 30420400 */  andi      $v0, $v0, 0x400
/* C180C 8012A92C 10400004 */  beqz      $v0, .LIQUE_8012A940
/* C1810 8012A930 00651023 */   subu     $v0, $v1, $a1
/* C1814 8012A934 04610012 */  bgez      $v1, .LIQUE_8012A980
/* C1818 8012A938 0060682D */   daddu    $t5, $v1, $zero
/* C181C 8012A93C 00651023 */  subu      $v0, $v1, $a1
.LIQUE_8012A940:
/* C1820 8012A940 04420001 */  bltzl     $v0, .LIQUE_8012A948
/* C1824 8012A944 00021023 */   negu     $v0, $v0
.LIQUE_8012A948:
/* C1828 8012A948 44822000 */  mtc1      $v0, $f4
/* C182C 8012A94C 00000000 */  nop
/* C1830 8012A950 46802120 */  cvt.s.w   $f4, $f4
/* C1834 8012A954 C602001C */  lwc1      $f2, 0x1C($s0)
/* C1838 8012A958 3C014200 */  lui       $at, (0x42000000 >> 16)
/* C183C 8012A95C 44810000 */  mtc1      $at, $f0
/* C1840 8012A960 46022103 */  div.s     $f4, $f4, $f2
/* C1844 8012A964 46002002 */  mul.s     $f0, $f4, $f0
/* C1848 8012A968 00000000 */  nop
/* C184C 8012A96C 4600020D */  trunc.w.s $f8, $f0
/* C1850 8012A970 440E4000 */  mfc1      $t6, $f8
/* C1854 8012A974 0804AA60 */  j         .LIQUE_8012A980
/* C1858 8012A978 00A0682D */   daddu    $t5, $a1, $zero
.LIQUE_8012A97C:
/* C185C 8012A97C 0060682D */  daddu     $t5, $v1, $zero
.LIQUE_8012A980:
/* C1860 8012A980 0100602D */  daddu     $t4, $t0, $zero
/* C1864 8012A984 0187102A */  slt       $v0, $t4, $a3
/* C1868 8012A988 50400001 */  beql      $v0, $zero, .LIQUE_8012A990
/* C186C 8012A98C 00E0602D */   daddu    $t4, $a3, $zero
.LIQUE_8012A990:
/* C1870 8012A990 0166102A */  slt       $v0, $t3, $a2
/* C1874 8012A994 50400001 */  beql      $v0, $zero, .LIQUE_8012A99C
/* C1878 8012A998 00C0582D */   daddu    $t3, $a2, $zero
.LIQUE_8012A99C:
/* C187C 8012A99C C6040018 */  lwc1      $f4, 0x18($s0)
/* C1880 8012A9A0 3C013F80 */  lui       $at, (0x3F800000 >> 16)
/* C1884 8012A9A4 44811000 */  mtc1      $at, $f2
/* C1888 8012A9A8 3C014480 */  lui       $at, (0x44800000 >> 16)
/* C188C 8012A9AC 44813000 */  mtc1      $at, $f6
/* C1890 8012A9B0 46041103 */  div.s     $f4, $f2, $f4
/* C1894 8012A9B4 46062102 */  mul.s     $f4, $f4, $f6
/* C1898 8012A9B8 00000000 */  nop
/* C189C 8012A9BC C600001C */  lwc1      $f0, 0x1C($s0)
/* C18A0 8012A9C0 46001083 */  div.s     $f2, $f2, $f0
/* C18A4 8012A9C4 46061082 */  mul.s     $f2, $f2, $f6
/* C18A8 8012A9C8 00000000 */  nop
/* C18AC 8012A9CC 96040034 */  lhu       $a0, 0x34($s0)
/* C18B0 8012A9D0 30820011 */  andi      $v0, $a0, 0x11
/* C18B4 8012A9D4 4600220D */  trunc.w.s $f8, $f4
/* C18B8 8012A9D8 44114000 */  mfc1      $s1, $f8
/* C18BC 8012A9DC 4600120D */  trunc.w.s $f8, $f2
/* C18C0 8012A9E0 44134000 */  mfc1      $s3, $f8
/* C18C4 8012A9E4 1040002C */  beqz      $v0, .LIQUE_8012AA98
/* C18C8 8012A9E8 3082FFEE */   andi     $v0, $a0, 0xFFEE
/* C18CC 8012A9EC 3C07F500 */  lui       $a3, (0xF5000100 >> 16)
/* C18D0 8012A9F0 34E70100 */  ori       $a3, $a3, (0xF5000100 & 0xFFFF)
/* C18D4 8012A9F4 3C080703 */  lui       $t0, (0x703C000 >> 16)
/* C18D8 8012A9F8 3508C000 */  ori       $t0, $t0, (0x703C000 & 0xFFFF)
/* C18DC 8012A9FC 3C05800A */  lui       $a1, %hi(gMainGfxPos)
/* C18E0 8012AA00 24A59244 */  addiu     $a1, $a1, %lo(gMainGfxPos)
/* C18E4 8012AA04 8CA30000 */  lw        $v1, 0x0($a1)
/* C18E8 8012AA08 A6020034 */  sh        $v0, 0x34($s0)
/* C18EC 8012AA0C 3C02FD10 */  lui       $v0, (0xFD100000 >> 16)
/* C18F0 8012AA10 3C04802F */  lui       $a0, %hi(D_802F4560)
/* C18F4 8012AA14 24844558 */  addiu     $a0, $a0, %lo(D_802F4560)
/* C18F8 8012AA18 0060302D */  daddu     $a2, $v1, $zero
/* C18FC 8012AA1C 24630008 */  addiu     $v1, $v1, 0x8
/* C1900 8012AA20 ACA30000 */  sw        $v1, 0x0($a1)
/* C1904 8012AA24 ACC20000 */  sw        $v0, 0x0($a2)
/* C1908 8012AA28 00141100 */  sll       $v0, $s4, 4
/* C190C 8012AA2C 00441021 */  addu      $v0, $v0, $a0
/* C1910 8012AA30 ACC20004 */  sw        $v0, 0x4($a2)
/* C1914 8012AA34 24620008 */  addiu     $v0, $v1, 0x8
/* C1918 8012AA38 ACA20000 */  sw        $v0, 0x0($a1)
/* C191C 8012AA3C 3C02E800 */  lui       $v0, (0xE8000000 >> 16)
/* C1920 8012AA40 AC620000 */  sw        $v0, 0x0($v1)
/* C1924 8012AA44 24620010 */  addiu     $v0, $v1, 0x10
/* C1928 8012AA48 AC600004 */  sw        $zero, 0x4($v1)
/* C192C 8012AA4C ACA20000 */  sw        $v0, 0x0($a1)
/* C1930 8012AA50 3C020700 */  lui       $v0, (0x7000000 >> 16)
/* C1934 8012AA54 AC62000C */  sw        $v0, 0xC($v1)
/* C1938 8012AA58 24620018 */  addiu     $v0, $v1, 0x18
/* C193C 8012AA5C AC670008 */  sw        $a3, 0x8($v1)
/* C1940 8012AA60 ACA20000 */  sw        $v0, 0x0($a1)
/* C1944 8012AA64 3C02E600 */  lui       $v0, (0xE6000000 >> 16)
/* C1948 8012AA68 AC620010 */  sw        $v0, 0x10($v1)
/* C194C 8012AA6C 24620020 */  addiu     $v0, $v1, 0x20
/* C1950 8012AA70 AC600014 */  sw        $zero, 0x14($v1)
/* C1954 8012AA74 ACA20000 */  sw        $v0, 0x0($a1)
/* C1958 8012AA78 3C02F000 */  lui       $v0, (0xF0000000 >> 16)
/* C195C 8012AA7C AC620018 */  sw        $v0, 0x18($v1)
/* C1960 8012AA80 24620028 */  addiu     $v0, $v1, 0x28
/* C1964 8012AA84 AC68001C */  sw        $t0, 0x1C($v1)
/* C1968 8012AA88 ACA20000 */  sw        $v0, 0x0($a1)
/* C196C 8012AA8C 3C02E700 */  lui       $v0, (0xE7000000 >> 16)
/* C1970 8012AA90 AC620020 */  sw        $v0, 0x20($v1)
/* C1974 8012AA94 AC600024 */  sw        $zero, 0x24($v1)
.LIQUE_8012AA98:
/* C1978 8012AA98 91220000 */  lbu       $v0, 0x0($t1)
/* C197C 8012AA9C 2C420010 */  sltiu     $v0, $v0, 0x10
/* C1980 8012AAA0 144000D3 */  bnez      $v0, .LIQUE_8012ADF0
/* C1984 8012AAA4 2642FCC1 */   addiu    $v0, $s2, -0x33F
/* C1988 8012AAA8 91220000 */  lbu       $v0, 0x0($t1)
/* C198C 8012AAAC 3042000F */  andi      $v0, $v0, 0xF
/* C1990 8012AAB0 144000CF */  bnez      $v0, .LIQUE_8012ADF0
/* C1994 8012AAB4 2642FCC1 */   addiu    $v0, $s2, -0x33F
/* C1998 8012AAB8 2C420002 */  sltiu     $v0, $v0, 0x2
/* C199C 8012AABC 1040003B */  beqz      $v0, .LIQUE_8012ABAC
/* C19A0 8012AAC0 3C02FD50 */   lui      $v0, (0xFD500000 >> 16)
/* C19A4 8012AAC4 3C05800A */  lui       $a1, %hi(gMainGfxPos)
/* C19A8 8012AAC8 24A59244 */  addiu     $a1, $a1, %lo(gMainGfxPos)
/* C19AC 8012AACC 3C038014 */  lui       $v1, %hi(D_8013A520)
/* C19B0 8012AAD0 2463A520 */  addiu     $v1, $v1, %lo(D_8013A520)
/* C19B4 8012AAD4 8CA40000 */  lw        $a0, 0x0($a1)
/* C19B8 8012AAD8 3C080700 */  lui       $t0, (0x7000000 >> 16)
/* C19BC 8012AADC 0080302D */  daddu     $a2, $a0, $zero
/* C19C0 8012AAE0 24840008 */  addiu     $a0, $a0, 0x8
/* C19C4 8012AAE4 ACA40000 */  sw        $a0, 0x0($a1)
/* C19C8 8012AAE8 ACC20000 */  sw        $v0, 0x0($a2)
/* C19CC 8012AAEC 001211C0 */  sll       $v0, $s2, 7
/* C19D0 8012AAF0 00431021 */  addu      $v0, $v0, $v1
/* C19D4 8012AAF4 ACC20004 */  sw        $v0, 0x4($a2)
/* C19D8 8012AAF8 24820008 */  addiu     $v0, $a0, 0x8
/* C19DC 8012AAFC ACA20000 */  sw        $v0, 0x0($a1)
/* C19E0 8012AB00 3C02F550 */  lui       $v0, (0xF5500000 >> 16)
/* C19E4 8012AB04 AC820000 */  sw        $v0, 0x0($a0)
/* C19E8 8012AB08 24820010 */  addiu     $v0, $a0, 0x10
/* C19EC 8012AB0C AC880004 */  sw        $t0, 0x4($a0)
/* C19F0 8012AB10 ACA20000 */  sw        $v0, 0x0($a1)
/* C19F4 8012AB14 3C02E600 */  lui       $v0, (0xE6000000 >> 16)
/* C19F8 8012AB18 AC820008 */  sw        $v0, 0x8($a0)
/* C19FC 8012AB1C 24820018 */  addiu     $v0, $a0, 0x18
/* C1A00 8012AB20 AC80000C */  sw        $zero, 0xC($a0)
/* C1A04 8012AB24 ACA20000 */  sw        $v0, 0x0($a1)
/* C1A08 8012AB28 3C02F300 */  lui       $v0, (0xF3000000 >> 16)
/* C1A0C 8012AB2C AC820010 */  sw        $v0, 0x10($a0)
/* C1A10 8012AB30 91230000 */  lbu       $v1, 0x0($t1)
/* C1A14 8012AB34 24860014 */  addiu     $a2, $a0, 0x14
/* C1A18 8012AB38 00032102 */  srl       $a0, $v1, 4
/* C1A1C 8012AB3C 10800002 */  beqz      $a0, .LIQUE_8012AB48
/* C1A20 8012AB40 24070800 */   addiu    $a3, $zero, 0x800
/* C1A24 8012AB44 248707FF */  addiu     $a3, $a0, 0x7FF
.LIQUE_8012AB48:
/* C1A28 8012AB48 91220001 */  lbu       $v0, 0x1($t1)
/* C1A2C 8012AB4C 00620018 */  mult      $v1, $v0
.LIQUE_8012AB50:
/* C1A30 8012AB50 0000C812 */  mflo      $t9
/* C1A34 8012AB54 27220003 */  addiu     $v0, $t9, 0x3
/* C1A38 8012AB58 00021083 */  sra       $v0, $v0, 2
/* C1A3C 8012AB5C 2443FFFF */  addiu     $v1, $v0, -0x1
/* C1A40 8012AB60 28620800 */  slti      $v0, $v1, 0x800
/* C1A44 8012AB64 50400001 */  beql      $v0, $zero, .LIQUE_8012AB6C
/* C1A48 8012AB68 240307FF */   addiu    $v1, $zero, 0x7FF
.LIQUE_8012AB6C:
/* C1A4C 8012AB6C 30620FFF */  andi      $v0, $v1, 0xFFF
/* C1A50 8012AB70 00021300 */  sll       $v0, $v0, 12
/* C1A54 8012AB74 10800036 */  beqz      $a0, .LIQUE_8012AC50
/* C1A58 8012AB78 00482825 */   or       $a1, $v0, $t0
/* C1A5C 8012AB7C 14800002 */  bnez      $a0, .LIQUE_8012AB88
/* C1A60 8012AB80 00E4001A */   div      $zero, $a3, $a0
/* C1A64 8012AB84 0007000D */  break     7
.LIQUE_8012AB88:
/* C1A68 8012AB88 2401FFFF */  addiu     $at, $zero, -0x1
/* C1A6C 8012AB8C 14810004 */  bne       $a0, $at, .LIQUE_8012ABA0
/* C1A70 8012AB90 3C018000 */   lui      $at, (0x80000000 >> 16)
/* C1A74 8012AB94 14E10002 */  bne       $a3, $at, .LIQUE_8012ABA0
/* C1A78 8012AB98 00000000 */   nop
/* C1A7C 8012AB9C 0006000D */  break     6
.LIQUE_8012ABA0:
/* C1A80 8012ABA0 00001012 */  mflo      $v0
/* C1A84 8012ABA4 0804AB57 */  j         .LIQUE_8012AD5C
/* C1A88 8012ABA8 00A21025 */   or       $v0, $a1, $v0
.LIQUE_8012ABAC:
/* C1A8C 8012ABAC 2A4200A6 */  slti      $v0, $s2, 0xA6
/* C1A90 8012ABB0 14400029 */  bnez      $v0, .LIQUE_8012AC58
/* C1A94 8012ABB4 3C02FD50 */   lui      $v0, (0xFD500000 >> 16)
/* C1A98 8012ABB8 3C05800A */  lui       $a1, %hi(gMainGfxPos)
/* C1A9C 8012ABBC 24A59244 */  addiu     $a1, $a1, %lo(gMainGfxPos)
/* C1AA0 8012ABC0 24070800 */  addiu     $a3, $zero, 0x800
/* C1AA4 8012ABC4 8CA30000 */  lw        $v1, 0x0($a1)
/* C1AA8 8012ABC8 3C048015 */  lui       $a0, %hi(D_801544A0)
/* C1AAC 8012ABCC 248444A0 */  addiu     $a0, $a0, %lo(D_801544A0)
/* C1AB0 8012ABD0 0060302D */  daddu     $a2, $v1, $zero
/* C1AB4 8012ABD4 24630008 */  addiu     $v1, $v1, 0x8
/* C1AB8 8012ABD8 ACA30000 */  sw        $v1, 0x0($a1)
/* C1ABC 8012ABDC ACC20000 */  sw        $v0, 0x0($a2)
/* C1AC0 8012ABE0 3C028015 */  lui       $v0, %hi(D_8014AD24)
/* C1AC4 8012ABE4 8C42AD24 */  lw        $v0, %lo(D_8014AD24)($v0)
/* C1AC8 8012ABE8 3C080700 */  lui       $t0, (0x7000000 >> 16)
/* C1ACC 8012ABEC 000211C0 */  sll       $v0, $v0, 7
/* C1AD0 8012ABF0 00441021 */  addu      $v0, $v0, $a0
/* C1AD4 8012ABF4 ACC20004 */  sw        $v0, 0x4($a2)
/* C1AD8 8012ABF8 24620008 */  addiu     $v0, $v1, 0x8
/* C1ADC 8012ABFC ACA20000 */  sw        $v0, 0x0($a1)
/* C1AE0 8012AC00 3C02F550 */  lui       $v0, (0xF5500000 >> 16)
/* C1AE4 8012AC04 AC620000 */  sw        $v0, 0x0($v1)
/* C1AE8 8012AC08 24620010 */  addiu     $v0, $v1, 0x10
/* C1AEC 8012AC0C AC680004 */  sw        $t0, 0x4($v1)
/* C1AF0 8012AC10 ACA20000 */  sw        $v0, 0x0($a1)
/* C1AF4 8012AC14 3C02E600 */  lui       $v0, (0xE6000000 >> 16)
/* C1AF8 8012AC18 AC620008 */  sw        $v0, 0x8($v1)
/* C1AFC 8012AC1C 24620018 */  addiu     $v0, $v1, 0x18
/* C1B00 8012AC20 AC60000C */  sw        $zero, 0xC($v1)
/* C1B04 8012AC24 ACA20000 */  sw        $v0, 0x0($a1)
/* C1B08 8012AC28 3C02F300 */  lui       $v0, (0xF3000000 >> 16)
/* C1B0C 8012AC2C AC620010 */  sw        $v0, 0x10($v1)
/* C1B10 8012AC30 91250000 */  lbu       $a1, 0x0($t1)
/* C1B14 8012AC34 00052102 */  srl       $a0, $a1, 4
/* C1B18 8012AC38 10800002 */  beqz      $a0, .LIQUE_8012AC44
/* C1B1C 8012AC3C 24660014 */   addiu    $a2, $v1, 0x14
/* C1B20 8012AC40 248707FF */  addiu     $a3, $a0, 0x7FF
.LIQUE_8012AC44:
/* C1B24 8012AC44 91220001 */  lbu       $v0, 0x1($t1)
/* C1B28 8012AC48 0804AAD4 */  j         .LIQUE_8012AB50
/* C1B2C 8012AC4C 00A20018 */   mult     $a1, $v0
.LIQUE_8012AC50:
/* C1B30 8012AC50 0804AB57 */  j         .LIQUE_8012AD5C
/* C1B34 8012AC54 00A71025 */   or       $v0, $a1, $a3
.LIQUE_8012AC58:
/* C1B38 8012AC58 3C06800A */  lui       $a2, %hi(gMainGfxPos)
/* C1B3C 8012AC5C 24C69244 */  addiu     $a2, $a2, %lo(gMainGfxPos)
/* C1B40 8012AC60 8CC40000 */  lw        $a0, 0x0($a2)
/* C1B44 8012AC64 0080382D */  daddu     $a3, $a0, $zero
/* C1B48 8012AC68 24840008 */  addiu     $a0, $a0, 0x8
/* C1B4C 8012AC6C ACC40000 */  sw        $a0, 0x0($a2)
/* C1B50 8012AC70 ACE20000 */  sw        $v0, 0x0($a3)
/* C1B54 8012AC74 24820008 */  addiu     $v0, $a0, 0x8
/* C1B58 8012AC78 ACC20000 */  sw        $v0, 0x0($a2)
/* C1B5C 8012AC7C 24820010 */  addiu     $v0, $a0, 0x10
/* C1B60 8012AC80 ACC20000 */  sw        $v0, 0x0($a2)
/* C1B64 8012AC84 000A1040 */  sll       $v0, $t2, 1
/* C1B68 8012AC88 004A1021 */  addu      $v0, $v0, $t2
/* C1B6C 8012AC8C 00021080 */  sll       $v0, $v0, 2
/* C1B70 8012AC90 8D250008 */  lw        $a1, 0x8($t1)
/* C1B74 8012AC94 95230004 */  lhu       $v1, 0x4($t1)
/* C1B78 8012AC98 00451021 */  addu      $v0, $v0, $a1
/* C1B7C 8012AC9C 00720018 */  mult      $v1, $s2
/* C1B80 8012ACA0 24830018 */  addiu     $v1, $a0, 0x18
/* C1B84 8012ACA4 8C420000 */  lw        $v0, 0x0($v0)
/* C1B88 8012ACA8 3C050700 */  lui       $a1, (0x7000000 >> 16)
/* C1B8C 8012ACAC ACC30000 */  sw        $v1, 0x0($a2)
/* C1B90 8012ACB0 0000C812 */  mflo      $t9
/* C1B94 8012ACB4 00591021 */  addu      $v0, $v0, $t9
/* C1B98 8012ACB8 ACE20004 */  sw        $v0, 0x4($a3)
/* C1B9C 8012ACBC 3C02F550 */  lui       $v0, (0xF5500000 >> 16)
/* C1BA0 8012ACC0 AC820000 */  sw        $v0, 0x0($a0)
/* C1BA4 8012ACC4 3C02E600 */  lui       $v0, (0xE6000000 >> 16)
/* C1BA8 8012ACC8 AC820008 */  sw        $v0, 0x8($a0)
/* C1BAC 8012ACCC 3C02F300 */  lui       $v0, (0xF3000000 >> 16)
/* C1BB0 8012ACD0 AC850004 */  sw        $a1, 0x4($a0)
/* C1BB4 8012ACD4 AC80000C */  sw        $zero, 0xC($a0)
/* C1BB8 8012ACD8 AC820010 */  sw        $v0, 0x10($a0)
/* C1BBC 8012ACDC 91230000 */  lbu       $v1, 0x0($t1)
/* C1BC0 8012ACE0 24860014 */  addiu     $a2, $a0, 0x14
/* C1BC4 8012ACE4 00032102 */  srl       $a0, $v1, 4
/* C1BC8 8012ACE8 10800002 */  beqz      $a0, .LIQUE_8012ACF4
/* C1BCC 8012ACEC 24080800 */   addiu    $t0, $zero, 0x800
/* C1BD0 8012ACF0 248807FF */  addiu     $t0, $a0, 0x7FF
.LIQUE_8012ACF4:
/* C1BD4 8012ACF4 91220001 */  lbu       $v0, 0x1($t1)
/* C1BD8 8012ACF8 00620018 */  mult      $v1, $v0
/* C1BDC 8012ACFC 0000C812 */  mflo      $t9
/* C1BE0 8012AD00 27220003 */  addiu     $v0, $t9, 0x3
/* C1BE4 8012AD04 00021083 */  sra       $v0, $v0, 2
/* C1BE8 8012AD08 2443FFFF */  addiu     $v1, $v0, -0x1
/* C1BEC 8012AD0C 28620800 */  slti      $v0, $v1, 0x800
/* C1BF0 8012AD10 50400001 */  beql      $v0, $zero, .LIQUE_8012AD18
/* C1BF4 8012AD14 240307FF */   addiu    $v1, $zero, 0x7FF
.LIQUE_8012AD18:
/* C1BF8 8012AD18 30620FFF */  andi      $v0, $v1, 0xFFF
/* C1BFC 8012AD1C 00021300 */  sll       $v0, $v0, 12
/* C1C00 8012AD20 1080000D */  beqz      $a0, .LIQUE_8012AD58
/* C1C04 8012AD24 00452825 */   or       $a1, $v0, $a1
/* C1C08 8012AD28 14800002 */  bnez      $a0, .LIQUE_8012AD34
/* C1C0C 8012AD2C 0104001A */   div      $zero, $t0, $a0
/* C1C10 8012AD30 0007000D */  break     7
.LIQUE_8012AD34:
/* C1C14 8012AD34 2401FFFF */  addiu     $at, $zero, -0x1
/* C1C18 8012AD38 14810004 */  bne       $a0, $at, .LIQUE_8012AD4C
/* C1C1C 8012AD3C 3C018000 */   lui      $at, (0x80000000 >> 16)
/* C1C20 8012AD40 15010002 */  bne       $t0, $at, .LIQUE_8012AD4C
/* C1C24 8012AD44 00000000 */   nop
/* C1C28 8012AD48 0006000D */  break     6
.LIQUE_8012AD4C:
/* C1C2C 8012AD4C 00001012 */  mflo      $v0
/* C1C30 8012AD50 0804AB57 */  j         .LIQUE_8012AD5C
/* C1C34 8012AD54 00A21025 */   or       $v0, $a1, $v0
.LIQUE_8012AD58:
/* C1C38 8012AD58 00A81025 */  or        $v0, $a1, $t0
.LIQUE_8012AD5C:
/* C1C3C 8012AD5C 3C05800A */  lui       $a1, %hi(gMainGfxPos)
/* C1C40 8012AD60 24A59244 */  addiu     $a1, $a1, %lo(gMainGfxPos)
/* C1C44 8012AD64 8CA40000 */  lw        $a0, 0x0($a1)
/* C1C48 8012AD68 ACC20000 */  sw        $v0, 0x0($a2)
/* C1C4C 8012AD6C 3C02E700 */  lui       $v0, (0xE7000000 >> 16)
/* C1C50 8012AD70 0080182D */  daddu     $v1, $a0, $zero
/* C1C54 8012AD74 24840008 */  addiu     $a0, $a0, 0x8
/* C1C58 8012AD78 ACA40000 */  sw        $a0, 0x0($a1)
/* C1C5C 8012AD7C AC620000 */  sw        $v0, 0x0($v1)
/* C1C60 8012AD80 24820008 */  addiu     $v0, $a0, 0x8
/* C1C64 8012AD84 AC600004 */  sw        $zero, 0x4($v1)
/* C1C68 8012AD88 ACA20000 */  sw        $v0, 0x0($a1)
/* C1C6C 8012AD8C 91220000 */  lbu       $v0, 0x0($t1)
/* C1C70 8012AD90 24830010 */  addiu     $v1, $a0, 0x10
/* C1C74 8012AD94 AC800004 */  sw        $zero, 0x4($a0)
/* C1C78 8012AD98 ACA30000 */  sw        $v1, 0x0($a1)
/* C1C7C 8012AD9C 3C03F200 */  lui       $v1, (0xF2000000 >> 16)
/* C1C80 8012ADA0 AC830008 */  sw        $v1, 0x8($a0)
/* C1C84 8012ADA4 3C03F540 */  lui       $v1, (0xF5400000 >> 16)
/* C1C88 8012ADA8 00021042 */  srl       $v0, $v0, 1
/* C1C8C 8012ADAC 24420007 */  addiu     $v0, $v0, 0x7
/* C1C90 8012ADB0 000210C2 */  srl       $v0, $v0, 3
/* C1C94 8012ADB4 00021240 */  sll       $v0, $v0, 9
/* C1C98 8012ADB8 00431025 */  or        $v0, $v0, $v1
/* C1C9C 8012ADBC AC820000 */  sw        $v0, 0x0($a0)
/* C1CA0 8012ADC0 91230000 */  lbu       $v1, 0x0($t1)
/* C1CA4 8012ADC4 91220001 */  lbu       $v0, 0x1($t1)
/* C1CA8 8012ADC8 2463FFFF */  addiu     $v1, $v1, -0x1
/* C1CAC 8012ADCC 00031880 */  sll       $v1, $v1, 2
/* C1CB0 8012ADD0 30630FFF */  andi      $v1, $v1, 0xFFF
/* C1CB4 8012ADD4 00031B00 */  sll       $v1, $v1, 12
/* C1CB8 8012ADD8 2442FFFF */  addiu     $v0, $v0, -0x1
/* C1CBC 8012ADDC 00021080 */  sll       $v0, $v0, 2
/* C1CC0 8012ADE0 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1CC4 8012ADE4 00621825 */  or        $v1, $v1, $v0
/* C1CC8 8012ADE8 0804AC0A */  j         .LIQUE_8012B028
/* C1CCC 8012ADEC AC83000C */   sw       $v1, 0xC($a0)
.LIQUE_8012ADF0:
/* C1CD0 8012ADF0 2C420002 */  sltiu     $v0, $v0, 0x2
/* C1CD4 8012ADF4 10400018 */  beqz      $v0, .LIQUE_8012AE58
/* C1CD8 8012ADF8 001219C0 */   sll      $v1, $s2, 7
/* C1CDC 8012ADFC 3C06800A */  lui       $a2, %hi(gMainGfxPos)
/* C1CE0 8012AE00 24C69244 */  addiu     $a2, $a2, %lo(gMainGfxPos)
/* C1CE4 8012AE04 8CC50000 */  lw        $a1, 0x0($a2)
/* C1CE8 8012AE08 3C048014 */  lui       $a0, %hi(D_8013A520)
/* C1CEC 8012AE0C 2484A520 */  addiu     $a0, $a0, %lo(D_8013A520)
/* C1CF0 8012AE10 00A0382D */  daddu     $a3, $a1, $zero
/* C1CF4 8012AE14 24A50008 */  addiu     $a1, $a1, 0x8
/* C1CF8 8012AE18 ACC50000 */  sw        $a1, 0x0($a2)
/* C1CFC 8012AE1C 91220000 */  lbu       $v0, 0x0($t1)
/* C1D00 8012AE20 00641821 */  addu      $v1, $v1, $a0
/* C1D04 8012AE24 ACE30004 */  sw        $v1, 0x4($a3)
/* C1D08 8012AE28 24A30008 */  addiu     $v1, $a1, 0x8
/* C1D0C 8012AE2C ACC30000 */  sw        $v1, 0x0($a2)
/* C1D10 8012AE30 3C03FD48 */  lui       $v1, (0xFD480000 >> 16)
/* C1D14 8012AE34 00021042 */  srl       $v0, $v0, 1
/* C1D18 8012AE38 2442FFFF */  addiu     $v0, $v0, -0x1
/* C1D1C 8012AE3C 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1D20 8012AE40 00431025 */  or        $v0, $v0, $v1
/* C1D24 8012AE44 ACE20000 */  sw        $v0, 0x0($a3)
/* C1D28 8012AE48 3C070700 */  lui       $a3, (0x7000000 >> 16)
/* C1D2C 8012AE4C 91220000 */  lbu       $v0, 0x0($t1)
/* C1D30 8012AE50 0804ABCF */  j         .LIQUE_8012AF3C
/* C1D34 8012AE54 24A30010 */   addiu    $v1, $a1, 0x10
.LIQUE_8012AE58:
/* C1D38 8012AE58 2A4200A6 */  slti      $v0, $s2, 0xA6
/* C1D3C 8012AE5C 5440001B */  bnel      $v0, $zero, .LIQUE_8012AECC
/* C1D40 8012AE60 3C03FD48 */   lui      $v1, (0xFD480000 >> 16)
/* C1D44 8012AE64 3C06800A */  lui       $a2, %hi(gMainGfxPos)
/* C1D48 8012AE68 24C69244 */  addiu     $a2, $a2, %lo(gMainGfxPos)
/* C1D4C 8012AE6C 8CC50000 */  lw        $a1, 0x0($a2)
/* C1D50 8012AE70 3C048015 */  lui       $a0, %hi(D_801544A0)
/* C1D54 8012AE74 248444A0 */  addiu     $a0, $a0, %lo(D_801544A0)
/* C1D58 8012AE78 00A0382D */  daddu     $a3, $a1, $zero
/* C1D5C 8012AE7C 24A50008 */  addiu     $a1, $a1, 0x8
/* C1D60 8012AE80 ACC50000 */  sw        $a1, 0x0($a2)
/* C1D64 8012AE84 3C038015 */  lui       $v1, %hi(D_8014AD24)
/* C1D68 8012AE88 8C63AD24 */  lw        $v1, %lo(D_8014AD24)($v1)
/* C1D6C 8012AE8C 91220000 */  lbu       $v0, 0x0($t1)
/* C1D70 8012AE90 000319C0 */  sll       $v1, $v1, 7
/* C1D74 8012AE94 00641821 */  addu      $v1, $v1, $a0
/* C1D78 8012AE98 ACE30004 */  sw        $v1, 0x4($a3)
/* C1D7C 8012AE9C 24A30008 */  addiu     $v1, $a1, 0x8
/* C1D80 8012AEA0 00021042 */  srl       $v0, $v0, 1
/* C1D84 8012AEA4 2442FFFF */  addiu     $v0, $v0, -0x1
/* C1D88 8012AEA8 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1D8C 8012AEAC ACC30000 */  sw        $v1, 0x0($a2)
/* C1D90 8012AEB0 3C03FD48 */  lui       $v1, (0xFD480000 >> 16)
/* C1D94 8012AEB4 00431025 */  or        $v0, $v0, $v1
/* C1D98 8012AEB8 ACE20000 */  sw        $v0, 0x0($a3)
/* C1D9C 8012AEBC 3C070700 */  lui       $a3, (0x7000000 >> 16)
/* C1DA0 8012AEC0 91220000 */  lbu       $v0, 0x0($t1)
/* C1DA4 8012AEC4 0804ABCF */  j         .LIQUE_8012AF3C
/* C1DA8 8012AEC8 24A30010 */   addiu    $v1, $a1, 0x10
.LIQUE_8012AECC:
/* C1DAC 8012AECC 3C06800A */  lui       $a2, %hi(gMainGfxPos)
/* C1DB0 8012AED0 24C69244 */  addiu     $a2, $a2, %lo(gMainGfxPos)
/* C1DB4 8012AED4 8CC50000 */  lw        $a1, 0x0($a2)
/* C1DB8 8012AED8 00A0382D */  daddu     $a3, $a1, $zero
/* C1DBC 8012AEDC 24A50008 */  addiu     $a1, $a1, 0x8
/* C1DC0 8012AEE0 ACC50000 */  sw        $a1, 0x0($a2)
/* C1DC4 8012AEE4 91220000 */  lbu       $v0, 0x0($t1)
/* C1DC8 8012AEE8 00021042 */  srl       $v0, $v0, 1
/* C1DCC 8012AEEC 2442FFFF */  addiu     $v0, $v0, -0x1
/* C1DD0 8012AEF0 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1DD4 8012AEF4 00431025 */  or        $v0, $v0, $v1
/* C1DD8 8012AEF8 ACE20000 */  sw        $v0, 0x0($a3)
/* C1DDC 8012AEFC 000A1040 */  sll       $v0, $t2, 1
/* C1DE0 8012AF00 004A1021 */  addu      $v0, $v0, $t2
/* C1DE4 8012AF04 00021080 */  sll       $v0, $v0, 2
/* C1DE8 8012AF08 8D240008 */  lw        $a0, 0x8($t1)
/* C1DEC 8012AF0C 95230004 */  lhu       $v1, 0x4($t1)
/* C1DF0 8012AF10 00441021 */  addu      $v0, $v0, $a0
/* C1DF4 8012AF14 00720018 */  mult      $v1, $s2
/* C1DF8 8012AF18 8C420000 */  lw        $v0, 0x0($v0)
/* C1DFC 8012AF1C 24A30008 */  addiu     $v1, $a1, 0x8
/* C1E00 8012AF20 ACC30000 */  sw        $v1, 0x0($a2)
/* C1E04 8012AF24 24A30010 */  addiu     $v1, $a1, 0x10
/* C1E08 8012AF28 0000C812 */  mflo      $t9
/* C1E0C 8012AF2C 00591021 */  addu      $v0, $v0, $t9
/* C1E10 8012AF30 ACE20004 */  sw        $v0, 0x4($a3)
/* C1E14 8012AF34 91220000 */  lbu       $v0, 0x0($t1)
/* C1E18 8012AF38 3C070700 */  lui       $a3, (0x7000000 >> 16)
.LIQUE_8012AF3C:
/* C1E1C 8012AF3C ACA70004 */  sw        $a3, 0x4($a1)
/* C1E20 8012AF40 ACC30000 */  sw        $v1, 0x0($a2)
/* C1E24 8012AF44 3C03E600 */  lui       $v1, (0xE6000000 >> 16)
/* C1E28 8012AF48 ACA30008 */  sw        $v1, 0x8($a1)
/* C1E2C 8012AF4C 24A30018 */  addiu     $v1, $a1, 0x18
/* C1E30 8012AF50 ACA0000C */  sw        $zero, 0xC($a1)
/* C1E34 8012AF54 ACC30000 */  sw        $v1, 0x0($a2)
/* C1E38 8012AF58 3C03F400 */  lui       $v1, (0xF4000000 >> 16)
/* C1E3C 8012AF5C ACA30010 */  sw        $v1, 0x10($a1)
/* C1E40 8012AF60 3C03F548 */  lui       $v1, (0xF5480000 >> 16)
/* C1E44 8012AF64 00021042 */  srl       $v0, $v0, 1
/* C1E48 8012AF68 24420007 */  addiu     $v0, $v0, 0x7
/* C1E4C 8012AF6C 000210C2 */  srl       $v0, $v0, 3
/* C1E50 8012AF70 00021240 */  sll       $v0, $v0, 9
/* C1E54 8012AF74 00431025 */  or        $v0, $v0, $v1
/* C1E58 8012AF78 ACA20000 */  sw        $v0, 0x0($a1)
/* C1E5C 8012AF7C 91220000 */  lbu       $v0, 0x0($t1)
/* C1E60 8012AF80 91240001 */  lbu       $a0, 0x1($t1)
/* C1E64 8012AF84 24A30020 */  addiu     $v1, $a1, 0x20
/* C1E68 8012AF88 ACC30000 */  sw        $v1, 0x0($a2)
/* C1E6C 8012AF8C 3C03E700 */  lui       $v1, (0xE7000000 >> 16)
/* C1E70 8012AF90 ACA30018 */  sw        $v1, 0x18($a1)
/* C1E74 8012AF94 24A30028 */  addiu     $v1, $a1, 0x28
/* C1E78 8012AF98 ACA0001C */  sw        $zero, 0x1C($a1)
/* C1E7C 8012AF9C ACC30000 */  sw        $v1, 0x0($a2)
/* C1E80 8012AFA0 2442FFFF */  addiu     $v0, $v0, -0x1
/* C1E84 8012AFA4 00021040 */  sll       $v0, $v0, 1
/* C1E88 8012AFA8 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1E8C 8012AFAC 00021300 */  sll       $v0, $v0, 12
/* C1E90 8012AFB0 2484FFFF */  addiu     $a0, $a0, -0x1
/* C1E94 8012AFB4 00042080 */  sll       $a0, $a0, 2
/* C1E98 8012AFB8 30840FFF */  andi      $a0, $a0, 0xFFF
/* C1E9C 8012AFBC 00872025 */  or        $a0, $a0, $a3
/* C1EA0 8012AFC0 00441025 */  or        $v0, $v0, $a0
/* C1EA4 8012AFC4 ACA20014 */  sw        $v0, 0x14($a1)
/* C1EA8 8012AFC8 91220000 */  lbu       $v0, 0x0($t1)
/* C1EAC 8012AFCC 24A30030 */  addiu     $v1, $a1, 0x30
/* C1EB0 8012AFD0 ACA00024 */  sw        $zero, 0x24($a1)
/* C1EB4 8012AFD4 ACC30000 */  sw        $v1, 0x0($a2)
/* C1EB8 8012AFD8 3C03F200 */  lui       $v1, (0xF2000000 >> 16)
/* C1EBC 8012AFDC ACA30028 */  sw        $v1, 0x28($a1)
/* C1EC0 8012AFE0 3C03F540 */  lui       $v1, (0xF5400000 >> 16)
/* C1EC4 8012AFE4 00021042 */  srl       $v0, $v0, 1
/* C1EC8 8012AFE8 24420007 */  addiu     $v0, $v0, 0x7
/* C1ECC 8012AFEC 000210C2 */  srl       $v0, $v0, 3
/* C1ED0 8012AFF0 00021240 */  sll       $v0, $v0, 9
/* C1ED4 8012AFF4 00431025 */  or        $v0, $v0, $v1
/* C1ED8 8012AFF8 ACA20020 */  sw        $v0, 0x20($a1)
/* C1EDC 8012AFFC 91230000 */  lbu       $v1, 0x0($t1)
/* C1EE0 8012B000 91220001 */  lbu       $v0, 0x1($t1)
/* C1EE4 8012B004 2463FFFF */  addiu     $v1, $v1, -0x1
/* C1EE8 8012B008 00031880 */  sll       $v1, $v1, 2
/* C1EEC 8012B00C 30630FFF */  andi      $v1, $v1, 0xFFF
/* C1EF0 8012B010 00031B00 */  sll       $v1, $v1, 12
/* C1EF4 8012B014 2442FFFF */  addiu     $v0, $v0, -0x1
/* C1EF8 8012B018 00021080 */  sll       $v0, $v0, 2
/* C1EFC 8012B01C 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1F00 8012B020 00621825 */  or        $v1, $v1, $v0
/* C1F04 8012B024 ACA3002C */  sw        $v1, 0x2C($a1)
.LIQUE_8012B028:
/* C1F08 8012B028 3C06800A */  lui       $a2, %hi(gMainGfxPos)
/* C1F0C 8012B02C 24C69244 */  addiu     $a2, $a2, %lo(gMainGfxPos)
/* C1F10 8012B030 000C1080 */  sll       $v0, $t4, 2
/* C1F14 8012B034 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1F18 8012B038 00021300 */  sll       $v0, $v0, 12
/* C1F1C 8012B03C 000B1880 */  sll       $v1, $t3, 2
/* C1F20 8012B040 30630FFF */  andi      $v1, $v1, 0xFFF
/* C1F24 8012B044 3C04E400 */  lui       $a0, (0xE4000000 >> 16)
/* C1F28 8012B048 00641825 */  or        $v1, $v1, $a0
/* C1F2C 8012B04C 00431025 */  or        $v0, $v0, $v1
/* C1F30 8012B050 000D1880 */  sll       $v1, $t5, 2
/* C1F34 8012B054 8CC50000 */  lw        $a1, 0x0($a2)
/* C1F38 8012B058 30630FFF */  andi      $v1, $v1, 0xFFF
/* C1F3C 8012B05C 00A0382D */  daddu     $a3, $a1, $zero
/* C1F40 8012B060 24A50008 */  addiu     $a1, $a1, 0x8
/* C1F44 8012B064 ACC50000 */  sw        $a1, 0x0($a2)
/* C1F48 8012B068 ACE20000 */  sw        $v0, 0x0($a3)
/* C1F4C 8012B06C 000F1080 */  sll       $v0, $t7, 2
/* C1F50 8012B070 30420FFF */  andi      $v0, $v0, 0xFFF
/* C1F54 8012B074 00021300 */  sll       $v0, $v0, 12
/* C1F58 8012B078 00431025 */  or        $v0, $v0, $v1
/* C1F5C 8012B07C ACE20004 */  sw        $v0, 0x4($a3)
/* C1F60 8012B080 24A20008 */  addiu     $v0, $a1, 0x8
/* C1F64 8012B084 ACC20000 */  sw        $v0, 0x0($a2)
/* C1F68 8012B088 3C02E100 */  lui       $v0, (0xE1000000 >> 16)
/* C1F6C 8012B08C ACA20000 */  sw        $v0, 0x0($a1)
/* C1F70 8012B090 00181400 */  sll       $v0, $t8, 16
/* C1F74 8012B094 31C3FFFF */  andi      $v1, $t6, 0xFFFF
/* C1F78 8012B098 00431025 */  or        $v0, $v0, $v1
/* C1F7C 8012B09C ACA20004 */  sw        $v0, 0x4($a1)
/* C1F80 8012B0A0 24A20010 */  addiu     $v0, $a1, 0x10
/* C1F84 8012B0A4 ACC20000 */  sw        $v0, 0x0($a2)
/* C1F88 8012B0A8 3C02F100 */  lui       $v0, (0xF1000000 >> 16)
/* C1F8C 8012B0AC ACA20008 */  sw        $v0, 0x8($a1)
/* C1F90 8012B0B0 00111400 */  sll       $v0, $s1, 16
/* C1F94 8012B0B4 3263FFFF */  andi      $v1, $s3, 0xFFFF
/* C1F98 8012B0B8 00431025 */  or        $v0, $v0, $v1
/* C1F9C 8012B0BC ACA2000C */  sw        $v0, 0xC($a1)
/* C1FA0 8012B0C0 2A4200A6 */  slti      $v0, $s2, 0xA6
/* C1FA4 8012B0C4 14400012 */  bnez      $v0, .LIQUE_8012B110
/* C1FA8 8012B0C8 00000000 */   nop
/* C1FAC 8012B0CC 3C058015 */  lui       $a1, %hi(D_8014AD24)
/* C1FB0 8012B0D0 24A5AD24 */  addiu     $a1, $a1, %lo(D_8014AD24)
/* C1FB4 8012B0D4 8CA30000 */  lw        $v1, 0x0($a1)
/* C1FB8 8012B0D8 3C028888 */  lui       $v0, (0x88888889 >> 16)
/* C1FBC 8012B0DC 34428889 */  ori       $v0, $v0, (0x88888889 & 0xFFFF)
/* C1FC0 8012B0E0 24630001 */  addiu     $v1, $v1, 0x1
/* C1FC4 8012B0E4 00620019 */  multu     $v1, $v0
/* C1FC8 8012B0E8 0000C810 */  mfhi      $t9
/* C1FCC 8012B0EC 00192182 */  srl       $a0, $t9, 6
/* C1FD0 8012B0F0 00041100 */  sll       $v0, $a0, 4
/* C1FD4 8012B0F4 00441023 */  subu      $v0, $v0, $a0
/* C1FD8 8012B0F8 000210C0 */  sll       $v0, $v0, 3
/* C1FDC 8012B0FC 00621823 */  subu      $v1, $v1, $v0
/* C1FE0 8012B100 14600003 */  bnez      $v1, .LIQUE_8012B110
/* C1FE4 8012B104 ACA30000 */   sw       $v1, 0x0($a1)
/* C1FE8 8012B108 24020002 */  addiu     $v0, $zero, 0x2
/* C1FEC 8012B10C ACA20000 */  sw        $v0, 0x0($a1)
.LIQUE_8012B110:
/* C1FF0 8012B110 8FBF0024 */  lw        $ra, 0x24($sp)
/* C1FF4 8012B114 8FB40020 */  lw        $s4, 0x20($sp)
/* C1FF8 8012B118 8FB3001C */  lw        $s3, 0x1C($sp)
/* C1FFC 8012B11C 8FB20018 */  lw        $s2, 0x18($sp)
/* C2000 8012B120 8FB10014 */  lw        $s1, 0x14($sp)
/* C2004 8012B124 8FB00010 */  lw        $s0, 0x10($sp)
/* C2008 8012B128 03E00008 */  jr        $ra
/* C200C 8012B12C 27BD0028 */   addiu    $sp, $sp, 0x28
