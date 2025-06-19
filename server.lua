local playerTimers = {}

function isExempt(src)
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer then
        for _, group in ipairs(Config.ExemptGroups) do
            if xPlayer.getGroup and xPlayer.getGroup() == group then
                return true
            end
        end
    end
    return false
end

RegisterNetEvent("anti-afk:heartbeat")
AddEventHandler("anti-afk:heartbeat", function(lastInput)
    local src = source
    if isExempt(src) then return end

    if not playerTimers[src] then
        playerTimers[src] = {lastInput = lastInput, warned = false}
    else
        playerTimers[src].lastInput = lastInput
        playerTimers[src].warned = false
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000)
        local now = GetGameTimer()
        for src, data in pairs(playerTimers) do
            local afkTime = (now - data.lastInput) / 1000
            if afkTime >= Config.AFKTimeout then
                DropPlayer(src, Config.KickMessage)
                print(("Player %s kicked for AFK"):format(src))
                playerTimers[src] = nil
            elseif afkTime >= Config.InitialWarning and not data.warned then
                TriggerClientEvent("anti-afk:warn", src, Config.AFKTimeout - math.floor(afkTime))
                playerTimers[src].warned = true
            end
        end
    end
end)

AddEventHandler("playerDropped", function()
    playerTimers[source] = nil
end)