ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)


RegisterCommand('cevırme', function()
    if PlayerData.job.name == 'police' then
        OpenKcddMenu()
    else
        print('polis değilsin')
    end
end)

function OpenKcddMenu()
    local elements = {
        {label = 'Hastane Önüne Çevirme Kur',   value = 'HastaneOnu'},
        {label = 'Menüyü Kapat',       			value = 'kapat'},

    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'car_actions', {
        title    = 'Çevirme Noktaları',
        align    = 'top-left',
        elements = elements
	}, function(data, menu)
		
        if data.current.value == 'HastaneOnu' then
            menu.close()
            HastaneOnu()
        elseif data.current.value == 'kapat' then
            menu.close()
        end
    end)
end

function HastaneOnu()
    local prop = CreateObject(GetHashKey('prop_barier_conc_01a'), 232.3256, -649.7044, 38.0, true, false, true)
    SetEntityRotation(prop, 0.0, -3.5, 90.0, 0.0,true)

    local prop2 = CreateObject(GetHashKey('prop_barier_conc_01a'), 232.397, -651.7581, 37.88, true, false, true)
    SetEntityRotation(prop2, 0.0, -3.5, 95.0, 0.0,true)

    local prop3 = CreateObject(GetHashKey('prop_barier_conc_01a'), 232.6283, -653.8065, 37.73467, true, false, true)
    SetEntityRotation(prop3, 0.0, -3.5, 97.5, 0.0,true)

    local prop4 = CreateObject(GetHashKey('prop_barier_conc_01a'), 232.9765, -655.8303, 37.62173, true, false, true)
    SetEntityRotation(prop4, 0.0, -3.5, 100.5, 0.0,true)

    local prop5 = CreateObject(GetHashKey('prop_barier_conc_01a'), 233.3144, -657.855, 37.50873, true, false, true)
    SetEntityRotation(prop5, 0.0, -3.5, 97.5, 0.0,true)

    local prop6 = CreateObject(GetHashKey('prop_barier_conc_01a'), 233.1724, -659.807, 37.40006, true, false, true)
    SetEntityRotation(prop6, 0.0, -3.5, 71.5, 0.0,true)

    local prop7 = CreateObject(GetHashKey('prop_barier_conc_05b'), 231.8891, -663.5427, 37.21454, true, false, true)
    SetEntityRotation(prop7, 0.0, -3.5, 70.5, 0.0,true)

    local prop8 = CreateObject(GetHashKey('prop_barier_conc_05b'), 229.8824, -669.0131, 36.85548, true, false, true)
    SetEntityRotation(prop8, 0.0, -3.5, 69.5, 0.0,true)

    local prop9 = CreateObject(GetHashKey('prop_barier_conc_05b'), 227.8315, -674.4603, 36.50368, true, false, true)
    SetEntityRotation(prop9, 0.0, -3.5, 69.5, 0.0,true)

    local prop10 = CreateObject(GetHashKey('prop_air_sechut_01'), 223.1111, -679.5622, 36.00827, true, false, true)
    SetEntityRotation(prop10, 3.4, 0.0, -20.0, 0.0,true)

    local prop11 = CreateObject(GetHashKey('prop_mp_arrow_barrier_01'), 224.0124, -676.4585, 36.45046, true, false, true)
    SetEntityRotation(prop11, -3.4, 0.0, 162.0, 0.0,true)

    local prop12 = CreateObject(GetHashKey('prop_ld_cont_light_01'), 224.8419, -675.2602, 38.90446, true, false, true)
    SetEntityRotation(prop12, 0.0, 0.0, 68.0, 0.0,true)

    local prop13 = CreateObject(GetHashKey('prop_mp_arrow_barrier_01'), 221.9657, -682.9041, 36.02381, true, false, true)
    SetEntityRotation(prop13, 3.4, 0.0, -20.0, 0.0,true)

    local prop14 = CreateObject(GetHashKey('prop_barier_conc_05b'), 226.9401, -661.6912, 37.1219, true, false, true)
    SetEntityRotation(prop14, 0.0, -3.5, 69.5, 0.0,true)

    local prop15 = CreateObject(GetHashKey('prop_barier_conc_05b'), 224.8978, -667.1343, 36.78035, true, false, true)
    SetEntityRotation(prop15, 0.0, -3.5, 69.5, 0.0,true)

    local prop16 = CreateObject(GetHashKey('prop_barier_conc_01a'), 219.2247, -682.7802, 35.68261, true, false, true)
    SetEntityRotation(prop16, 0.0, -3.5, 69.5, 0.0,true)

    local prop17 = CreateObject(GetHashKey('prop_barier_conc_05b'), 217.8863, -686.4539, 35.50527, true, false, true)
    SetEntityRotation(prop17, 0.0, -3.2, 69.5, 0.0,true)

    local prop18 = CreateObject(GetHashKey('prop_barier_conc_05b'), 215.8722, -691.9007, 35.16857, true, false, true)
    SetEntityRotation(prop18, 0.0, -3.1, 69.5, 0.0,true)

    local prop19 = CreateObject(GetHashKey('prop_barier_conc_01a'), 222.2218, -690.2189, 35.40539, true, false, true)
    SetEntityRotation(prop19, 0.0, -3.1, 69.5, 0.0,true)

    local prop20 = CreateObject(GetHashKey('prop_barier_conc_05b'), 220.8713, -693.8829, 35.23995, true, false, true)
    SetEntityRotation(prop20, 0.0, -3.1, 69.5, 0.0,true)

    local prop21 = CreateObject(GetHashKey('prop_mp_cone_04'), 219.7768, -696.8482, 35.06945, true, false, true)
    SetEntityRotation(prop21, 0.0, 0.0, 0.5, 0.0,true)
    FreezeEntityPosition(prop21, true)

    local prop22 = CreateObject(GetHashKey('prop_mp_cone_04'), 228.0555, -658.7339, 37.41191, true, false, true)
    SetEntityRotation(prop22, 0.0, 0.0, 0.5, 0.0,true)
    FreezeEntityPosition(prop22, true)

    local prop23 = CreateObject(GetHashKey('prop_barier_conc_01a'), 214.5243, -695.6018, 34.90036, true, false, true)
    SetEntityRotation(prop23, 0.0, -3.5, 71.5, 0.0,true)

    local prop24 = CreateObject(GetHashKey('prop_barier_conc_01a'), 214.0616, -697.5994, 34.8018, true, false, true)
    SetEntityRotation(prop24, 0.0, -2.5, 81.5, 0.0,true)

    local prop25 = CreateObject(GetHashKey('prop_barier_conc_01a'), 213.987, -699.640, 34.70396, true, false, true)
    SetEntityRotation(prop25, 0.0, -2.5, 93.5, 0.0,true)

    local prop26 = CreateObject(GetHashKey('prop_barier_conc_01a'), 214.2178, -701.6307, 34.61042, true, false, true)
    SetEntityRotation(prop26, 0.0, -3.5, 99.5, 0.0,true)

    local prop27 = CreateObject(GetHashKey('prop_barier_conc_01a'), 214.5943, -703.6635, 34.52282, true, false, true)
    SetEntityRotation(prop27, 0.0, -2.5, 99.5, 0.0,true)

    local prop28 = CreateObject(GetHashKey('prop_barier_conc_01a'), 214.9124, -705.6918, 34.42231, true, false, true)
    SetEntityRotation(prop28, 0.0, -3.5, 96.5, 0.0,true)

    local prop29 = CreateObject(GetHashKey('prop_barier_conc_01a'), 215.1652, -707.7621, 34.32381, true, false, true)
    SetEntityRotation(prop29, 0.0, -1.5, 96.5, 0.0,true)

    local prop30 = CreateObject(GetHashKey('prop_mp_cone_04'), 215.2566, -708.9705, 34.40109, true, false, true)
    SetEntityRotation(prop30, 0.0, 0.0, 0.5, 0.0,true)
    FreezeEntityPosition(prop30, true)

    local prop31 = CreateObject(GetHashKey('prop_barier_conc_05b'), 234.0435, -698.7766, 35.19141, true, false, true)
    SetEntityRotation(prop31, 0.0, 1.0, 156.5, 0.0,true)

    local prop32 = CreateObject(GetHashKey('prop_barier_conc_05b'), 210.8375, -660.011, 36.90891, true, false, true)
    SetEntityRotation(prop32, 0.0, 0.0, 156.5, 0.0,true)

    -- local prop33 = CreateObject(GetHashKey('xs_prop_arena_spikes_02a'), 219.6831, -663.5052, 36.70, true, false, true)
    -- SetEntityRotation(prop33, 0.0, -1.0, -20.0, 0.0,true)

    -- local prop34 = CreateObject(GetHashKey('xs_prop_arena_spikes_02a'), 226.0153, -695.7939, 34.950494, true, false, true)
    -- SetEntityRotation(prop34, 0.0, -1.0, 160.0, 0.0,true)
    print('create')
end

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end

function playerAnim()
	loadAnimDict('random@domestic')
    TaskPlayAnim(PlayerPedId(), 'random@domestic', 'pickup_low', 8.0, -8, -1, 48, 0, 0, 0, 0)
    -- Citizen.Wait(1000)
end

RegisterNetEvent('Spike')
AddEventHandler('Spike', function()
    local ped = PlayerPedId()
    local coords, forward = GetEntityCoords(ped), GetEntityForwardVector(ped)
    local objectCoords = (coords + forward * 1.0)

    playerAnim()
    Citizen.Wait(500)
    ESX.Game.SpawnObject('p_ld_stinger_s', objectCoords, function(obj)
        SetEntityHeading(obj, GetEntityHeading(ped))
        PlaceObjectOnGroundProperly(obj)
    end)
end)

RegisterCommand('spike', function(source)
    if PlayerData.job.name == 'police' then
        
        TriggerEvent('Spike')
    else
        TriggerEvent('sup-notif', 'Polis değilsiniz.', 2)
    end
end)
