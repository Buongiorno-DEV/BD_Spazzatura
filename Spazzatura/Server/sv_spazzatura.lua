local ox = exports.ox_inventory

RegisterNetEvent('buongiornodev:svuotaspazzatura', function()
    local player = Player(source).state
    local spazzatura = exports.ox_inventory:CreateTemporaryStash({
        label = 'Spazzatura',
        slots = Config.SlotMassimiSpazzatura,
        maxWeight = Config.PesoMassimoSpazzatura,
    })
    TriggerClientEvent('ox_inventory:openInventory', 1, 'stash', spazzatura)
end)
