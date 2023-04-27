#include "common.h"

extern unsigned char D_0A001090_E6C240[];

#include "entity/model/BellbellPlant_1.vtx.inc.c"
#include "entity/model/BellbellPlant_2.vtx.inc.c"
#include "entity/model/BellbellPlant_3.vtx.inc.c"
#include "entity/model/BellbellPlant_4.vtx.inc.c"
#include "entity/model/BellbellPlant_5.vtx.inc.c"

Gfx Entity_BellbellPlant_RenderNode5[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPLoadTextureBlock(D_0A001090_E6C240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(D_0A000A10_E6BBC0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(PM_CC_04, PM_CC_04),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx Entity_BellbellPlant_RenderNode4[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPLoadTextureBlock(D_0A001090_E6C240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(D_0A000720_E6B8D0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(3, 6, 7, 0, 3, 7, 0, 0),
    gsSP2Triangles(7, 6, 8, 0, 7, 8, 9, 0),
    gsSP2Triangles(9, 8, 10, 0, 9, 10, 11, 0),
    gsSP2Triangles(11, 10, 12, 0, 5, 4, 13, 0),
    gsSP2Triangles(5, 13, 14, 0, 14, 13, 15, 0),
    gsSP2Triangles(14, 15, 16, 0, 5, 17, 6, 0),
    gsSP2Triangles(5, 6, 3, 0, 6, 17, 18, 0),
    gsSP2Triangles(6, 18, 8, 0, 8, 18, 19, 0),
    gsSP2Triangles(8, 19, 10, 0, 10, 19, 12, 0),
    gsSP2Triangles(16, 15, 20, 0, 16, 20, 21, 0),
    gsSP2Triangles(21, 20, 22, 0, 21, 22, 23, 0),
    gsSP2Triangles(14, 24, 17, 0, 14, 17, 5, 0),
    gsSP2Triangles(17, 24, 25, 0, 17, 25, 18, 0),
    gsSP2Triangles(18, 25, 26, 0, 18, 26, 19, 0),
    gsSP2Triangles(19, 26, 12, 0, 27, 28, 12, 0),
    gsSP2Triangles(29, 30, 28, 0, 29, 28, 27, 0),
    gsSP2Triangles(16, 31, 24, 0, 16, 24, 14, 0),
    gsSPVertex(&D_0A000720_E6B8D0[32], 15, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(3, 2, 4, 0, 3, 4, 5, 0),
    gsSP2Triangles(5, 4, 6, 0, 7, 8, 9, 0),
    gsSP2Triangles(7, 9, 10, 0, 11, 8, 7, 0),
    gsSP2Triangles(11, 7, 12, 0, 12, 7, 1, 0),
    gsSP2Triangles(12, 1, 13, 0, 1, 7, 10, 0),
    gsSP2Triangles(1, 10, 2, 0, 2, 10, 14, 0),
    gsSP2Triangles(2, 14, 4, 0, 4, 14, 6, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(PM_CC_04, PM_CC_04),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx Entity_BellbellPlant_RenderNode3[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPLoadTextureBlock(D_0A001090_E6C240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(D_0A000640_E6B7F0, 14, 0),
    gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
    gsSP2Triangles(4, 5, 6, 0, 5, 4, 7, 0),
    gsSP2Triangles(8, 9, 10, 0, 11, 12, 13, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(PM_CC_04, PM_CC_04),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx Entity_BellbellPlant_RenderNode2[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPLoadTextureBlock(D_0A001090_E6C240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(D_0A000390_E6B540, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 4, 1, 0),
    gsSP2Triangles(3, 1, 0, 0, 5, 6, 7, 0),
    gsSP2Triangles(5, 7, 8, 0, 7, 6, 9, 0),
    gsSP2Triangles(7, 9, 4, 0, 4, 9, 10, 0),
    gsSP2Triangles(4, 10, 1, 0, 1, 10, 2, 0),
    gsSP2Triangles(11, 7, 4, 0, 11, 4, 3, 0),
    gsSP2Triangles(8, 7, 11, 0, 8, 11, 12, 0),
    gsSP2Triangles(13, 14, 15, 0, 13, 15, 16, 0),
    gsSP2Triangles(15, 14, 17, 0, 15, 17, 18, 0),
    gsSP2Triangles(18, 17, 19, 0, 18, 19, 20, 0),
    gsSP2Triangles(20, 19, 2, 0, 21, 0, 2, 0),
    gsSP2Triangles(22, 3, 0, 0, 22, 0, 21, 0),
    gsSP2Triangles(23, 24, 14, 0, 23, 14, 13, 0),
    gsSP2Triangles(14, 24, 25, 0, 14, 25, 17, 0),
    gsSP2Triangles(17, 25, 26, 0, 17, 26, 19, 0),
    gsSP2Triangles(19, 26, 2, 0, 27, 11, 3, 0),
    gsSP2Triangles(27, 3, 22, 0, 12, 11, 27, 0),
    gsSP2Triangles(12, 27, 28, 0, 28, 27, 24, 0),
    gsSP2Triangles(28, 24, 23, 0, 24, 27, 22, 0),
    gsSP2Triangles(24, 22, 25, 0, 25, 22, 21, 0),
    gsSP2Triangles(25, 21, 26, 0, 26, 21, 2, 0),
    gsSP2Triangles(16, 29, 30, 0, 16, 30, 13, 0),
    gsSPVertex(&D_0A000390_E6B540[31], 12, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
    gsSP2Triangles(4, 5, 1, 0, 4, 1, 0, 0),
    gsSP2Triangles(6, 7, 5, 0, 6, 5, 4, 0),
    gsSP2Triangles(8, 9, 7, 0, 8, 7, 6, 0),
    gsSP2Triangles(10, 11, 9, 0, 10, 9, 8, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(PM_CC_04, PM_CC_04),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

Gfx Entity_BellbellPlant_RenderNode1[] = {
    gsSPTexture(0xFFFF, 0xFFFF, 0, G_TX_RENDERTILE, G_ON),
    gsDPPipeSync(),
    gsDPSetCombineMode(G_CC_MODULATEIA, G_CC_MODULATEIA),
    gsDPLoadTextureBlock(D_0A001090_E6C240, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, 4, 4, G_TX_NOLOD, G_TX_NOLOD),
    gsSPClearGeometryMode(G_LIGHTING),
    gsSPVertex(D_0A000000_E6B1B0, 32, 0),
    gsSP2Triangles(0, 1, 2, 0, 0, 3, 4, 0),
    gsSP2Triangles(0, 4, 1, 0, 5, 4, 6, 0),
    gsSP2Triangles(2, 1, 7, 0, 1, 4, 5, 0),
    gsSP2Triangles(1, 5, 7, 0, 6, 4, 3, 0),
    gsSP2Triangles(8, 9, 10, 0, 8, 10, 11, 0),
    gsSP2Triangles(12, 13, 9, 0, 12, 9, 8, 0),
    gsSP2Triangles(14, 15, 16, 0, 14, 16, 17, 0),
    gsSP2Triangles(17, 16, 18, 0, 17, 18, 19, 0),
    gsSP2Triangles(19, 18, 20, 0, 19, 20, 13, 0),
    gsSP2Triangles(13, 20, 21, 0, 13, 21, 9, 0),
    gsSP2Triangles(9, 21, 22, 0, 9, 22, 10, 0),
    gsSP2Triangles(23, 14, 17, 0, 23, 17, 24, 0),
    gsSP2Triangles(25, 19, 13, 0, 25, 13, 12, 0),
    gsSP2Triangles(15, 23, 24, 0, 15, 24, 16, 0),
    gsSP2Triangles(16, 24, 25, 0, 16, 25, 18, 0),
    gsSP2Triangles(18, 25, 12, 0, 18, 12, 20, 0),
    gsSP2Triangles(20, 12, 8, 0, 20, 8, 21, 0),
    gsSP2Triangles(21, 8, 11, 0, 21, 11, 22, 0),
    gsSP2Triangles(26, 17, 19, 0, 24, 19, 25, 0),
    gsSP2Triangles(27, 28, 29, 0, 27, 29, 30, 0),
    gsSP2Triangles(2, 31, 15, 0, 2, 15, 14, 0),
    gsSPVertex(&D_0A000000_E6B1B0[32], 25, 0),
    gsSP2Triangles(0, 1, 2, 0, 3, 2, 4, 0),
    gsSP2Triangles(4, 2, 5, 0, 4, 5, 6, 0),
    gsSP2Triangles(6, 5, 7, 0, 6, 7, 8, 0),
    gsSP2Triangles(8, 7, 9, 0, 8, 9, 10, 0),
    gsSP2Triangles(10, 9, 11, 0, 10, 11, 12, 0),
    gsSP2Triangles(13, 8, 10, 0, 13, 10, 14, 0),
    gsSP2Triangles(15, 16, 17, 0, 15, 17, 1, 0),
    gsSP2Triangles(1, 17, 18, 0, 1, 18, 2, 0),
    gsSP2Triangles(2, 18, 19, 0, 2, 19, 5, 0),
    gsSP2Triangles(5, 19, 13, 0, 5, 13, 7, 0),
    gsSP2Triangles(7, 13, 14, 0, 7, 14, 9, 0),
    gsSP2Triangles(9, 14, 20, 0, 9, 20, 11, 0),
    gsSP2Triangles(16, 21, 0, 0, 16, 0, 17, 0),
    gsSP2Triangles(22, 23, 4, 0, 17, 4, 18, 0),
    gsSP2Triangles(18, 4, 24, 0, 18, 6, 19, 0),
    gsSP2Triangles(19, 6, 8, 0, 19, 8, 13, 0),
    gsDPPipeSync(),
    gsDPSetCombineMode(PM_CC_04, PM_CC_04),
    gsSPTexture(0x0001, 0x0001, 0, G_TX_RENDERTILE, G_OFF),
    gsSPEndDisplayList(),
};

#include "entity/model/BellbellPlant.png.inc.c"
