local container = script.Parent

-- Pengaturan Font
local FONT_RATIO = 0.35
local MIN_SIZE = 10
local MAX_SIZE = 28

-- Pengaturan Background Text
local WIDTH_RATIO = 0.60
local HEIGHT_RATIO = 0.22
local Y_POSITION = 0.88

local function updateButton(button)
	local label = button:FindFirstChildWhichIsA("TextLabel", true)

	if not label then
		return
	end

	label.TextScaled = false
	label.TextWrapped = false

	local function resize()

		-- Font mengikuti tinggi tombol
		label.TextSize = math.clamp(
			button.AbsoluteSize.Y * FONT_RATIO,
			MIN_SIZE,
			MAX_SIZE
		)

		-- Background mengikuti ukuran tombol
		label.AnchorPoint = Vector2.new(0.5, 0.5)

		label.Size = UDim2.new(
			WIDTH_RATIO, 0,
			HEIGHT_RATIO, 0
		)

		label.Position = UDim2.new(
			0.5, 0,
			Y_POSITION, 0
		)
	end

	button:GetPropertyChangedSignal("AbsoluteSize"):Connect(resize)

	resize()
end

for _, obj in ipairs(container:GetDescendants()) do
	if obj:IsA("ImageButton") or obj:IsA("ImageLabel") then
		updateButton(obj)
	end
end