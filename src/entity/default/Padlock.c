#include "common.h"
#include "entity.h"
#include "effects.h"
#include "ld_addrs.h"

extern Gfx Entity_Padlock_Render[];
extern Gfx Entity_Padlock_RenderShackle[];
extern Mtx Entity_Padlock_mtxShackle;
extern Gfx Entity_PadlockRedFrame_Render[];
extern Gfx Entity_PadlockRedFrame_RenderShackle[];
extern Mtx Entity_PadlockRedFrame_mtxShackle;
extern Gfx Entity_PadlockRedFace_Render[];
extern Gfx Entity_PadlockRedFace_RenderShackle[];
extern Mtx Entity_PadlockRedFace_mtxShackle;
extern Gfx Entity_PadlockBlueFace_Render[];
extern Gfx Entity_PadlockBlueFace_RenderShackle[];
extern Mtx Entity_PadlockBlueFace_mtxShackle;

void entity_Padlock_setupGfx(s32 entityIndex) {
    Entity* entity = get_entity_by_index(entityIndex);
    PadlockData* data = entity->dataBuf.padlock;
    Matrix4f sp18;
    Matrix4f sp58;
    Matrix4f sp98;
    Matrix4f spD8;

    guMtxIdentF(sp58);
    guMtxL2F(sp98, data->shackleMtx);
    guMtxCatF(sp58, sp98, sp98);
    sp98[3][0] += data->shacklePos;
    guRotateF(spD8, entity->rotation.x, -1.0f, 0.0f, 0.0f);
    guMtxCatF(spD8, sp98, sp98);
    guRotateF(spD8, entity->rotation.z, 0.0f, 0.0f, 1.0f);
    guRotateF(sp18, entity->rotation.x, 1.0f, 0.0f, 0.0f);
    guMtxCatF(spD8, sp18, sp18);
    guRotateF(spD8, entity->rotation.y, 0.0f, 1.0f, 0.0f);
    guMtxCatF(sp18, spD8, spD8);
    guMtxCatF(sp98, spD8, sp98);
    guScaleF(sp18, entity->scale.x, entity->scale.y, entity->scale.z);
    guMtxCatF(sp98, sp18, sp18);
    guTranslateF(sp58, entity->position.x, entity->position.y, entity->position.z);
    guMtxCatF(sp18, sp58, sp58);
    guMtxF2L(sp58, &gDisplayContext->matrixStack[gMatrixListPos]);

    gSPMatrix(gMainGfxPos++, &gDisplayContext->matrixStack[gMatrixListPos++], G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(gMainGfxPos++, data->shackleGfx);
    gSPPopMatrix(gMainGfxPos++, G_MTX_MODELVIEW);
}

void entity_Padlock_push_player(Entity* entity) {
    PlayerStatus* playerStatus = &gPlayerStatus;
    PadlockData* data = entity->dataBuf.padlock;
    f32 deltaX, deltaZ;

    if (playerStatus->colliderHeight < fabs(playerStatus->position.y - entity->position.y)) {
        entity->flags |= ENTITY_FLAG_DISABLE_COLLISION;
    } else {
        entity->flags &= ~ENTITY_FLAG_DISABLE_COLLISION;
    }

    if (entity->collisionFlags & ENTITY_COLLISION_PLAYER_TOUCH_FLOOR) {
        if (data->pushSpeed == 0.0f) {
            suggest_player_anim_allow_backward(ANIM_Mario1_Run);
        }

        data->pushSpeed += 0.5;

        if (data->pushSpeed >= 2.5) {
            data->pushSpeed = 2.5f;
        }

        deltaX = data->pushSpeed * sin_rad(DEG_TO_RAD(180.0f - entity->rotation.y));
        deltaZ = data->pushSpeed * cos_rad(DEG_TO_RAD(180.0f - entity->rotation.y));

        playerStatus->position.x += deltaX;
        playerStatus->position.z -= deltaZ;
    } else {
        data->pushSpeed = 0.0f;
    }
}

void entity_Padlock_idle(Entity* entity) {
    PadlockData* data = entity->dataBuf.padlock;

    switch (data->state) {
        case 0:
            entity_Padlock_push_player(entity);
            if (entity->flags & ENTITY_FLAG_100000) {
                data->state++;
                sfx_play_sound(SOUND_269);
            }
            break;
        case 1:
            data->shacklePos += 5.0f;
            if (data->shacklePos >= 20.0f) {
                data->shacklePos = 20.0f;
                data->state++;
                entity->rotation.z += 12.0;
                data->fallSpeed = -2.0f;
                data->rotationSpeed = 0.2f;
            }
            break;
        case 2:
            data->rotationSpeed += 0.2;
            entity->rotation.x += data->rotationSpeed;

            data->fallSpeed -= 1.0;
            entity->position.y += data->fallSpeed;

            if (entity->position.y <= entity->shadowPosY) {
                entity->position.y = entity->shadowPosY;
                data->fallSpeed = 5.0f;
                data->rotationSpeed = 3.0f;
                data->state++;
                fx_sparkles(FX_SPARKLES_0, entity->position.x, entity->position.y + 25.0f, entity->position.z, 10.0f);
                entity->flags |= ENTITY_FLAG_DISABLE_COLLISION;
            }
            break;
        case 3:
            data->rotationSpeed += 0.2;
            entity->rotation.x += data->rotationSpeed;

            data->fallSpeed -= 2.0;
            entity->position.y += data->fallSpeed;

            if (entity->position.y <= entity->shadowPosY) {
                entity->position.y = entity->shadowPosY;
                data->timer = 2;
                data->fallSpeed = 10.0f;
                data->rotationSpeed = 0.2f;
                data->state++;
                sfx_play_sound(SOUND_26A);
            }
            break;
        case 4:
            if (--data->timer <= 0) {
                data->state++;
            }
            break;
        case 5:
            data->rotationSpeed *= 2.0f;
            if (data->rotationSpeed > 30.0f) {
                data->rotationSpeed = 30.0f;
            }
            entity->rotation.x += data->rotationSpeed;
            if (entity->rotation.x >= 90.0) {
                entity->rotation.x = 90.0f;
                data->rotationSpeed = -20.0f;
                data->state++;
                sfx_play_sound(SOUND_26A);
            }
            break;
        case 6:
            data->rotationSpeed += 10.0f;
            if (data->rotationSpeed > 30.0f) {
                data->rotationSpeed = 30.0f;
            }
            entity->rotation.x += data->rotationSpeed;
            if (entity->rotation.x >= 90.0) {
                entity->rotation.x = 90.0f;
                data->timer = 5;
                data->state++;
                sfx_play_sound(SOUND_26A);
            }
            break;
        case 7:
            if (--data->timer <= 0) {
                data->state++;
                entity_start_script(entity);
                data->timer = 5;
            }
            break;
        case 8:
            if (--data->timer <= 0) {
                data->state++;
                entity->flags |= ENTITY_FLAG_DISABLE_COLLISION | ENTITY_FLAG_HIDDEN;
                exec_entity_commandlist(entity);
            }
            break;
    }

    if (data->state == 2 || data->state == 3 || data->state == 4 || data->state == 5 || data->state == 6 || data->state == 7 || data->state == 8) {
        data->blinkCounter++;
        if (data->blinkCounter & 1) {
            entity->flags |= ENTITY_FLAG_HIDDEN;
        } else {
            entity->flags &= ~ENTITY_FLAG_HIDDEN;
        }
    }
}

void entity_Padlock_init(Entity* entity) {
    PadlockData* data;

    entity->renderSetupFunc = entity_Padlock_setupGfx;
    data = entity->dataBuf.padlock;
    data->shackleMtx = ENTITY_ADDR(entity, Mtx*, &Entity_Padlock_mtxShackle);
    data->shackleGfx = Entity_Padlock_RenderShackle;
}

void entity_PadlockRedFrame_init(Entity* entity) {
    PadlockData* data;

    entity->renderSetupFunc = entity_Padlock_setupGfx;
    data = entity->dataBuf.padlock;
    data->shackleMtx = ENTITY_ADDR(entity, Mtx*, &Entity_PadlockRedFrame_mtxShackle);
    data->shackleGfx = Entity_PadlockRedFrame_RenderShackle;
}

void entity_PadlockRedFace_init(Entity* entity) {
    PadlockData* data;

    entity->renderSetupFunc = entity_Padlock_setupGfx;
    data = entity->dataBuf.padlock;
    data->shackleMtx = ENTITY_ADDR(entity, Mtx*, &Entity_PadlockRedFace_mtxShackle);
    data->shackleGfx = Entity_PadlockRedFace_RenderShackle;
}

void entity_PadlockBlueFace_init(Entity* entity) {
    PadlockData* data;

    entity->renderSetupFunc = entity_Padlock_setupGfx;
    data = entity->dataBuf.padlock;
    data->shackleMtx = ENTITY_ADDR(entity, Mtx*, &Entity_PadlockBlueFace_mtxShackle);
    data->shackleGfx = Entity_PadlockBlueFace_RenderShackle;
}

EntityScript Entity_Padlock_Script = {
    es_SetCallback(entity_Padlock_idle, 0)
    es_SetFlags(ENTITY_FLAG_PENDING_INSTANCE_DELETE)
    es_End
};

EntityModelScript Entity_Padlock_RenderScript = STANDARD_ENTITY_MODEL_SCRIPT(Entity_Padlock_Render, RENDER_MODE_SURFACE_OPA);
EntityModelScript Entity_PadlockRedFrame_RenderScript = STANDARD_ENTITY_MODEL_SCRIPT(Entity_PadlockRedFrame_Render, RENDER_MODE_SURFACE_OPA);
EntityModelScript Entity_PadlockRedFace_RenderScript = STANDARD_ENTITY_MODEL_SCRIPT(Entity_PadlockRedFace_Render, RENDER_MODE_SURFACE_OPA);
EntityModelScript Entity_PadlockBlueFace_RenderScript = STANDARD_ENTITY_MODEL_SCRIPT(Entity_PadlockBlueFace_Render, RENDER_MODE_SURFACE_OPA);

EntityBlueprint Entity_Padlock = {
    .flags = ENTITY_FLAG_SHOWS_INSPECT_PROMPT | ENTITY_FLAG_400 | ENTITY_FLAG_HAS_SHADOW,
    .typeDataSize = sizeof(PadlockData),
    .renderCommandList = Entity_Padlock_RenderScript,
    .modelAnimationNodes = 0,
    .fpInit = entity_Padlock_init,
    .updateEntityScript = Entity_Padlock_Script,
    .fpHandleCollision = NULL,
    { .dma = ENTITY_ROM(Padlock) },
    .entityType = ENTITY_TYPE_PADLOCK,
    .aabbSize = { 30, 175, 10 }
};

EntityBlueprint Entity_PadlockRedFrame = {
    .flags = ENTITY_FLAG_SHOWS_INSPECT_PROMPT | ENTITY_FLAG_400 | ENTITY_FLAG_HAS_SHADOW,
    .typeDataSize = sizeof(PadlockData),
    .renderCommandList = Entity_PadlockRedFrame_RenderScript,
    .modelAnimationNodes = 0,
    .fpInit = entity_PadlockRedFrame_init,
    .updateEntityScript = Entity_Padlock_Script,
    .fpHandleCollision = NULL,
    { .dma = ENTITY_ROM(PadlockRedFrame) },
    .entityType = ENTITY_TYPE_PADLOCK_RED_FRAME,
    .aabbSize = { 30, 175, 10 }
};

EntityBlueprint Entity_PadlockRedFace = {
    .flags = ENTITY_FLAG_SHOWS_INSPECT_PROMPT | ENTITY_FLAG_400 | ENTITY_FLAG_HAS_SHADOW,
    .typeDataSize = sizeof(PadlockData),
    .renderCommandList = Entity_PadlockRedFace_RenderScript,
    .modelAnimationNodes = 0,
    .fpInit = entity_PadlockRedFace_init,
    .updateEntityScript = Entity_Padlock_Script,
    .fpHandleCollision = NULL,
    { .dma = ENTITY_ROM(PadlockRedFace) },
    .entityType = ENTITY_TYPE_PADLOCK_RED_FACE,
    .aabbSize = { 30, 175, 10 }
 };

EntityBlueprint Entity_PadlockBlueFace = {
    .flags = ENTITY_FLAG_SHOWS_INSPECT_PROMPT | ENTITY_FLAG_400 | ENTITY_FLAG_HAS_SHADOW,
    .typeDataSize = sizeof(PadlockData),
    .renderCommandList = Entity_PadlockBlueFace_RenderScript,
    .modelAnimationNodes = 0,
    .fpInit = entity_PadlockBlueFace_init,
    .updateEntityScript = Entity_Padlock_Script,
    .fpHandleCollision = NULL,
    { .dma = ENTITY_ROM(PadlockBlueFace) },
    .entityType = ENTITY_TYPE_PADLOCK_BLUE_FACE,
    .aabbSize = { 30, 175, 10 }
};
