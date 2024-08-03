RegisterNetEvent('blk_dispatch:showNotification', function(data)
    SendNUIMessage({
        alert = true,
        data = data
    })
end)

RegisterCommand('dispatchTest', function()
    local callData = {
        badge = 'ESTA',
        title = '000 Call',
        info = 'Test call info',
        location = 'Test call location',
        job = 'police',
        length = 5000,
        isImportant = false,
    }
    TriggerServerEvent("blk_dispatch:showNotification", callData)
end)