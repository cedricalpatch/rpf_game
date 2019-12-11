local campfire = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if whenKeyJustPressed(keys["UP"]) then
            SpawnHorse()
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if whenKeyJustPressed(keys["RIGHT"]) then
            if campfire ~= 0 then
            SetEntityAsMissionEntity(campfire)
            DeleteObject(campfire)
            campfire = 0
            end
            local playerPed = PlayerPedId()
            TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 30000, true, false, false, false)
            --exports['progressBars']:startUI(30000, "Creando hogera")
            Citizen.Wait(30000)
            ClearPedTasksImmediately(PlayerPedId())
            local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.0, -1.55))
            local prop = CreateObject(GetHashKey("p_campfire02x"), x, y, z, true, false, true)
            SetEntityHeading(prop, GetEntityHeading(PlayerPedId()))
            PlaceObjectOnGroundProperly(prop)
            campfire = prop
        end
    end
end)

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

function SpawnHorse()
            local localPed = PlayerPedId()
            local model = GetHashKey("A_C_Horse_TennesseeWalker_BlackRabicano")
           -- while isModelValid do A_C_Horse_TennesseeWalker_BlackRabicano
            local forward = Citizen.InvokeNative(0x2412D9C05BB09B97, localPed)
            local pos = GetEntityCoords(localPed)
            local myHorse = Citizen.InvokeNative(0xD49F9B0955C367DE, model, pos.x+10, pos.y+10, pos.z, 0.0, true, true, true, true)
            Citizen.InvokeNative(0x283978A15512B2FE, myHorse, true)
            Citizen.InvokeNative(0x9F3480FE65DB31B5, myHorse, 0)
            Citizen.InvokeNative(0x4AD96EF928BD4F9A, model)
            Citizen.InvokeNative(0x23f74c2fda6e7c61, -1230993421, myHorse)
            --TaskGoStraightToCoord(myHorse) --Sets the horse blip
            --end
end

RegisterCommand("camp", function(source, args, rawCommand)
    if campfire == 0 then
        print("There is no campfire.")
    else
        SetEntityAsMissionEntity(campfire)
        DeleteObject(campfire)
        campfire = 0
    end
end, false)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if whenKeyJustPressed(keys["DOWN"]) then
            if (hidehud ~= false) then
                hidehud = false
                
                DisplayHud(true)
            else
                hidehud = true
                DisplayHud(false)
                
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if whenKeyJustPressed(keys["LEFT"]) then
            if campfire == 0 then
              print("There is no campfire.")
            else
               SetEntityAsMissionEntity(campfire)
               DeleteObject(campfire)
            campfire = 0
            end
        end
    end
end)
