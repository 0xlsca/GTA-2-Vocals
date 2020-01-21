SoundModules = require("modules").sound
Settings = require("settings")


--set up data location

if data[Settings.mod_category] == nil  then 
	data[Settings.mod_category] = {}
end

if data[Settings.mod_category][Settings.sound.category] == nil then
	data[Settings.mod_category][Settings.sound.category] = {}
end



local stages = {
	SoundModules.add_vocals,
	SoundModules.add_sfx
}


for _, v in ipairs(stages) do 
	require(v) 
end
