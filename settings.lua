data:extend(
{ 	
	
 	-- runtime settings
   {
		type = "double-setting",
		name = "desdecon-success-chance",
		setting_type = "runtime-global",
		default_value = 0.5,
		maximum_value = 1,
		minimum_value = 0,
		order = "a",
		per_user = false,
	},
	{
		type = "string-setting",
		name = "desdecon-blacklist",
		setting_type = "runtime-global",
		default_value = "iron-ore,copper-ore,coal,stone",
		allow_blank = true,
		order = "b",
		per_user = false,
	},
}
)

