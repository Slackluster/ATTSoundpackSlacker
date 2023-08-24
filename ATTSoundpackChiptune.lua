local appName = ...
function asset(name)
	return "Interface\\AddOns\\" .. appName .. "\\assets\\" .. name
end

local api = AllTheThings.Audio

api:CreateSoundPack("Pokémon (" .. appName .. ")", {
	COMPLETE = {
		asset("evo_gen2.ogg"),
        asset("evo_gen3.ogg"),
        asset("evo_gen4.ogg"),
        asset("evo_gen5.ogg"),
        asset("evo_gen6.ogg"),
	},
	DEATH = {
		asset("death.ogg"),
	},
	FANFARE = {
		asset("badge_gen2.ogg"),
        asset("badge_gen3.ogg"),
        asset("badge_gen4.ogg"),
        asset("badge_gen5.ogg"),
        asset("badge_gen6.ogg"),
	},
	RAREFIND = {
		asset("tm_gen2.ogg"),
        asset("tm_gen3.ogg"),
        asset("tm_gen4.ogg"),
        asset("tm_gen5.ogg"),
        asset("tm_gen6.ogg"),
	},
	REMOVE = {
		asset("gamecorner-lose.ogg"),
	},
	REPORT = {
		asset("damnson.ogg"),
	},
})

-- Activate the soundpack, placeholder until I add the option to ATT to select a soundpack
AllTheThings.Audio:ActivateSoundPack("Pokémon (" .. appName .. ")")