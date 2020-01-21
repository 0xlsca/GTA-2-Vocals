local Settings = require("settings")

local sfx_folder_name = "sfx/"
local tag_prefix = "sfx_"

--glt = gun-location-table
local glt = {
	
}

glt["submachine-gun"] = "machinegun"
glt["rocket-launcher"] = "rocketlauncher"
glt["shotgun"] = "shotgun"
glt["combat-shotgun"] = glt["shotgun"]
glt["flamethrower"] = "flamethrower"
glt["pistol"] = "pistol"


local function make_location(name)

	return Settings.sound.folder_location .. sfx_folder_name .. tag_prefix .. name .. Settings.sound.file_type

end


for k,v in pairs(glt) do

	local params = data.raw.gun[k].attack_parameters
	
	if params.sound == nil then
		params.sound = {
			filename = make_location(v)
		}
	else
		params.sound.filename = make_location(v)
	end
end