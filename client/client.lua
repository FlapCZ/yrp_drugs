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

local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PID           			= 0
local GUI           			= {}
local cokeQTE       			= 0
ESX 			    			= nil
GUI.Time            			= 0
local coke_poochQTE 			= 0
local weedQTE					= 0
local weed_poochQTE 			= 0
local methQTE					= 0
local meth_poochQTE 			= 0
local opiumQTE					= 0
local opium_poochQTE 			= 0
local myJob 					= nil
local PlayerData                = nil
local GUI 						= {}
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local yes = true

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.general_config_settings.esx, function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    if PlayerData == nil or PlayerData.job == nil then
        PlayerData = ESX.GetPlayerData()
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

AddEventHandler('yrp_drugs:hasEnteredMarker', function(zone)

        if zone == 'DrugsCraft' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsCraft'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

        if zone == 'DrugsCraft2' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsCraft'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

        if zone == 'DrugsCraft3' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsCraft'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

        if zone == 'DrugsCraft4' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsCraft'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

        if zone == 'DrugsPackage' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsPackage'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

        if zone == 'DrugsPackage2' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsPackage'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

        if zone == 'DrugsPackage3' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsPackage'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

        if zone == 'DrugsPackage4' then
            if myJob ~= "police" then
                CurrentAction     = 'DrugsPackage'
                CurrentActionMsg  = ''
                CurrentActionData = {}
            end
        end

end)

-- Render markers
Citizen.CreateThread(function()
    while true do
        Wait(5)
        for k,v in pairs(Config.Zones) do
            local coords = GetEntityCoords(GetPlayerPed(-1))
            if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.general_config_settings.marker_drawDistace) then
                if GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.general_config_settings.marker_drawDistace and GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) > 2.5 then
                    DrawMarker(Config.general_config_settings.MarkerType_smallMarker, v.x, v.y, v.z + -0.2, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.general_config_settings.ZoneSize_smallMarker.x, Config.general_config_settings.ZoneSize_smallMarker.y, Config.general_config_settings.ZoneSize_smallMarker.z, Config.general_config_settings.ZoneColorO_smallMarker.r, Config.general_config_settings.ZoneColorO_smallMarker.g, Config.general_config_settings.ZoneColorO_smallMarker.b, 155, true, true, 2, true, false, false, false)
                else
                    DrawMarker(Config.general_config_settings.MarkerType_bigMarker, v.x, v.y, v.z + -1.0, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.general_config_settings.ZoneSize_bigMarker.x, Config.general_config_settings.ZoneSize_bigMarker.y, Config.general_config_settings.ZoneSize_bigMarker.z, Config.general_config_settings.ZoneColorG_bigMarker.r, Config.general_config_settings.ZoneColorG_bigMarker.g, Config.general_config_settings.ZoneColorG_bigMarker.b, 100, false, true, 2, false, false, false, false)
                    DrawMarker(Config.general_config_settings.MarkerType_smallMarker, v.x, v.y, v.z + -0.2, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.general_config_settings.ZoneSize_smallMarker.x, Config.general_config_settings.ZoneSize_smallMarker.y, Config.general_config_settings.ZoneSize_smallMarker.z, Config.general_config_settings.ZoneColorG_smallMarker.r, Config.general_config_settings.ZoneColorG_smallMarker.g, Config.general_config_settings.ZoneColorG_smallMarker.b, 155, true, true, 2, true, false, false, false)
                    DrawYRPtext(v.x, v.y, v.z + 0.4, tostring(Config.general_config_settings.draw_text))
                end
            end
        end

    end
end)

--draw text
function DrawYRPtext(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.5, 0.35)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 200
	DrawRect(_x,_y+0.0105, 0.025+ factor, 0.05, 100, 204, 100, 150)
end

-- RETURN NUMBER OF ITEMS FROM SERVER
RegisterNetEvent('yrp_drugs:ReturnInventory')
AddEventHandler('yrp_drugs:ReturnInventory', function(cokeNbr, cokepNbr, methNbr, methpNbr, weedNbr, weedpNbr, opiumNbr, opiumpNbr, jobName, currentZone)
    cokeQTE       = cokeNbr
    coke_poochQTE = cokepNbr
    methQTE 	  = methNbr
    meth_poochQTE = methpNbr
    weedQTE 	  = weedNbr
    weed_poochQTE = weedpNbr
    opiumQTE       = opiumNbr
    opium_poochQTE = opiumpNbr
    myJob         = jobName
    TriggerEvent('yrp_drugs:hasEnteredMarker', currentZone)
end)

-- Activate menu when player is inside marker
Citizen.CreateThread(function()
    while true do
        Wait(50)
        local coords      = GetEntityCoords(GetPlayerPed(-1))
        local isInMarker  = false
        local currentZone = nil

        for k,v in pairs(Config.Zones) do
            if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.general_config_settings.ZoneSize_bigMarker.x / 2) then
                isInMarker  = true
                currentZone = k
            end
        end

        if isInMarker and not hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = true
            lastZone                = currentZone
            TriggerServerEvent('yrp_drugs:GetUserInventory', currentZone)
        end

        if not isInMarker and hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = false
            CurrentAction = nil
        end
    end
end)

-- Key Controls
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if CurrentAction ~= nil then
            SetTextComponentFormat('STRING')
            AddTextComponentString(CurrentActionMsg)
            DisplayHelpTextFromStringLabel(0, 0, 1, -1)
            if IsControlJustReleased(0, 38) then
                if CurrentAction == 'DrugsCraft' then
                    SendNUIMessage({
                        yrp_drugs_craft = true
                    })
                    SetNuiFocus( true, true )

                    if Config.general_config_settings.acces_to_all_drugs[PlayerData.job.name] then
                        SendNUIMessage({
                            yrp_illegal_craft = true
                        })
                    end
                end

                if CurrentAction == 'DrugsPackage' then
                    SendNUIMessage({
                        yrp_drugs_package = true
                    })
                    SetNuiFocus( true, true )

                    if Config.general_config_settings.acces_to_all_drugs[PlayerData.job.name] then
                        SendNUIMessage({
                            yrp_illegal_package = true
                        })
                    end
                end
                CurrentAction = nil
            end
        end
    end
end)

----NUI callbacks

RegisterNUICallback('CloseYRPdrugs', function(data, cb)
    SendNUIMessage({
        yrp_all_close = true
	})
	SetNuiFocus(false)
end)

RegisterNUICallback('CraftWeed', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.weed
    local time = 2 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 2000 * first,
        label = "Produce " ..first.. "x weed, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            --TriggerEvent("yrp_sounds:PlayClientSounds", "test", 0.8) --buckle

            TriggerServerEvent('yrp_drugs:CraftWeed', 'weed', data.weed)
        end
    end)
end)

RegisterNUICallback('CraftOpium', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)
    
    local first = data.opium
    local time = 3 * first
    
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 3000 * first,
        label = "Produce " ..first.. "x opium, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:CraftOpium', 'opium', data.opium)
        end
    end)
end)

RegisterNUICallback('CraftCoke', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.coke
    local time = 4 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 4000 * first,
        label = "Produce " ..first.. "x coke, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:CraftCoke', 'coke', data.coke)
        end
    end)
end)

RegisterNUICallback('CraftMeth', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.meth
    local time = 4 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 4000 * first,
        label = "Produce " ..first.. "x meth, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:CraftMeth', 'meth', data.meth)
        end
    end)
end)

RegisterNUICallback('CraftHeroin', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.heroin
    local time = 4 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 4000 * first,
        label = "Produce " ..first.. "x heroin, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:CraftHeroin', 'heroin', data.heroin)
        end
    end)
end)

RegisterNUICallback('CraftMdma', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.mdma
    local time = 5 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 5000 * first,
        label = "Produce " ..first.. "x mdma, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:CraftMdma', 'mdma', data.mdma)
        end
    end)
end)

RegisterNUICallback('PackageWeed', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.packWeed
    local time = 3 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 3000 * first,
        label = "Packing " ..first.. "x weed, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:PackageWeed', 'weed_pooch', data.packWeed)
        end
    end)
end)

RegisterNUICallback('PackageOpium', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.packOpium
    local time = 3.5 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 3500 * first,
        label = "Packing " ..first.. "x opium, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:PackageOpium', 'opium_pooch', data.packOpium)
        end
    end)
end)

RegisterNUICallback('PackageCoke', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.packCoke
    local time = 4 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 4000 * first,
        label = "Packing " ..first.. "x coke, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:PackageCoke', 'coke_pooch', data.packCoke)
        end
    end)
end)

RegisterNUICallback('PackageMeth', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.packMeth
    local time = 3.5 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 3500 * first,
        label = "Packing " ..first.. "x meth, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:PackageMeth', 'meth_pooch', data.packMeth)
        end
    end)
end)

RegisterNUICallback('PackageHeroin', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.packHeroin
    local time = 3.75 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 3750 * first,
        label = "Packing " ..first.. "x heroin, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:PackageHeroin', 'heroin_pooch', data.packHeroin)
        end
    end)
end)

RegisterNUICallback('PackageMdma', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)

    local first = data.packMdma
    local time = 3.75 * first

    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = 3750 * first,
        label = "Packing " ..first.. "x mdma, it'll take you " ..time.. "s",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "missheistdockssetup1clipboard@idle_a",
            anim = "idle_a",
        },
        prop = {
            model = "prop_paper_bag_small",
        }
    }, function(status)
        if not status then
            TriggerServerEvent('yrp_drugs:PackageMdma', 'mdma_pooch', data.packMdma)
        end
    end)
end)

RegisterNUICallback('SeeWeedCraft', function(data, cb)
    SendNUIMessage({
        yrp_see_weed = true
	})
end)

RegisterNUICallback('SeeOpiumCraft', function(data, cb)
    SendNUIMessage({
        yrp_see_opium = true
	})
end)

RegisterNUICallback('SeeCokeCraft', function(data, cb)
    SendNUIMessage({
        yrp_see_coke = true
	})
end)

RegisterNUICallback('SeeMethCraft', function(data, cb)
    SendNUIMessage({
        yrp_see_meth = true
	})
end)

RegisterNUICallback('SeeHeroinCraft', function(data, cb)
    SendNUIMessage({
        yrp_see_heroin = true
	})
end)

RegisterNUICallback('SeeMdmaCraft', function(data, cb)
    SendNUIMessage({
        yrp_see_mdma = true
	})
end)

RegisterNUICallback('SeeWeedPackage', function(data, cb)
    SendNUIMessage({
        yrp_see_weed_c = true
	})
end)

RegisterNUICallback('SeeOpiumPackage', function(data, cb)
    SendNUIMessage({
        yrp_see_opium_c = true
	})
end)

RegisterNUICallback('SeeCokePackage', function(data, cb)
    SendNUIMessage({
        yrp_see_coke_c = true
	})
end)

RegisterNUICallback('SeeMethPackage', function(data, cb)
    SendNUIMessage({
        yrp_see_meth_c = true
	})
end)

RegisterNUICallback('SeeHeroinPackage', function(data, cb)
    SendNUIMessage({
        yrp_see_heroin_c = true
	})
end)

RegisterNUICallback('SeeMdmaPackage', function(data, cb)
    SendNUIMessage({
        yrp_see_mdma_c = true
	})
end)


------ blbosti

RegisterNUICallback('Notification', function(data, cb)
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)
    ESX.ShowNotification(data.text)
end)

RegisterNetEvent('yrp_drugs:PlayerDead')
AddEventHandler('yrp_drugs:PlayerDead', function()
    SendNUIMessage({
		yrp_all_close = true
	})
    SetNuiFocus(false)
end)

RegisterNUICallback('BackToPackage', function(data, cb)
    if Config.general_config_settings.acces_to_all_drugs[PlayerData.job.name] then
        SendNUIMessage({
            yrp_back_pack_il = true
        })
    else
        SendNUIMessage({
            yrp_back_pack = true
        })
    end
end)

RegisterNUICallback('BackToCrafting', function(data, cb)
    if Config.general_config_settings.acces_to_all_drugs[PlayerData.job.name] then
        SendNUIMessage({
            yrp_back_craft_il = true
        })
    else
        SendNUIMessage({
            yrp_back_craft = true
        })
    end
end)
