if GetResourceState('qb-core') ~= 'started' then return end

local QBCore = exports['qb-core']:GetCoreObject()

function get_players()
    return QBCore.Functions.GetQBPlayers()
end