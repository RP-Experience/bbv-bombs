QBCore = QBCore or nil
ESX    = ESX or nil

if GetResourceState('qb-core') == 'started' then
    local ok, obj = pcall(function()
        return exports['qb-core']:GetCoreObject()
    end)
    if ok and obj then QBCore = obj end
end

if GetResourceState('es_extended') == 'started' then
    local ok, obj = pcall(function()
        return exports['es_extended']:getSharedObject()
    end)
    if ok and obj then
        ESX = obj
    else
        pcall(function()
            TriggerEvent('esx:getSharedObject', function(obj2)
                ESX = obj2
            end)
        end)
    end
end
