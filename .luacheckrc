std = "min+busted+eso"
stds.eso = {
    globals = {
        "Clock_TST",
        "SLASH_COMMANDS",
        "d",
        "EVENT_MANAGER",
        "GetTimeStamp",
        "EVENT_ADD_ON_LOADED",
        "LibClockTST",
        "GetCVar",
        "GuiRoot",
        "Clock_TST_Moon",
        "Clock_TST_Moon_Masser",
        "ZO_ColorDef",
        "ZO_SavedVars",
        "LibAddonMenu2",
        "ZO_Object",
        "HUD_SCENE",
        "HUD_UI_SCENE",
        "WORLD_MAP_SCENE",
        "EVENT_PLAYER_COMBAT_STATE",
        "zo_strformat",
        "InitializeTooltip",
        "InformationTooltip",
        "TOP",
        "ClearTooltip",
        "AddMenuItem",
        "SetTooltipText",
        "ClearMenu",
        "ShowMenu",
        "GetControl",
        "ZO_HUDFadeSceneFragment",
        "GAME_MENU_SCENE",
        "Clock_TST_Moon",
        "ZO_HUDFadeSceneFragment",
    },
}
self = true
exclude_files = {
    "Test/ZOMock.lua",
}
include_files = {
    "Lib/**/*.lua",
    "Test/**/*.lua"
}