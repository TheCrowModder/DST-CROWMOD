PrefabFiles = {
	"thecrow",
	"thecrow_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/thecrow.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/thecrow.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/thecrow.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/thecrow.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/thecrow_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/thecrow_silho.xml" ),

    Asset( "IMAGE", "bigportraits/thecrow.tex" ),
    Asset( "ATLAS", "bigportraits/thecrow.xml" ),
	
	Asset( "IMAGE", "images/map_icons/thecrow.tex" ),
	Asset( "ATLAS", "images/map_icons/thecrow.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_thecrow.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_thecrow.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_thecrow.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_thecrow.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_thecrow.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_thecrow.xml" ),
	
	Asset( "IMAGE", "images/names_thecrow.tex" ),
    Asset( "ATLAS", "images/names_thecrow.xml" ),
	
	Asset( "IMAGE", "images/names_gold_thecrow.tex" ),
    Asset( "ATLAS", "images/names_gold_thecrow.xml" ),
}

AddMinimapAtlas("images/map_icons/thecrow.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.thecrow = "The Sample Character"
STRINGS.CHARACTER_NAMES.thecrow = "Esc"
STRINGS.CHARACTER_DESCRIPTIONS.thecrow = "*Perk 1\n*Perk 2\n*Perk 3"
STRINGS.CHARACTER_QUOTES.thecrow = "\"Quote\""
STRINGS.CHARACTER_SURVIVABILITY.thecrow = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.THECROW = require "speech_thecrow"

-- The character's name as appears in-game 
STRINGS.NAMES.THECROW = "Esc"
STRINGS.SKIN_NAMES.thecrow_none = "Esc"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("thecrow", "FEMALE", skin_modes)
