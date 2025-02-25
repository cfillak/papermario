#include "isk_06.h"

extern EvtScript N(EVS_OnTouch_DrainSwitch);

EvtScript N(EVS_SetupSwitch) = {
    EVT_CALL(ParentColliderToModel, COLLIDER_o2090, MODEL_g336)
    EVT_CALL(ParentColliderToModel, COLLIDER_o2091, MODEL_g336)
    EVT_IF_EQ(AF_ISK06_SandSwitchActivated, FALSE)
        EVT_BIND_TRIGGER(EVT_PTR(N(EVS_OnTouch_DrainSwitch)), TRIGGER_FLOOR_TOUCH, COLLIDER_o2091, 1, 0)
    EVT_ELSE
        EVT_CALL(TranslateModel, MODEL_g336, 0, -14, 0)
        EVT_CALL(UpdateColliderTransform, COLLIDER_o2090)
        EVT_CALL(UpdateColliderTransform, COLLIDER_o2091)
    EVT_END_IF
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_OnTouch_DrainSwitch) = {
    EVT_CALL(IsPlayerOnValidFloor, LVar0)
    EVT_IF_EQ(LVar0, FALSE)
        EVT_RETURN
    EVT_END_IF
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_LABEL(5)
        EVT_WAIT(1)
        EVT_CALL(PartnerCanUseAbility, LVar0)
        EVT_IF_EQ(LVar0, TRUE)
            EVT_GOTO(5)
        EVT_END_IF
    EVT_CALL(GetNpcPos, NPC_PARTNER, LVar0, LVar1, LVar2)
    EVT_IF_LT(LVar1, -80)
        EVT_THREAD
            EVT_CALL(DisablePartnerAI, 0)
            EVT_CALL(SetNpcJumpscale, NPC_PARTNER, EVT_FLOAT(2.5))
            EVT_CALL(NpcJump0, NPC_PARTNER, 343, -80, -421, 10)
            EVT_WAIT(10)
            EVT_CALL(EnablePartnerAI)
        EVT_END_THREAD
    EVT_END_IF
    EVT_CALL(PlaySoundAtCollider, COLLIDER_o2091, SOUND_208A, SOUND_SPACE_MODE_0)
    EVT_CALL(MakeLerp, 0, -14, 30, EASING_LINEAR)
    EVT_LABEL(10)
    EVT_CALL(UpdateLerp)
    EVT_CALL(TranslateModel, MODEL_g336, 0, LVar0, 0)
    EVT_CALL(UpdateColliderTransform, COLLIDER_o2090)
    EVT_CALL(UpdateColliderTransform, COLLIDER_o2091)
    EVT_WAIT(1)
    EVT_IF_EQ(LVar1, 1)
        EVT_GOTO(10)
    EVT_END_IF
    EVT_CALL(PlaySoundAtCollider, COLLIDER_o2091, SOUND_208B, SOUND_SPACE_MODE_0)
    EVT_SET(AF_ISK06_SandSwitchActivated, TRUE)
    EVT_UNBIND
    EVT_RETURN
    EVT_END
};
