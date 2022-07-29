-- Missing Recipe for MTG Moreblocks

local wax_sound = default.node_sound_metal_defaults().dig

-- Use Axe to remove wax (Minecraft)
minetest.override_item("moreblocks:copperpatina",{
	on_punch = function(pos,node,puncher)
		if not puncher:is_player() then return end
		local name = puncher:get_player_name()
		if minetest.is_protected(pos,name) then
			minetest.record_protection_violation(pos, name)
			return
		end
		local axe = puncher:get_wielded_item()
		local axe_name = axe:get_name()
		if minetest.get_item_group(axe_name, "axe") == 0 then return end
		-- TODO: Lower the axe duration
		minetest.swap_node(pos,{name="default:copperblock"})
		minetest.sound_play(wax_sound, {pos=pos}, true)
	end
})
