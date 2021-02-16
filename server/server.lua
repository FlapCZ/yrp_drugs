------------------------------------------------------------
------------------------ yrp_drugs -------------------------
------------------------------------------------------------
--------------------- Created by Flap ----------------------
------------------------------------------------------------
----------------- YourRolePlay Development -----------------
---------- Thank you for using this drugs system -----------
----- Regular updates and lots of interesting scripts ------
--------- discord -> https://discord.gg/hqZEXc8FSE ---------
------------------------------------------------------------
ESX 						   = nil
local CopsConnected       	   = 0

TriggerEvent(Config.general_server_settings.esx, function(obj) ESX = obj end)

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(5000, CountCops)

end

CountCops()

RegisterServerEvent('yrp_drugs:CraftWeed')
AddEventHandler('yrp_drugs:CraftWeed', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)

    if (itemName ~= 'weed') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsCraft then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
		    xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end

end)

RegisterServerEvent('yrp_drugs:CraftOpium')
AddEventHandler('yrp_drugs:CraftOpium', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)

    if (itemName ~= 'opium') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsCraft then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
		    xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end

end)

RegisterServerEvent('yrp_drugs:CraftCoke')
AddEventHandler('yrp_drugs:CraftCoke', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)

    if (itemName ~= 'coke') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsCraft then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
		    xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:CraftMeth')
AddEventHandler('yrp_drugs:CraftMeth', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)

    if (itemName ~= 'meth') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsCraft then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
		    xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:CraftHeroin')
AddEventHandler('yrp_drugs:CraftHeroin', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)

    if (itemName ~= 'heroin') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsCraft then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
		    xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:CraftMdma')
AddEventHandler('yrp_drugs:CraftMdma', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)

    if (itemName ~= 'mdma') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsCraft then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
		    xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:PackageWeed')
AddEventHandler('yrp_drugs:PackageWeed', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local weedQuantity = xPlayer.getInventoryItem('weed').count

    if (itemName ~= 'weed_pooch') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsPackage then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if weedQuantity < 5 * amount then
		TriggerClientEvent('esx:showNotification', source, 'Nemáš dostatek weedu, potřebuješ jich ' ..amount * 5)
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.removeInventoryItem('weed', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
			xPlayer.removeInventoryItem('weed', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:PackageOpium')
AddEventHandler('yrp_drugs:PackageOpium', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local weedQuantity = xPlayer.getInventoryItem('opium').count

    if (itemName ~= 'opium_pooch') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsPackage then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if weedQuantity < 5 * amount then
		TriggerClientEvent('esx:showNotification', source, 'Nemáš dostatek opia, potřebuješ jich ' ..amount * 5)
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.removeInventoryItem('opium', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
			xPlayer.removeInventoryItem('opium', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:PackageCoke')
AddEventHandler('yrp_drugs:PackageCoke', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local weedQuantity = xPlayer.getInventoryItem('coke').count

    if (itemName ~= 'coke_pooch') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsPackage then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if weedQuantity < 5 * amount then
		TriggerClientEvent('esx:showNotification', source, 'Nemáš dostatek coke, potřebuješ jich ' ..amount * 5)
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.removeInventoryItem('coke', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
			xPlayer.removeInventoryItem('coke', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:PackageMeth')
AddEventHandler('yrp_drugs:PackageMeth', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local weedQuantity = xPlayer.getInventoryItem('meth').count

    if (itemName ~= 'meth_pooch') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsPackage then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if weedQuantity < 5 * amount then
		TriggerClientEvent('esx:showNotification', source, 'Nemáš dostatek meth, potřebuješ jich ' ..amount * 5)
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.removeInventoryItem('meth', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
			xPlayer.removeInventoryItem('meth', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:PackageHeroin')
AddEventHandler('yrp_drugs:PackageHeroin', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local weedQuantity = xPlayer.getInventoryItem('heroin').count

    if (itemName ~= 'heroin_pooch') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsPackage then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if weedQuantity < 5 * amount then
		TriggerClientEvent('esx:showNotification', source, 'Nemáš dostatek heroin, potřebuješ jich ' ..amount * 5)
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.removeInventoryItem('heroin', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
			xPlayer.removeInventoryItem('heroin', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

RegisterServerEvent('yrp_drugs:PackageMdma')
AddEventHandler('yrp_drugs:PackageMdma', function(itemName, amount)

	local xPlayer = ESX.GetPlayerFromId(source)
	local weedQuantity = xPlayer.getInventoryItem('mdma').count

    if (itemName ~= 'mdma_pooch') then
	    print(('[yrp_drugs] [^2INFO^7] "%s" attempted to spawn in an item!'):format(xPlayer.identifier))
	    return
	end
	if CopsConnected < Config.general_server_settings.RequiredCopsPackage then
		TriggerClientEvent('esx:showNotification', source, 'Not enough police connected')
		return
	end

	if weedQuantity < 5 * amount then
		TriggerClientEvent('esx:showNotification', source, 'Nemáš dostatek mdma, potřebuješ jich ' ..amount * 5)
		return
	end

	if Config.general_server_settings.oldESX then
		local yrp = xPlayer.getInventoryItem(itemName)
		if yrp.limit ~= -1 and amount >= yrp.limit then
			TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
		else
			xPlayer.removeInventoryItem('mdma', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
		end
    else
	    if xPlayer.canCarryItem(itemName, amount) then
			xPlayer.removeInventoryItem('mdma', 5 * amount)
			xPlayer.addInventoryItem(itemName, amount)
	    else
		    TriggerClientEvent('esx:showNotification', source, 'Již se ti do inventáře nevleze ' ..amount.. 'x ' ..itemName)
	    end
	end
end)

-- RETURN INVENTORY TO CLIENT
RegisterServerEvent('yrp_drugs:GetUserInventory')
AddEventHandler('yrp_drugs:GetUserInventory', function(currentZone)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('yrp_drugs:ReturnInventory', 
    	_source, 
    	xPlayer.getInventoryItem('coke').count, 
		xPlayer.getInventoryItem('coke_pooch').count,
		xPlayer.getInventoryItem('meth').count, 
		xPlayer.getInventoryItem('meth_pooch').count, 
		xPlayer.getInventoryItem('weed').count, 
		xPlayer.getInventoryItem('weed_pooch').count, 
		xPlayer.getInventoryItem('opium').count, 
		xPlayer.getInventoryItem('opium_pooch').count,
		xPlayer.job.name, 
		currentZone
    )
end)
