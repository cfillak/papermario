#include "common.h"
#include "battle/battle.h"
#include "mapfs/kpa_bt01_shape.h"

#define NAMESPACE b_area_kpa_kpa_01

EvtScript N(8022EFE0) = {
    EVT_SET(LVarA, LVar0)
    EVT_CALL(SetTexPanner, LVarA, TEX_PANNER_1)
    EVT_SET(LVar0, 0)
    EVT_SET(LVar1, 0)
    EVT_LOOP(0)
        EVT_CALL(SetTexPanOffset, TEX_PANNER_1, TEX_PANNER_MAIN, LVar0, LVar1)
        EVT_ADD(LVar0, 32768)
        EVT_ADD(LVar1, 0)
        EVT_WAIT(5)
    EVT_END_LOOP
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_PreBattle) = {
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_CALL(SetCamBGColor, CAM_BATTLE, 0, 0, 0)
    EVT_CALL(SetGroupVisibility, 36, MODEL_GROUP_HIDDEN)
    EVT_THREAD
        EVT_SET(LVar0, 37)
        EVT_EXEC(N(8022EFE0))
        EVT_WAIT(5)
        EVT_SET(LVar0, 39)
        EVT_EXEC(N(8022EFE0))
    EVT_END_THREAD
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_PostBattle) = {
    EVT_RETURN
    EVT_END
};

s32 N(ForegroundModels)[] = {
    MODEL_o383,
    MODEL_o382,
    MODEL_o381,
    STAGE_MODEL_LIST_END
};

Stage NAMESPACE = {
    .texture = "kpa_tex",
    .shape = "kpa_bt01_shape",
    .hit = "kpa_bt01_hit",
    .preBattle = &N(EVS_PreBattle),
    .postBattle = &N(EVS_PostBattle),
    .foregroundModelList = N(ForegroundModels),
};
