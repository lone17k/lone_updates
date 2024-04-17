
local isNuiOpen = false

RegisterNetEvent('lone:openUpdateNui')
AddEventHandler('lone:openUpdateNui', function(updates)
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = 'loneopenNui',
        servername = Config.Servername,
        date = Config.date,
        updates = updates
    })
    isNuiOpen = true
end)
TriggerEvent('chat:addSuggestion', '/updates', 'Shows the latest updates in the city')

RegisterNUICallback('closeNui', function()
    SetNuiFocus(false, false)
    isNuiOpen = false
end)

RegisterCommand('closeupdates', function()
    if isNuiOpen then
        SetNuiFocus(false, false)
        isNuiOpen = false
    end
end, false)

RegisterNetEvent('receiveUpdateList')
AddEventHandler('receiveUpdateList', function(updates)
    SendNUIMessage({
        type = 'updateList',
        servername = Config.Servername,
        date = Config.date,
        updates = updates
    })
end)
