#include "common.h"
#include "battle/battle.h"
#include "mapfs/isk_bt02_shape.h"

EvtScript N(EVS_PreBattle) = {
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_CALL(SetCamBGColor, CAM_BATTLE, 0, 0, 0)
    EVT_CALL(EnableModel, MODEL_o365, FALSE)
    EVT_CALL(EnableModel, MODEL_o366, FALSE)
    EVT_CALL(EnableModel, MODEL_o367, FALSE)
    EVT_CALL(EnableModel, MODEL_o389, FALSE)
    EVT_CALL(EnableModel, MODEL_o390, FALSE)
    EVT_CALL(EnableModel, MODEL_o391, FALSE)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_PostBattle) = {
    EVT_RETURN
    EVT_END
};

s32 N(ForegroundModels)[] = {
    MODEL_o398,
    MODEL_o397,
    MODEL_o399,
    STAGE_MODEL_LIST_END
};

Stage NAMESPACE = {
    .texture = "isk_tex",
    .shape = "isk_bt02_shape",
    .hit = "isk_bt02_hit",
    .preBattle = &N(EVS_PreBattle),
    .postBattle = &N(EVS_PostBattle),
    .foregroundModelList = N(ForegroundModels),
};
