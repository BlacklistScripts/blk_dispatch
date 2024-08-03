RegisterNetEvent("blk_dispatch:showNotification", function(data)
    local players = get_players()
    for _, xPlayer in pairs(players) do
      src = xPlayer.PlayerData.source
      if xPlayer.PlayerData.job.name == data.job then
		    TriggerClientEvent('blk_dispatch:showNotification', src, data)
      end
    end
end)