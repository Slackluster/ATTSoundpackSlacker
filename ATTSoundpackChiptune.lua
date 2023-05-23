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
    --AllTheThings.ClearSounds("Report")
end

-- Add custom ATT sounds
local function addSounds()
    AllTheThings.AddSound("Complete", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\complete1.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\fanfare1.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\fanfare2.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\fanfare3.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\fanfare4.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\fanfare5.ogg")
    AllTheThings.AddSound("Fanfare", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\fanfare6.ogg")
    AllTheThings.AddSound("RareFind", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\rarefind1.ogg")
    AllTheThings.AddSound("Remove", "Interface\\AddOns\\AllTheThings_Soundpack_Pokemon\\assets\\remove1.ogg")
end

api:SetScript("OnEvent", function(self, event, arg1, arg2, ...)
	-- When the AddOn is fully loaded, actually run the components
	if event == "ADDON_LOADED" and arg1 == "AllTheThings_Soundpack_Pokemon" then
        -- We don't need to check if ATT is also loaded, because it is a dependency for this AddOn
        removeSounds()
        addSounds()
    end
end)