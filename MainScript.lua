local UserInputService = game:GetService("UserInputService")
local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
local walkSpeed = humanoid.WalkSpeed
local runSpeed = 50

local function onInputBegan(input, gameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.Q then
		humanoid.WalkSpeed = runSpeed
	end
end

local function onInputEnded(input, gameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.Q then
		humanoid.WalkSpeed = walkSpeed
	end
end

UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)
