-- Missing Recipe for MTG Technic

minetest.register_craft({
	type = 'cooking',
	cooktime = 1 * 9,
	recipe = "default:steelblock",
	output = "technic:cast_iron_block",
})

minetest.register_craft({
	type = 'cooking',
	cooktime = 2 * 9,
	recipe = "technic:cast_iron_block",
	output = "default:steelblock",
})
