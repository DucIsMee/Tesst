local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local placeId = game.PlaceId
local jobId = game.JobId

local reconnectTime = 7200

while true do
    task.wait(reconnectTime)

    pcall(function()
        TeleportService:TeleportToPlaceInstance(placeId, jobId, player)
    end)
end
