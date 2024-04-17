

RegisterCommand('updates', function(source, args, rawCommand)
    local playerId = source
    TriggerClientEvent('lone:openUpdateNui', playerId, Config.updates)
end, false)



RegisterNetEvent('requestUpdateList')
AddEventHandler('requestUpdateList', function()
    TriggerClientEvent('receiveUpdateList', source, Config.updates)
end)
