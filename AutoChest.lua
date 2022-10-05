repeat wait() until game:IsLoaded()
wait(10)
local Folder = game:GetService("Workspace").Maps["Plasma Ruins"].Chests
Folder.ChildAdded:Connect(function()
    if #Folder:GetChildren() == 1 then
        for i,v in pairs(game.Workspace.Maps:FindFirstChild("Plasma Ruins"):GetDescendants()) do if v.Name == "PlasmaChest" or v.Name == "WoodSilver" then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:GetModelCFrame() end end
    end
end)
Folder.ChildRemoved:Connect(function()
    if #Folder:GetChildren() == 0 then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-259, 513, -9021)) 
    end
end)