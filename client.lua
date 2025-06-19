local lastInput = GetGameTimer()
local warned = false

RegisterNetEvent("anti-afk:warn")
AddEventHandler("anti-afk:warn", function(seconds)
    TriggerEvent("chat:addMessage", {
        args = {string.format(Config.WarningMessage, seconds)}
    })
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if IsControlJustPressed(0, 1) or IsControlJustPressed(0, 2) or IsPedMoving(GetPlayerPed(-1)) then
            lastInput = GetGameTimer()
        end
        TriggerServerEvent("anti-afk:heartbeat", lastInput)
    end
end)