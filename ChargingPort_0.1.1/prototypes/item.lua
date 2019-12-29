data:extend({

{
	type = "item",
	name = "charge-port",
	icon_size = 32,
	icons = {
	{
		icon = "__base__/graphics/icons/roboport.png",
		tint = {r = 0, g = 1, b = 0, a = 1}
	}
	},
	stack_size = 10,
	--flags{"goes-to-quickbar"},
	place_result = "charge-port",
	subgroup = "logistic-network",
	order = "c[signal]-a[roboport]"
},

{
	type = "recipe",
	name = "charge-port",
	enabled = "false",
	ingredients = {
		{"steel-plate", 40},
		{"iron-gear-wheel", 25},
		{"advanced-circuit", 50},
		{"copper-cable", 50}
	},
	result = "charge-port"
},

{
	type = "recipe",
	name = "charge-port",
	enabled = "false",
	ingredients = {
		{"roboport", 1}
	},
	result = "charge-port"
}	

}) -- data:extend