local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")

RegisterServerEvent('Kian_mysterybox:open')
AddEventHandler('Kian_mysterybox:open', function()
	local source = source
	local user_id = vRP.getUserId({source})
	local chance = math.random(1,21)
	local reward = cfg.rewards


	if chance == 1 or chance == 12 then
		vRP.giveInventoryItem({user_id,reward.chance1item,reward.chance1amount,false})
		print(chance1besked) -- Ændre til eget notify 
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance1item.." x"..reward.chance1amount.."")

	elseif chance == 2 or chance == 13 then
		vRP.giveInventoryItem({user_id,reward.chance2item,reward.chance2amount,false})
		print(chance2besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance2item.." x"..reward.chance2amount.."")

	elseif chance == 3 then
		vRP.giveInventoryItem({user_id,reward.chance3item,reward.chance3amount,false})
		print(chance3besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance3item.." x"..reward.chance3amount.."")

	elseif chance == 4 or chance == 14 then
		vRP.giveInventoryItem({user_id,reward.chance4item,reward.chance4amount,false})
		print(chance4besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance4item.." x"..reward.chance4amount.."")

	elseif chance == 5 or chance == 15 then
		vRP.giveInventoryItem({user_id,reward.chance5item,reward.chance5amount,false})
		print(chance5besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance5item.." x"..reward.chance5amount.."")

	elseif chance == 6 or chance == 16 then
		vRP.giveInventoryItem({user_id,reward.chance6item,reward.chance6amount,false})
		print(chance6besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance6item.." x"..reward.chance6amount.."")

	elseif chance == 7 or chance == 17 then
		vRP.giveInventoryItem({user_id,reward.chance7item,reward.chance7amount,false})
		print(chance7besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance7item.." x"..reward.chance7amount.."")

	elseif chance == 8 or chance == 18 then
		vRP.giveInventoryItem({user_id,reward.chance8item,reward.chance8amount,false})
		print(chance8besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance8item.." x"..reward.chance8amount.."")

	elseif chance == 9 or chance == 19 then
		vRP.giveInventoryItem({user_id,reward.chance9item,reward.chance9amount,false})
		print(chance9besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance9item.." x"..reward.chance9amount.."")

	elseif chance == 10 or chance == 20 then
		vRP.giveInventoryItem({user_id,reward.chance10item,reward.chance10amount,false})
		print(chance10besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance10item.." x"..reward.chance10amount.."")
		
	elseif chance == 11 or chance == 21 then
		vRP.giveInventoryItem({user_id,reward.chance11item,reward.chance11amount,false})
		print(chance11besked) -- Ændre til eget notify
		TriggerClientEvent('Kian_mysterybox:startemote', source)
		Log("**ID: " .. user_id .. "** Modtog "..reward.chance11item.." x"..reward.chance11amount.."")
	end
end)


-- Item defintion
vRP.defInventoryItem({cfg.item,cfg.displayname,cfg.description, function()
	local choices = {}
		
	choices["> Åbn"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
		if user_id ~= nil then
			 if vRP.tryGetInventoryItem({user_id, cfg.item, 1, false}) then
			TriggerClientEvent("Kian_mysterybox:startemote", player)
			vRP.closeMenu({player})
			end
		else
		end
	end}
	return choices
end, cfg.weight})


-- Discord log system
function Log(besked)
	local embeds = {
		  {
			  ["color"] = "8663711",
			  ["title"] = "Mysterybox",
			  ["description"] = besked,
			  ["footer"] = {
				["text"] = "Kian_mysterbox",
			},
	  	}
	}
	PerformHttpRequest(cfg.webhook, function(err, text, headers) end, 'POST', json.encode({username = cfg.discordname, embeds = embeds, avatar_url = cfg.image}), { ['Content-Type'] = 'application/json' })
end
