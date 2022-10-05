#include "sbk_64.h"
#include "entity.h"

EvtScript N(EVS_MakeEntities) = {
    EVT_CALL(MakeEntity, EVT_PTR(Entity_YellowBlock), 0, 0, 0, 0, ITEM_COIN, MAKE_ENTITY_END)
    EVT_CALL(AssignBlockFlag, GF_SBK64_ItemBlock_Coin)
    EVT_RETURN
    EVT_END
};
