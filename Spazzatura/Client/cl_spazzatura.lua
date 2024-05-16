local ox = exports.ox_inventory

for k, v in ipairs(Config.Cestini) do
    local ped = PlayerPedId()

    RequestModel(Config.prop)
    while not HasModelLoaded(Config.prop) do
        Wait(500)
    end

    local coords = vector3(v.coords.x, v.coords.y, v.coords.z - 1)

    local prop = CreateObject(Config.prop, coords, true, false, false)

    FreezeEntityPosition(prop, true)


    TriggerEvent('gridsystem:registerMarker', {
        name = 'spazzatura' ..k,
        pos = vector3(v.coords.x - 1, v.coords.y, v.coords.z),
        scale = vector3(0.3, 0.3, 0.3),
        msg = 'SPAZZATURA',
        control = 'E',
        type = 2,
        color = { r = 0, g = 0, b = 0 },
        action = function()
            TriggerServerEvent('buongiornodev:svuotaspazzatura')
        end,
      }) 
end