-- sorry for the messy code, i rushed this!!

local Module = {}

local Array = Instance.new("ScreenGui")
local Side = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Title = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Text = Instance.new("TextLabel")
local TitleShadow = Instance.new("ImageLabel")
local Placeholder = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Text_2 = Instance.new("TextLabel")
local TitleShadow_2 = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")

Array.Name = "Array"
Array.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Array.ZIndexBehavior = Enum.ZIndexBehavior.Global
Array.ResetOnSpawn = false

Side.Name = "Side"
Side.Parent = Array
Side.AnchorPoint = Vector2.new(0.5, 0.5)
Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Side.BackgroundTransparency = 1.000
Side.BorderColor3 = Color3.fromRGB(0, 0, 0)
Side.BorderSizePixel = 0
Side.Position = UDim2.new(0.0791160837, 0, 0.5, 0)
Side.Size = UDim2.new(0.140771821, 0, 1, 0)

UIListLayout.Parent = Side
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 1)

Title.Name = "Title"
Title.Parent = Side
Title.Active = true
Title.AnchorPoint = Vector2.new(0.5, 0.5)
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 0.400
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.44453001, 0, 0.0335254818, 0)
Title.Size = UDim2.new(0.88906002, 0, 0.0670509636, 0)

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Title

Text.Name = "Text"
Text.Parent = Title
Text.AnchorPoint = Vector2.new(0.5, 0.5)
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.494721472, 0, 0.481097758, 0)
Text.Size = UDim2.new(0.881632388, 0, 0.534553051, 0)
Text.Font = Enum.Font.RobotoMono
Text.Text = "Clientsided - V2"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 17.000
Text.TextWrapped = true

TitleShadow.Name = "TitleShadow"
TitleShadow.Parent = Title
TitleShadow.AnchorPoint = Vector2.new(0.5, 0.5)
TitleShadow.BackgroundTransparency = 1.000
TitleShadow.Position = UDim2.new(0.5, 0, 0.5, 2)
TitleShadow.Size = UDim2.new(1, 127, 1, 127)
TitleShadow.ZIndex = -1
TitleShadow.Image = "rbxassetid://12817543352"
TitleShadow.ImageTransparency = 0.500
TitleShadow.ScaleType = Enum.ScaleType.Slice
TitleShadow.SliceCenter = Rect.new(85, 85, 427, 427)

Placeholder.Name = "Placeholder"
Placeholder.Parent = Side
Placeholder.Active = true
Placeholder.AnchorPoint = Vector2.new(0.5, 0.5)
Placeholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Placeholder.BackgroundTransparency = 0.250
Placeholder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Placeholder.BorderSizePixel = 0
Placeholder.Position = UDim2.new(0.33044979, 0, 0.0978818685, 0)
Placeholder.Size = UDim2.new(0.66089958, 0, 0.0580903888, 0)

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = Placeholder

Text_2.Name = "Text"
Text_2.Parent = Placeholder
Text_2.AnchorPoint = Vector2.new(0.5, 0.5)
Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_2.BackgroundTransparency = 1.000
Text_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text_2.BorderSizePixel = 0
Text_2.Position = UDim2.new(0.498530447, 0, 0.497439981, 0)
Text_2.Size = UDim2.new(0.80606389, 0, 0.524457574, 0)
Text_2.Font = Enum.Font.RobotoMono
Text_2.Text = "Placeholder"
Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_2.TextSize = 17.000
Text_2.TextWrapped = true

TitleShadow_2.Name = "TitleShadow"
TitleShadow_2.Parent = Placeholder
TitleShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
TitleShadow_2.BackgroundTransparency = 1.000
TitleShadow_2.Position = UDim2.new(0.5, 0, 0.5, 2)
TitleShadow_2.Size = UDim2.new(1, 127, 1, 127)
TitleShadow_2.ZIndex = -1
TitleShadow_2.Image = "rbxassetid://12817543352"
TitleShadow_2.ImageTransparency = 0.500
TitleShadow_2.ScaleType = Enum.ScaleType.Slice
TitleShadow_2.SliceCenter = Rect.new(85, 85, 427, 427)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 15, 15)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
UIGradient.Rotation = 90
UIGradient.Parent = Placeholder

local function arraylist()
	local addModule = {}
	local TextService = game:GetService("TextService")
	local MAX_BOUNDS = Vector2.new(1e5, 1e5)

	Placeholder.Visible = false

	local function clone(instance: Instance, parent: any?)
		assert(instance, "failed to clone, no instance provided.")

		local newClone = instance:Clone()
		if not newClone then
			warn("failed to clone, cloned instance was not found.")
			return
		end

		if parent then
			newClone.Parent = parent
		end

		return newClone
	end

	local function getFont(item: GuiLabel)
		assert(item)

		for _, font in pairs(Enum.Font:GetEnumItems()) do
			if item.Font.Name == font.Name then
				return font.Name
			else
				continue
			end
		end

		return nil
	end

	local function resizeArray(item: Frame, extraPadding: number?)
		local textLabel = item:FindFirstChild("Text") :: TextLabel
		if not textLabel then return end

		local textSize = TextService:GetTextSize(
			textLabel.Text,
			textLabel.TextSize,
			getFont(textLabel),
			MAX_BOUNDS
		)

		local newPadding = if extraPadding then extraPadding else 25

		item.Size = UDim2.new(0, textSize.X + newPadding, item.Size.Y.Scale, item.Size.Y.Offset)
	end

	local function resizeText(item: TextLabel)
		local text = item.Text
		local fontSize = item.TextSize
		local font = getFont(item)

		local textSize = TextService:GetTextSize(text, fontSize, font, MAX_BOUNDS)

		item.Size = UDim2.new(0, textSize.X, 0, textSize.Y)
	end

	function addModule.title(text: string)
		assert(text)

		local Text = Title:FindFirstChild("Text")
		Text.Text = text

		resizeText(Text)
		resizeArray(Title, 20)
	end

	function addModule.new(data: { name: string })
		if not data then
			return
		end

		local Name = data.name

		local newArray = clone(Placeholder, Side) :: Instance
		local textArray = newArray.Text

		newArray.Name = Name
		textArray.Text = Name

		newArray.Visible = true

		resizeText(textArray)
		resizeArray(newArray)

		return newArray
	end

	function addModule.updText(data: { array: Instance, newText: string })
		assert(data)

		local Array = data.array
		if Array then
			local arrayText = Array.Text
			arrayText.Text = data.newText

			resizeText(arrayText)
			resizeArray(Array)
		else
			return false
		end

		return true
	end
	
	function addModule.Toggle(array: Instance)
		assert(array)
		
		array.Visible = not array.Visible
	end

	return addModule
end

return arraylist
