#include "flo_12.h"

EntryList N(Entrances) = {
    [flo_12_ENTRY_0]    {  280.0,    0.0,    0.0,  270.0 },
    [flo_12_ENTRY_1]    {  280.0,    0.0,    0.0,  270.0 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .background = &gBackgroundImage,
    .tattle = { MSG_MapTattle_flo_12 },
};
