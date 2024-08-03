if GetResourceState('es_extended') ~= 'started' then return end

local ESX = exports["es_extended"]:getSharedObject()

function get_players()
    return ESX.GetExtendedPlayers()
end