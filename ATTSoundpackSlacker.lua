local appName = ...
function asset(name)
	return "Interface\\AddOns\\" .. appName .. "\\assets\\" .. name
end

local api = AllTheThings.Audio

api:CreateSoundPack("Pokémon (Slacker)", {
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
	MOUNTFANFARE = {
		asset("evo_gen2.ogg"),
		asset("evo_gen3.ogg"),
		asset("evo_gen4.ogg"),
		asset("evo_gen5.ogg"),
		asset("evo_gen6.ogg"),
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

api:CreateSoundPack("Kazoo (Slacker)", {
	COMPLETE = {
		asset("kazooc1.ogg"),
		asset("kazooc2.ogg"),
	},
	DEATH = {
		asset("kazoo.ogg"),
	},
	FANFARE = {
		asset("kazoof1.ogg"),
        asset("kazoof2.ogg"),
        asset("kazoof3.ogg"),
	},
	MOUNTFANFARE = {
		asset("kazooc1.ogg"),
		asset("kazooc2.ogg"),
	},
	RAREFIND = {
		asset("kazoomegalovania.ogg"),
		asset("kazoocountdown.ogg"),
	},
	REMOVE = {
		asset("ouch.ogg"),
	},
	REPORT = {
		asset("waitaminute.ogg"),
	},
})

api:CreateSoundPack("Crash Bandicoot (Slacker)", {
	COMPLETE = {
		asset("CB_Main Menu.ogg"),
	},
	DEATH = {
		asset("CB_Death.ogg"),
		asset("CB_Death2.ogg"),
	},
	FANFARE = {
		asset("CB_AkuAku.ogg"),
        asset("CB_CrateBreak.ogg"),
        asset("CB_LvlUp.ogg"),
		asset("CB_Wumpa.ogg"),
	},
	MOUNTFANFARE = {
		asset("CB_Crystal.ogg"),
	},
	RAREFIND = {
		asset("CB_Shine.ogg"),
	},
	REMOVE = {
		asset("CB_AkuAkuDeath.ogg"),
	},
	REPORT = {
		asset("CB_UhOh.ogg"),
	},
})		

api:CreateSoundPack("Zelda (Slacker)", {
	COMPLETE = {
		asset("TP_Armogohma Clear.ogg"),
		asset("TP_Fanfare_Goal.ogg"),
		asset("TP_Seize Fanfare.ogg"),
	},
	DEATH = {
		asset("BoTW_Game Over.ogg"),
	},
	FANFARE = {
		asset("TP_Fanfare_CatchFish.ogg"),
        asset("TP_Fanfare_FirstRupee.ogg"),
        asset("TP_Fanfare_SmallItem.ogg"),
		asset("TP_Fanfare_SmallItem2.ogg"),
	},
	MOUNTFANFARE = {
		asset("TP_Fanfare_HeartContainer.ogg"),
	},
	RAREFIND = {
		asset("TP_Fanfare_GoldenBug.ogg"),
	},
	REMOVE = {
		asset("TP_Fanfare_CatchNonFish.ogg"),
	},
	REPORT = {
		asset("OoT_Hey listen.ogg"),
	},
})