data:extend({
	{
		type = "technology",
		name = "precision-deconstruction",
		icon = "__destructive-deconstruction__/graphics/precision-deconstruction.png",
		icon_size = 128,
		prerequisites = {"utility-science-pack"},
		effects =
		{
			{
				type="nothing",
				effect_description="Safely recover mined entities",
			},
		},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30
		}
	},
})