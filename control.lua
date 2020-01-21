
vocal_table = {
	shotgun = "shotgun_crafted",
	pistol = "pistol_crafted",
	flamethrower = "ft_crafted",
	wasted = "wasted"
}

vocal_table["submachine-gun"]="mg_crafted"
vocal_table["rocket-launcher"]="rl_crafted"

function play_sound(event) 

	local item_name = event.item_stack.name
	local player_id = event.player_index
	
	--game.print(tostring(vocal_table))
	--game.print(vocal_table[item_name])
	
	local sound_name = vocal_table[item_name]	
	
	--game.print(item_name)
	
	if sound_name ~= nil then
	
		game.players[player_id].play_sound{path= sound_name}
	end
	
end

function play_wasted(event) 
	
	local player_id = event.player_index
	game.players[player_id].play_sound{path= vocal_table["wasted"]}
	
end

script.on_load(function() 

		script.on_event(defines.events.on_player_crafted_item, play_sound)
		script.on_event(defines.events.on_player_died, play_wasted)

	end
)