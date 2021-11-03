local key = Enum.KeyCode.LeftAlt 
local y = Instance.new("Part")
y.Size = Vector3.new(4,1,4)
y.Material = Enum.Material.Neon
y.Transparency = 0.95
y.Anchored = true

local r = game:GetService("RunService")
local c = game:GetService("ContextActionService")
local p = game:GetService("Players").LocalPlayer
local d = game:GetService("Debris")

function xyz(actionName,inputState,inputObj)
    if inputState == Enum.UserInputState.Begin then
        r:BindToRenderStep("xyz",1,function()
            local x = y:Clone()
            x.Color = Color3.fromHSV(tick()%1,1,1)
            x.CFrame = p.Character.HumanoidRootPart.CFrame - Vector3.new(0,3.5)
            x.Parent = workspace
            d:AddItem(x,3)
        end)
    end
    if inputState == Enum.UserInputState.End then
        r:UnbindFromRenderStep("xyz")
    end
end
c:BindAction("xyz",xyz,false,key)