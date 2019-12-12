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


local chargingPort = table.deepcopy(data.raw.roboport["roboport"])

chargingPort.name = "charge-port"
chargingPort.base =
{
	layers =
	{
		{
			filename = "__base__/graphics/entity/roboport/roboport-base.png",
			tint = {r = 0, g = 1, b = 0, a = 1},
			width = 143,
			height = 135,
			shift = {0.5, 0.25},
			hr_version =
			{
				filename = "__base__/graphics/entity/roboport/hr-roboport-base.png",
				tint = {r = 0, g = 1, b = 0, a = 1},
				width = 228,
				height = 277,
				shift = util.by_pixel(2, 7.75),
				scale = 0.5
			}
        },
        {
          filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
          width = 147,
          height = 101,
          draw_as_shadow = true,
          shift = util.by_pixel(28.5, 19.25),
          hr_version =
          {
            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
            width = 294,
            height = 201,
            draw_as_shadow = true,
            force_hr_shadow = true,
            shift = util.by_pixel(28.5, 19.25),
            scale = 0.5
          }
        }
      }
}
chargingPort.base_patch =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
	  tint = {r = 0, g = 1, b = 0, a = 1},
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
      hr_version =
      {
        filename = "__base__/graphics/entity/roboport/hr-roboport-base-patch.png",
		tint = {r = 0, g = 1, b = 0, a = 1},
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5, 5),
        scale = 0.5
      }
    }
chargingPort.robot_slots_count = 7
chargingPort.material_slots_count = 7
chargingPort.charging_offsets = { 				-- 5 charging ports per side for 16 total
	{-3, 3}, {-3, 2}, {-3, 1}, {-3, 0}, 		-- Top left down left side
	{-3, -1}, {-1.5, -1}, {0, -1}, {1.5, -1}, 	-- Bottom left across bottom
	{3, -1}, {3, 0}, {3, 1}, {3, 2}, 			-- Bottom right up right side
	{3, 3}, {1.5, 3}, {0, 3}, {-1.5, 3} 		-- Top right across top
}
chargingPort.energy_source = {
	type = "electric",
	usage_priority = "secondary-input",
	input_flow_limit = "17MW",
	buffer_capacity = "250MJ"
}

data:extend({chargingPort})