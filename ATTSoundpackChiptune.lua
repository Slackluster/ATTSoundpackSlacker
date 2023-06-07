-- To register API events
local api = CreateFrame("Frame")

-- API events
api:RegisterEvent("ADDON_LOADED")

-- Remove original ATT sounds
local function removeSounds()
    AllTheThings.ClearSounds("Complete")
    AllTheThings.ClearSounds("Fanfare")
    AllTheThings.ClearSounds("RareFind")
    AllTheThings.ClearSounds("Remove")
    AllTheThings.ClearSounds("Report")
end

-- Add custom ATT sounds
local function addSounds()
    -- Add the "Congatulations, your Pokémon has evolved!" sounds to the "Complete" sounds
    AllTheThings.AddSound("Complete", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\evo_gen2.ogg")
    AllTheThings.AddSound("Complete", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\evo_gen3.ogg")
    AllTheThings.AddSound("Complete", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\evo_gen4.ogg")
    AllTheThings.AddSound("Complete", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\evo_gen5.ogg")
    AllTheThings.AddSound("Complete", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\evo_gen6.ogg")

    -- Add the "Badge obtained!" sounds to the "Fanfare" sounds
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\badge_gen2.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\badge_gen3.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\badge_gen4.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\badge_gen5.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\badge_gen6.ogg")

    -- Add the "TM obtained!" sounds to the "RareFind" sounds
    AllTheThings.AddSound("RareFind", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\tm_gen2.ogg")
    AllTheThings.AddSound("RareFind", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\tm_gen3.ogg")
    AllTheThings.AddSound("RareFind", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\tm_gen4.ogg")
    AllTheThings.AddSound("RareFind", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\tm_gen5.ogg")
    AllTheThings.AddSound("RareFind", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\tm_gen6.ogg")

    -- Add the "Game Corner lose" sound to the "Remove" sounds
    AllTheThings.AddSound("Remove", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\gamecorner-lose.ogg")

    -- Add the "Damn son, where'd you find this?" sound to the "Report" sounds
    AllTheThings.AddSound("Report", "Interface\\AddOns\\ATTSoundpackChiptune\\assets\\damnson.ogg")
end

api:SetScript("OnEvent", function(self, event, arg1, arg2, ...)
	-- When the AddOn is fully loaded, actually run the components
	if event == "ADDON_LOADED" and arg1 == "ATTSoundpackChiptune" then
        -- We don't need to check if ATT is also loaded, because it is a dependency for this AddOn
        removeSounds()
        addSounds()
    end
end)