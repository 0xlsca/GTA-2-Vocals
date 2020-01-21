local Adder = require("add_sound")

local vocals_infix = "vocals/"

local vocals_key_filename_table = {
	shotgun_crafted = "shotgun",
	mg_crafted = "machinegun",
	pistol_crafted = "pistol",
	rl_crafted = "rocketlauncher",
	ft_crafted = "flamethrower",
	wasted = "wasted"
}

Adder.add_sounds(vocals_infix, vocals_key_filename_table)

