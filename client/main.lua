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
        info = 'PH : 69420 \n help steves touching me',
        location = 'Legion Square',
        job = 'police',
        length = 5000,
        isImportant = false,
    }
    TriggerServerEvent("blk_dispatch:showNotification", callData)
end)