--- gare and tp

Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('list', "Gare Express")
    WarMenu.SetSubTitle('list', 'Prendre le train')
    WarMenu.CreateSubMenu('dest', 'list', 'Destination')


    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('list') then

            if WarMenu.MenuButton('Destination', 'dest') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('dest') then
            if WarMenu.Button('Armadillo') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        SetEntityCoords(PlayerPedId(), -3727.877, -2605.543, -12.937)   
            elseif WarMenu.Button('Valentine') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        SetEntityCoords(PlayerPedId(), -174.15, 633.26, 114.00) 
            end

            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, -3727.877, -2605.543, -12.937) < 2.0) then
            WarMenu.OpenMenu('list')
            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, -174.15, 633.26, 114.00) < 2.0) then
            WarMenu.OpenMenu('list')
        end

        Citizen.Wait(0)
    end
end)

-- armureries

Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('arme', "Armurerie")
    WarMenu.SetSubTitle('arme', 'Acheter une arme')
    WarMenu.CreateSubMenu('tipe', 'arme', 'Revolver disponible')
    WarMenu.CreateSubMenu('tipe1', 'arme', 'Carabine disponible')


    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('arme') then

            if WarMenu.MenuButton('Revolver', 'tipe') then
            end

            if WarMenu.MenuButton('Carabine', 'tipe1') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('tipe') then

            if WarMenu.Button('Revolver automatique') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_PISTOL_SEMIAUTO"), 500, true, 0)
            elseif WarMenu.Button('Revolver Cattleman') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_REVOLVER_CATTLEMAN"), 500, true, 0)
            elseif WarMenu.Button('Revolver jhon') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_REVOLVER_CATTLEMAN_JOHN"), 500, true, 0)
            elseif WarMenu.Button('Revolver Mexique') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_REVOLVER_CATTLEMAN_MEXICAN"), 500, true, 0)
            elseif WarMenu.Button('Revolver Leman') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_REVOLVER_LEMAT"), 500, true, 0)
            end

            WarMenu.Display()

            elseif WarMenu.IsMenuOpened('tipe1') then
 
            if WarMenu.Button('Carabine Rifle') then                           
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_RIFLE_BOLTACTION"), 500, true, 0)
            elseif WarMenu.Button('Carabine semi-auto') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_SHOTGUN_SEMIAUTO"), 500, true, 0)
            elseif WarMenu.Button('Carabine Rollingblock') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_SNIPERRIFLE_ROLLINGBLOCK"), 500, true, 0)
            elseif WarMenu.Button('Carabine Exotic') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_SNIPERRIFLE_ROLLINGBLOCK_EXOTIC"), 500, true, 0)
            elseif WarMenu.Button('Carabine Doublebarrel') then
                        TriggerServerEvent("job:buyweapon", 1) 
                        Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_SHOTGUN_DOUBLEBARREL"), 500, true, 0)
            end

            WarMenu.Display()
        elseif (Vdist(coords.x, coords.y, coords.z, -282.36, 780.79, 119.52) < 1.0) then --f6
            WarMenu.OpenMenu('arme')
        end

        Citizen.Wait(0)
    end
end)

-- tenue

Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('tenu', "Vetements")
    WarMenu.SetSubTitle('tenu', 'Acheter une Tenue')
    WarMenu.CreateSubMenu('tail', 'tenu', 'Tenue disponible')
    WarMenu.CreateSubMenu('tail1', 'tenu', 'Tenue disponible')
    WarMenu.CreateSubMenu('tail2', 'tenu', 'Perso disponible')


    while true do

        local ped = GetPlayerPed(-1)
        local coords = GetEntityCoords(PlayerPedId())
        local model = GetHashKey("mp_male")
        local player = PlayerId()

        if WarMenu.IsMenuOpened('tenu') then

            if WarMenu.MenuButton('Perso Online', 'tail2') then 
            end

            if WarMenu.MenuButton('Tenues Arthur', 'tail') then
            end

            if WarMenu.MenuButton('Tenues Jonathan', 'tail1') then
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('tail') then
            if WarMenu.Button('Mantau hiver 1 $') then
                TriggerServerEvent("job:buyweapon", 0) 
                SetPedOutfitPreset(PlayerPedId(), 2, 1)   
            elseif WarMenu.Button('Veste en peau 1 $') then
                TriggerServerEvent("job:buyweapon", 1) 
                SetPedOutfitPreset(PlayerPedId(), 3, 1)
            elseif WarMenu.Button('Costume chick 2 $') then
                TriggerServerEvent("job:buyweapon", 2) 
                SetPedOutfitPreset(PlayerPedId(), 4, 1)
            elseif WarMenu.Button('Veste Elegante 1.5 $') then
                TriggerServerEvent("job:buyweapon", 1.5) 
                SetPedOutfitPreset(PlayerPedId(), 5, 1)
            elseif WarMenu.Button('Veste Elegante 1.4 $') then
                TriggerServerEvent("job:buyweapon", 1.4) 
                SetPedOutfitPreset(PlayerPedId(), 6, 1)
            elseif WarMenu.Button('Civil chemise 0.5 $') then
                TriggerServerEvent("job:buyweapon", 0.5) 
                SetPedOutfitPreset(PlayerPedId(), 7, 1)
            elseif WarMenu.Button('Civil chemisette 0.5 $') then
                TriggerServerEvent("job:buyweapon", 2) 
                SetPedOutfitPreset(PlayerPedId(), 8, 1)
            elseif WarMenu.Button('CowBoy 1 $') then
                TriggerServerEvent("job:buyweapon", 1) 
                SetPedOutfitPreset(PlayerPedId(), 9, 1)
            elseif WarMenu.Button('Sans botte 0.2 $') then
                TriggerServerEvent("job:buyweapon", 0.2) 
                SetPedOutfitPreset(PlayerPedId(), 10, 1)
            elseif WarMenu.Button('Sacoche 0.4 $') then
                TriggerServerEvent("job:buyweapon", 0.4) 
                SetPedOutfitPreset(PlayerPedId(), 11, 1)
            elseif WarMenu.Button('Chaine 0.1') then
                TriggerServerEvent("job:buyweapon", 0.1) 
                SetPedOutfitPreset(PlayerPedId(), 12, 1)
            elseif WarMenu.Button('Cowboy Classe 3 $') then
                TriggerServerEvent("job:buyweapon", 3) 
                SetPedOutfitPreset(PlayerPedId(), 13, 1)
            elseif WarMenu.Button('Tous nu 0 $') then
                TriggerServerEvent("job:buyweapon", 0) 
                SetPedOutfitPreset(PlayerPedId(), 14, 1)
            elseif WarMenu.Button('Foue 0.6 $') then
                TriggerServerEvent("job:buyweapon", 0.6) 
                SetPedOutfitPreset(PlayerPedId(), 15, 1)
            elseif WarMenu.Button('Policier 2 $') then
                TriggerServerEvent("job:buyweapon", 2) 
                SetPedOutfitPreset(PlayerPedId(), 16, 1)
            elseif WarMenu.Button('Cowboy rich 5 $') then
                TriggerServerEvent("job:buyweapon", 5) 
                SetPedOutfitPreset(PlayerPedId(), 18, 1)
            elseif WarMenu.Button('Cowboy cuir 7 $') then
                TriggerServerEvent("job:buyweapon", 7) 
                SetPedOutfitPreset(PlayerPedId(), 19, 1)
            elseif WarMenu.Button('Fermier 0.6 $') then
                TriggerServerEvent("job:buyweapon", 0.6) 
                SetPedOutfitPreset(PlayerPedId(), 20, 1)
            elseif WarMenu.Button('Fermier classe 1 $') then
                TriggerServerEvent("job:buyweapon", 1) 
                SetPedOutfitPreset(PlayerPedId(), 21, 1)
            elseif WarMenu.Button('Civil mantau 3$') then
                TriggerServerEvent("job:buyweapon", 3) 
                SetPedOutfitPreset(PlayerPedId(), 22, 1)
            elseif WarMenu.Button('Fermier cuir 2 $') then
                TriggerServerEvent("job:buyweapon", 2) 
                SetPedOutfitPreset(PlayerPedId(), 23, 1)
            elseif WarMenu.Button('Cowboy pauvre 0 $') then
                TriggerServerEvent("job:buyweapon", 0) 
                SetPedOutfitPreset(PlayerPedId(), 24, 1)
            elseif WarMenu.Button('Costume veste 3.2 $') then
                TriggerServerEvent("job:buyweapon", 3.2) 
                SetPedOutfitPreset(PlayerPedId(), 26, 1)
            elseif WarMenu.Button('Bolero 3 $') then
                TriggerServerEvent("job:buyweapon", 3) 
                SetPedOutfitPreset(PlayerPedId(), 27, 1)
            elseif WarMenu.Button('Cowboy Nice 4 $') then
                TriggerServerEvent("job:buyweapon", 4) 
                SetPedOutfitPreset(PlayerPedId(), 28, 1)
            elseif WarMenu.Button('Cowboy Chaps 3.2 $') then
                TriggerServerEvent("job:buyweapon", 3.2) 
                SetPedOutfitPreset(PlayerPedId(), 29, 1)
            elseif WarMenu.Button('Cowboy 3 $') then
                TriggerServerEvent("job:buyweapon", 3) 
                SetPedOutfitPreset(PlayerPedId(), 30, 1)
            elseif WarMenu.Button('Cowboy Bordeau 4 $') then
                TriggerServerEvent("job:buyweapon", 4) 
                SetPedOutfitPreset(PlayerPedId(), 31, 1)
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('tail1') then   
            if WarMenu.Button('Veste 1$') then
                TriggerServerEvent("job:buyweapon", 1) 
                SetPedOutfitPreset(PlayerPedId(), 17, 1)
            elseif WarMenu.Button('Veste 1$') then
                TriggerServerEvent("job:buyweapon", 1) 
                SetPedOutfitPreset(PlayerPedId(), 22, 1)
            elseif WarMenu.Button('Sacoche 0.6 $') then
                TriggerServerEvent("job:buyweapon", 0.6) 
                SetPedOutfitPreset(PlayerPedId(), 25, 1)
            end
            WarMenu.Display()

        elseif (Vdist(coords.x, coords.y, coords.z, -322.25, 803.97, 116.95) < 1.0) then --f6
            WarMenu.OpenMenu('tenu')
        end

        Citizen.Wait(0)
    end
end)

RegisterNetEvent('cancel')
  AddEventHandler('cancel', function()
    --local ped = source
    local ped = GetPlayerPed(-1)
    SetPedOutfitPreset(PlayerPedId(), 1, 1)
  end)