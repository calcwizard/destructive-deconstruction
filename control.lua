
function entity_decon(entity,buffer)
	local item_name = (buffer[1]) and buffer[1].name or nil  --Lua ternary operators are trippy
	local blacklisted = string.find(settings.global["desdecon-blacklist"].value, entity.name) ~= nil
	if (not blacklisted and item_name and game.recipe_prototypes[item_name]) then
		buffer.clear()
		local yield = 0
		local decon_chance = settings.global["desdecon-success-chance"].value
		for k,v in pairs(game.recipe_prototypes[item_name].ingredients) do
			if (v.type == "item") then
				yield = v.amount * decon_chance

				-- if there is a fractional part of the yield, roll to see if it gives a resource
				if (yield % 1 ~= 0 and math.random() < yield % 1) then
					yield = yield + 1
				end
				if (yield >= 1) then
					buffer.insert({name=v.name,count=yield})
				end
			end
		end
	end
end



script.on_event(defines.events.on_player_mined_entity, function(event)
	if(event.entity.force.technologies["precision-deconstruction"].researched == false) then
		entity_decon(event.entity, event.buffer) 
	end
end)

script.on_event(defines.events.on_robot_mined_entity, function(event) 
	if(event.entity.force.technologies["precision-deconstruction"].researched == false) then
		entity_decon(event.entity, event.buffer) 
	end
end)