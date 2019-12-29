data:extend({

{
	type = "technology",
	name = "charge-roboport",
	icon_size = 128,
	icon = "__ChargingPort__/graphics/roboport128.png",
	effects = {
		{
			type = "unlock-recipe",
			recipe = "charge-port"
		}
	},
	prerequisites = {"construction-robotics"},
	unit = {
		count = 200,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
		},
		time = 30
	},
	order = "c-k-a"
}

}) -- data:extend