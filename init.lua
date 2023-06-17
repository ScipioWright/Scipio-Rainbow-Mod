dofile_once("data/scripts/lib/utilities.lua") -- Noita's internal utilities

function get_player()
	return EntityGetWithTag("player_unit")[1]
end

function OnWorldPostUpdate()
	local player_id = get_player()
	local red_comp = EntityGetFirstComponent(player_id, "SpriteComponent", "player_red")
	local blue_comp = EntityGetFirstComponent(player_id, "SpriteComponent", "player_blue")
	local green_comp = EntityGetFirstComponent(player_id, "SpriteComponent", "player_blue")
	ComponentSetValue2(red_comp, "alpha", rand(0, .5))
	ComponentSetValue2(blue_comp, "alpha", rand(0, .5))
	ComponentSetValue2(green_comp, "alpha", rand(0, .5))
end
