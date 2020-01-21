local Settings = require("settings")

local prefix = Settings.sound.folder_location
local postfix = Settings.sound.file_type

local category = Settings.sound.category
local type_name = Settings.sound.type_name

local Adder = {

}



function Adder.add_sounds(infix, key_filename_table)

	for key,value in pairs(key_filename_table) do
		data:extend(
			{ 
				{
					name = key,		
					filename = prefix .. infix .. value .. postfix,		
					type = type_name
				}	
			}
		)
	end
end

return Adder