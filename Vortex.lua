--[[

███████╗██╗░░░░░██╗░░░██╗███████╗███╗░░██╗████████╗  ██████╗░██╗░░░░░██╗░░░██╗░██████╗
██╔════╝██║░░░░░██║░░░██║██╔════╝████╗░██║╚══██╔══╝  ██╔══██╗██║░░░░░██║░░░██║██╔════╝
█████╗░░██║░░░░░██║░░░██║█████╗░░██╔██╗██║░░░██║░░░  ██████╔╝██║░░░░░██║░░░██║╚█████╗░
██╔══╝░░██║░░░░░██║░░░██║██╔══╝░░██║╚████║░░░██║░░░  ██╔═══╝░██║░░░░░██║░░░██║░╚═══██╗
██║░░░░░███████╗╚██████╔╝███████╗██║░╚███║░░░██║░░░  ██║░░░░░███████╗╚██████╔╝██████╔╝
╚═╝░░░░░╚══════╝░╚═════╝░╚══════╝╚═╝░░╚══╝░░░╚═╝░░░  ╚═╝░░░░░╚══════╝░╚═════╝░╚═════╝░

A modified version of Fluent
github.com/discoart/FluentPlus | dsc.gg/hydrahub

]]

--- button
local Show_Button = false
local Button_Icon = ""
---

local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TextService = game:GetService("TextService")
local Camera = game:GetService("Workspace").CurrentCamera
local Mouse = LocalPlayer:GetMouse()
local httpService = game:GetService("HttpService")

local Mobile
if RunService:IsStudio() then
	Mobile = false
else
	Mobile = table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) ~= nil
end

if Show_Button then
	Mobile = true

local fischbypass

if game.GameId == 5750914919 then
	fischbypass = true

local RenderStepped = RunService.RenderStepped

local ProtectGui = protectgui or (syn and syn.protect_gui) or function() end

local Themes = {
	Names = {
		"Dark",
		"Darker", 
		"AMOLED",
		"Light",
		"Balloon",
		"SoftCream",
		"Aqua", 
		"Amethyst",
		"Rose",
		"Midnight",
		"Forest",
		"Sunset", 
		"Ocean",
		"Emerald",
		"Sapphire",
		"Cloud",
		"Grape",
		"Bloody",
		"Arctic"
	},
	Dark = {
		Name = "Dark",
		Accent = Color3.fromRGB(96, 205, 255),
		AcrylicMain = Color3.fromRGB(60, 60, 60),
		AcrylicBorder = Color3.fromRGB(90, 90, 90),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(40, 40, 40)),
		AcrylicNoise = 0.9,
		TitleBarLine = Color3.fromRGB(75, 75, 75),
		Tab = Color3.fromRGB(120, 120, 120),
		Element = Color3.fromRGB(120, 120, 120),
		ElementBorder = Color3.fromRGB(35, 35, 35),
		InElementBorder = Color3.fromRGB(90, 90, 90),
		ElementTransparency = 0.87,
		ToggleSlider = Color3.fromRGB(120, 120, 120),
		ToggleToggled = Color3.fromRGB(42, 42, 42),
		SliderRail = Color3.fromRGB(120, 120, 120),
		DropdownFrame = Color3.fromRGB(160, 160, 160),
		DropdownHolder = Color3.fromRGB(45, 45, 45),
		DropdownBorder = Color3.fromRGB(35, 35, 35),
		DropdownOption = Color3.fromRGB(120, 120, 120),
		Keybind = Color3.fromRGB(120, 120, 120),
		Input = Color3.fromRGB(160, 160, 160),
		InputFocused = Color3.fromRGB(10, 10, 10),
		InputIndicator = Color3.fromRGB(150, 150, 150),
		Dialog = Color3.fromRGB(45, 45, 45),
		DialogHolder = Color3.fromRGB(35, 35, 35),
		DialogHolderLine = Color3.fromRGB(30, 30, 30),
		DialogButton = Color3.fromRGB(45, 45, 45),
		DialogButtonBorder = Color3.fromRGB(80, 80, 80),
		DialogBorder = Color3.fromRGB(70, 70, 70),
		DialogInput = Color3.fromRGB(55, 55, 55),
		DialogInputLine = Color3.fromRGB(160, 160, 160),
		Text = Color3.fromRGB(240, 240, 240),
		SubText = Color3.fromRGB(170, 170, 170),
		Hover = Color3.fromRGB(120, 120, 120),
		HoverChange = 0.07,
	Darker = {
		Name = "Darker",
		Accent = Color3.fromRGB(56, 109, 223),
		AcrylicMain = Color3.fromRGB(30, 30, 30),
		AcrylicBorder = Color3.fromRGB(60, 60, 60),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(17, 17, 17), Color3.fromRGB(18, 18, 18)),
		AcrylicNoise = 0.94,
		TitleBarLine = Color3.fromRGB(65, 65, 65),
		Tab = Color3.fromRGB(100, 100, 100),
		Element = Color3.fromRGB(70, 70, 70),
		ElementBorder = Color3.fromRGB(25, 25, 25),
		InElementBorder = Color3.fromRGB(55, 55, 55),
		ElementTransparency = 0.82,
		DropdownFrame = Color3.fromRGB(120, 120, 120),
		DropdownHolder = Color3.fromRGB(35, 35, 35),
		DropdownBorder = Color3.fromRGB(25, 25, 25),
		Dialog = Color3.fromRGB(35, 35, 35),
		DialogHolder = Color3.fromRGB(25, 25, 25),
		DialogHolderLine = Color3.fromRGB(20, 20, 20),
		DialogButton = Color3.fromRGB(35, 35, 35),
		DialogButtonBorder = Color3.fromRGB(55, 55, 55),
		DialogBorder = Color3.fromRGB(50, 50, 50),
		DialogInput = Color3.fromRGB(45, 45, 45),
		DialogInputLine = Color3.fromRGB(120, 120, 120),
	AMOLED = {
		Name = "AMOLED",
		Accent = Color3.fromRGB(255, 255, 255),
		AcrylicMain = Color3.fromRGB(0, 0, 0),
		AcrylicBorder = Color3.fromRGB(20, 20, 20),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0)),
		AcrylicNoise = 1,
		TitleBarLine = Color3.fromRGB(25, 25, 25),
		Tab = Color3.fromRGB(40, 40, 40),
		Element = Color3.fromRGB(15, 15, 15),
		ElementBorder = Color3.fromRGB(0, 0, 0),
		InElementBorder = Color3.fromRGB(40, 40, 40),
		ElementTransparency = 0.95,
		ToggleSlider = Color3.fromRGB(40, 40, 40),
		ToggleToggled = Color3.fromRGB(255, 255, 255),
		SliderRail = Color3.fromRGB(40, 40, 40),
		DropdownFrame = Color3.fromRGB(20, 20, 20),
		DropdownHolder = Color3.fromRGB(0, 0, 0),
		DropdownBorder = Color3.fromRGB(0, 0, 0),
		DropdownOption = Color3.fromRGB(40, 40, 40),
		Keybind = Color3.fromRGB(40, 40, 40),
		Input = Color3.fromRGB(40, 40, 40),
		InputFocused = Color3.fromRGB(0, 0, 0),
		InputIndicator = Color3.fromRGB(60, 60, 60),
		InputIndicatorFocus = Color3.fromRGB(255, 255, 255),
		Dialog = Color3.fromRGB(0, 0, 0),
		DialogHolder = Color3.fromRGB(0, 0, 0),
		DialogButton = Color3.fromRGB(15, 15, 15),
		DialogButtonBorder = Color3.fromRGB(30, 30, 30),
		DialogBorder = Color3.fromRGB(27, 27, 27),
		DialogInput = Color3.fromRGB(15, 15, 15),
		DialogInputLine = Color3.fromRGB(60, 60, 60),
		Text = Color3.fromRGB(255, 255, 255),
		Hover = Color3.fromRGB(40, 40, 40),
		HoverChange = 0.04
	Light = {
		Name = "Light",
		Accent = Color3.fromRGB(0, 103, 192),
		AcrylicMain = Color3.fromRGB(200, 200, 200),
		AcrylicBorder = Color3.fromRGB(120, 120, 120),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255)),
		AcrylicNoise = 0.96,
		TitleBarLine = Color3.fromRGB(160, 160, 160),
		Tab = Color3.fromRGB(90, 90, 90),
		Element = Color3.fromRGB(255, 255, 255),
		ElementBorder = Color3.fromRGB(180, 180, 180),
		InElementBorder = Color3.fromRGB(150, 150, 150),
		ElementTransparency = 0.65,
		DropdownFrame = Color3.fromRGB(200, 200, 200),
		DropdownHolder = Color3.fromRGB(240, 240, 240),
		DropdownBorder = Color3.fromRGB(200, 200, 200),
		DropdownOption = Color3.fromRGB(150, 150, 150),
		Input = Color3.fromRGB(200, 200, 200),
		InputFocused = Color3.fromRGB(100, 100, 100),
		InputIndicator = Color3.fromRGB(80, 80, 80),
		InputIndicatorFocus = Color3.fromRGB(0, 103, 192),
		Dialog = Color3.fromRGB(255, 255, 255),
		DialogHolder = Color3.fromRGB(240, 240, 240),
		DialogHolderLine = Color3.fromRGB(228, 228, 228),
		DialogButton = Color3.fromRGB(255, 255, 255),
		DialogButtonBorder = Color3.fromRGB(190, 190, 190),
		DialogBorder = Color3.fromRGB(140, 140, 140),
		DialogInput = Color3.fromRGB(250, 250, 250),
		Text = Color3.fromRGB(0, 0, 0),
		SubText = Color3.fromRGB(40, 40, 40),
		Hover = Color3.fromRGB(50, 50, 50),
		HoverChange = 0.16,
	Balloon = {
		Name = "Balloon",
		Accent = Color3.fromRGB(100, 170, 255),
		AcrylicMain = Color3.fromRGB(189, 224, 255),
		AcrylicBorder = Color3.fromRGB(160, 227, 255),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(240, 250, 255), Color3.fromRGB(210, 235, 250)),
		TitleBarLine = Color3.fromRGB(150, 200, 255),
		Tab = Color3.fromRGB(153, 185, 255),
		Element = Color3.fromRGB(160, 200, 255),
		ElementBorder = Color3.fromRGB(130, 170, 230),
		InElementBorder = Color3.fromRGB(120, 174, 240),
		ElementTransparency = 0.80,
		ToggleSlider = Color3.fromRGB(93, 163, 255),
		ToggleToggled = Color3.fromRGB(60, 112, 180),
		SliderRail = Color3.fromRGB(170, 220, 255),
		DropdownFrame = Color3.fromRGB(175, 235, 255),
		DropdownHolder = Color3.fromRGB(200, 220, 240),
		DropdownBorder = Color3.fromRGB(130, 170, 230),
		DropdownOption = Color3.fromRGB(146, 202, 255),
		Keybind = Color3.fromRGB(170, 220, 255),
		Input = Color3.fromRGB(170, 220, 255),
		InputFocused = Color3.fromRGB(75, 95, 140),
		InputIndicator = Color3.fromRGB(190, 250, 255),
		InputIndicatorFocus = Color3.fromRGB(100, 170, 255),
		Dialog = Color3.fromRGB(189, 230, 255),
		DialogHolder = Color3.fromRGB(201, 239, 255),
		DialogHolderLine = Color3.fromRGB(197, 236, 250),
		DialogButton = Color3.fromRGB(219, 252, 255),
		DialogButtonBorder = Color3.fromRGB(160, 200, 255),
		DialogBorder = Color3.fromRGB(175, 220, 255),
		DialogInput = Color3.fromRGB(160, 200, 255),
		DialogInputLine = Color3.fromRGB(185, 230, 255),
		Text = Color3.fromRGB(30, 30, 30),
		SubText = Color3.fromRGB(90, 90, 90),
		Hover = Color3.fromRGB(170, 220, 255),
		HoverChange = 0.03
	SoftCream = {
		Name = "SoftCream",
		Accent = Color3.fromRGB(206, 163, 90),
		AcrylicMain = Color3.fromRGB(255, 245, 220),
		AcrylicBorder = Color3.fromRGB(255, 230, 200),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 245, 220), Color3.fromRGB(255, 235, 210)),
		AcrylicNoise = 0.93,
		TitleBarLine = Color3.fromRGB(255, 220, 190),
		Tab = Color3.fromRGB(199, 165, 112),
		Element = Color3.fromRGB(255, 216, 161),
		ElementBorder = Color3.fromRGB(234, 193, 111),
		InElementBorder = Color3.fromRGB(255, 212, 143),
		ToggleSlider = Color3.fromRGB(214, 175, 97),
		ToggleToggled = Color3.fromRGB(200, 160, 100),
		SliderRail = Color3.fromRGB(255, 220, 190),
		DropdownFrame = Color3.fromRGB(255, 228, 164),
		DropdownHolder = Color3.fromRGB(250, 240, 225),
		DropdownBorder = Color3.fromRGB(255, 210, 180),
		DropdownOption = Color3.fromRGB(255, 190, 115),
		Keybind = Color3.fromRGB(255, 220, 190),
		Input = Color3.fromRGB(255, 220, 190),
		InputFocused = Color3.fromRGB(180, 140, 80),
		InputIndicator = Color3.fromRGB(255, 250, 205),
		InputIndicatorFocus = Color3.fromRGB(255, 236, 158),
		Dialog = Color3.fromRGB(255, 255, 240),
		DialogHolder = Color3.fromRGB(255, 245, 220),
		DialogHolderLine = Color3.fromRGB(255, 240, 210),
		DialogButton = Color3.fromRGB(255, 255, 240),
		DialogButtonBorder = Color3.fromRGB(255, 210, 180),
		DialogBorder = Color3.fromRGB(255, 220, 190),
		DialogInput = Color3.fromRGB(255, 210, 180),
		DialogInputLine = Color3.fromRGB(255, 225, 205),
		Hover = Color3.fromRGB(255, 220, 190),
	Aqua = {
		Name = "Aqua",
		Accent = Color3.fromRGB(38, 166, 178),
		AcrylicMain = Color3.fromRGB(18, 54, 61),
		AcrylicBorder = Color3.fromRGB(80, 118, 130),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(41, 101, 139), Color3.fromRGB(11, 132, 128)),
		AcrylicNoise = 0.92,
		TitleBarLine = Color3.fromRGB(68, 135, 136),
		Tab = Color3.fromRGB(126, 175, 180),
		Element = Color3.fromRGB(66, 130, 160),
		ElementBorder = Color3.fromRGB(40, 100, 122),
		InElementBorder = Color3.fromRGB(75, 109, 110),
		ToggleSlider = Color3.fromRGB(100, 152, 160),
		ToggleToggled = Color3.fromRGB(25, 70, 95),
		SliderRail = Color3.fromRGB(115, 150, 160),
		DropdownFrame = Color3.fromRGB(158, 194, 200),
		DropdownHolder = Color3.fromRGB(39, 99, 116),
		DropdownBorder = Color3.fromRGB(33, 119, 120),
		DropdownOption = Color3.fromRGB(121, 152, 160),
		Keybind = Color3.fromRGB(108, 153, 160),
		Input = Color3.fromRGB(112, 156, 160),
		InputFocused = Color3.fromRGB(14, 35, 40),
		InputIndicator = Color3.fromRGB(137, 181, 190),
		Dialog = Color3.fromRGB(27, 113, 130),
		DialogHolder = Color3.fromRGB(33, 99, 109),
		DialogHolderLine = Color3.fromRGB(34, 81, 86),
		DialogButton = Color3.fromRGB(27, 128, 130),
		DialogButtonBorder = Color3.fromRGB(62, 100, 110),
		DialogBorder = Color3.fromRGB(26, 86, 100),
		DialogInput = Color3.fromRGB(36, 107, 105),
		DialogInputLine = Color3.fromRGB(70, 120, 130),
		Hover = Color3.fromRGB(112, 155, 160),
		HoverChange = 0.04,
	Amethyst = {
		Name = "Amethyst",
		Accent = Color3.fromRGB(126, 44, 182),
		AcrylicMain = Color3.fromRGB(40, 12, 71),
		AcrylicBorder = Color3.fromRGB(85, 45, 120),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(34, 19, 49), Color3.fromRGB(41, 24, 57)),
		TitleBarLine = Color3.fromRGB(95, 55, 130),
		Tab = Color3.fromRGB(135, 75, 170),
		Element = Color3.fromRGB(115, 55, 150),
		ElementBorder = Color3.fromRGB(60, 35, 85),
		InElementBorder = Color3.fromRGB(85, 45, 110),
		ToggleSlider = Color3.fromRGB(135, 65, 160),
		ToggleToggled = Color3.fromRGB(59, 30, 79),
		SliderRail = Color3.fromRGB(135, 65, 160),
		DropdownFrame = Color3.fromRGB(145, 85, 170),
		DropdownHolder = Color3.fromRGB(50, 30, 70),
		DropdownBorder = Color3.fromRGB(60, 35, 85),
		DropdownOption = Color3.fromRGB(135, 65, 160),
		Keybind = Color3.fromRGB(135, 65, 160),
		Input = Color3.fromRGB(135, 65, 160),
		InputFocused = Color3.fromRGB(25, 15, 35),
		InputIndicator = Color3.fromRGB(155, 85, 180),
		InputIndicatorFocus = Color3.fromRGB(126, 44, 182),
		Dialog = Color3.fromRGB(50, 30, 70),
		DialogHolder = Color3.fromRGB(40, 25, 60),
		DialogHolderLine = Color3.fromRGB(35, 20, 55),
		DialogButton = Color3.fromRGB(50, 30, 70),
		DialogButtonBorder = Color3.fromRGB(90, 50, 120),
		DialogBorder = Color3.fromRGB(80, 45, 110),
		DialogInput = Color3.fromRGB(60, 35, 80),
		DialogInputLine = Color3.fromRGB(145, 75, 170),
		Hover = Color3.fromRGB(135, 65, 160),
	Rose = {
		Name = "Rose",
		Accent = Color3.fromRGB(219, 48, 123),
		AcrylicMain = Color3.fromRGB(35, 25, 30),
		AcrylicBorder = Color3.fromRGB(145, 35, 75),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(65, 25, 45), Color3.fromRGB(75, 30, 50)),
		TitleBarLine = Color3.fromRGB(150, 65, 95),
		Tab = Color3.fromRGB(190, 85, 115),
		Element = Color3.fromRGB(170, 60, 90),
		ElementBorder = Color3.fromRGB(95, 35, 55),
		InElementBorder = Color3.fromRGB(120, 50, 70),
		ToggleSlider = Color3.fromRGB(190, 75, 105),
		ToggleToggled = Color3.fromRGB(45, 15, 25),
		SliderRail = Color3.fromRGB(190, 75, 105),
		DropdownFrame = Color3.fromRGB(200, 95, 125),
		DropdownHolder = Color3.fromRGB(75, 30, 45),
		DropdownBorder = Color3.fromRGB(95, 35, 55),
		DropdownOption = Color3.fromRGB(190, 75, 105),
		Keybind = Color3.fromRGB(190, 75, 105),
		Input = Color3.fromRGB(190, 75, 105),
		InputFocused = Color3.fromRGB(35, 15, 20),
		InputIndicator = Color3.fromRGB(210, 95, 125),
		InputIndicatorFocus = Color3.fromRGB(219, 48, 123),
		Dialog = Color3.fromRGB(75, 30, 45),
		DialogHolder = Color3.fromRGB(65, 25, 40),
		DialogHolderLine = Color3.fromRGB(60, 20, 35),
		DialogButton = Color3.fromRGB(75, 30, 45),
		DialogButtonBorder = Color3.fromRGB(115, 45, 65),
		DialogBorder = Color3.fromRGB(105, 40, 60),
		DialogInput = Color3.fromRGB(85, 35, 50),
		DialogInputLine = Color3.fromRGB(200, 85, 115),
		Hover = Color3.fromRGB(190, 75, 105),
	Midnight = {
		Name = "Midnight",
		Accent = Color3.fromRGB(52, 50, 178),
		AcrylicMain = Color3.fromRGB(20, 20, 20),
		AcrylicBorder = Color3.fromRGB(83, 83, 130),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(1, 1, 39), Color3.fromRGB(6, 6, 54)),
		TitleBarLine = Color3.fromRGB(77, 75, 126),
		Tab = Color3.fromRGB(126, 127, 180),
		Element = Color3.fromRGB(111, 108, 160),
		ElementBorder = Color3.fromRGB(32, 32, 59),
		InElementBorder = Color3.fromRGB(85, 83, 110),
		ToggleSlider = Color3.fromRGB(120, 117, 160),
		ToggleToggled = Color3.fromRGB(30, 12, 68),
		SliderRail = Color3.fromRGB(117, 117, 160),
		DropdownFrame = Color3.fromRGB(161, 161, 200),
		DropdownHolder = Color3.fromRGB(35, 36, 80),
		DropdownBorder = Color3.fromRGB(32, 30, 65),
		DropdownOption = Color3.fromRGB(116, 116, 160),
		Keybind = Color3.fromRGB(110, 123, 160),
		Input = Color3.fromRGB(116, 112, 160),
		InputFocused = Color3.fromRGB(20, 10, 30),
		InputIndicator = Color3.fromRGB(136, 140, 190),
		Dialog = Color3.fromRGB(37, 37, 80),
		DialogHolder = Color3.fromRGB(24, 24, 65),
		DialogHolderLine = Color3.fromRGB(25, 26, 60),
		DialogButton = Color3.fromRGB(46, 44, 80),
		DialogButtonBorder = Color3.fromRGB(71, 72, 110),
		DialogBorder = Color3.fromRGB(72, 70, 100),
		DialogInput = Color3.fromRGB(55, 55, 85),
		DialogInputLine = Color3.fromRGB(133, 131, 190),
		Hover = Color3.fromRGB(119, 121, 160),
	Forest = {
		Name = "Forest",
		Accent = Color3.fromRGB(46, 141, 70),
		AcrylicMain = Color3.fromRGB(20, 35, 25),
		AcrylicBorder = Color3.fromRGB(50, 90, 60),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(15, 35, 20), Color3.fromRGB(20, 40, 25)),
		TitleBarLine = Color3.fromRGB(60, 100, 70),
		Tab = Color3.fromRGB(80, 140, 90),
		Element = Color3.fromRGB(70, 120, 80),
		ElementBorder = Color3.fromRGB(30, 50, 35),
		InElementBorder = Color3.fromRGB(60, 90, 70),
		ToggleSlider = Color3.fromRGB(90, 150, 100),
		ToggleToggled = Color3.fromRGB(19, 57, 21),
		SliderRail = Color3.fromRGB(90, 150, 100),
		DropdownFrame = Color3.fromRGB(100, 160, 110),
		DropdownHolder = Color3.fromRGB(35, 60, 40),
		DropdownBorder = Color3.fromRGB(30, 50, 35),
		DropdownOption = Color3.fromRGB(90, 150, 100),
		Keybind = Color3.fromRGB(90, 150, 100),
		Input = Color3.fromRGB(90, 150, 100),
		InputFocused = Color3.fromRGB(15, 25, 18),
		InputIndicator = Color3.fromRGB(110, 170, 120),
		InputIndicatorFocus = Color3.fromRGB(46, 141, 70),
		Dialog = Color3.fromRGB(35, 60, 40),
		DialogHolder = Color3.fromRGB(30, 50, 35),
		DialogHolderLine = Color3.fromRGB(25, 45, 30),
		DialogButton = Color3.fromRGB(35, 60, 40),
		DialogButtonBorder = Color3.fromRGB(70, 110, 80),
		DialogBorder = Color3.fromRGB(60, 100, 70),
		DialogInput = Color3.fromRGB(45, 70, 50),
		DialogInputLine = Color3.fromRGB(100, 160, 110),
		Hover = Color3.fromRGB(90, 150, 100),
	Sunset = {
		Name = "Sunset",
		Accent = Color3.fromRGB(255, 128, 0),
		AcrylicMain = Color3.fromRGB(40, 25, 25),
		AcrylicBorder = Color3.fromRGB(130, 80, 60),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(70, 35, 20), Color3.fromRGB(60, 30, 20)),
		TitleBarLine = Color3.fromRGB(140, 90, 70),
		Tab = Color3.fromRGB(180, 120, 90),
		Element = Color3.fromRGB(160, 100, 70),
		ElementBorder = Color3.fromRGB(70, 40, 30),
		InElementBorder = Color3.fromRGB(110, 70, 50),
		ToggleSlider = Color3.fromRGB(180, 110, 80),
		ToggleToggled = Color3.fromRGB(62, 34, 21),
		SliderRail = Color3.fromRGB(180, 110, 80),
		DropdownFrame = Color3.fromRGB(190, 130, 100),
		DropdownHolder = Color3.fromRGB(60, 35, 25),
		DropdownBorder = Color3.fromRGB(70, 40, 30),
		DropdownOption = Color3.fromRGB(180, 110, 80),
		Keybind = Color3.fromRGB(180, 110, 80),
		Input = Color3.fromRGB(180, 110, 80),
		InputFocused = Color3.fromRGB(30, 20, 15),
		InputIndicator = Color3.fromRGB(200, 130, 100),
		InputIndicatorFocus = Color3.fromRGB(255, 128, 0),
		Dialog = Color3.fromRGB(60, 35, 25),
		DialogHolder = Color3.fromRGB(50, 30, 20),
		DialogHolderLine = Color3.fromRGB(45, 25, 15),
		DialogButton = Color3.fromRGB(60, 35, 25),
		DialogButtonBorder = Color3.fromRGB(100, 65, 45),
		DialogBorder = Color3.fromRGB(90, 55, 40),
		DialogInput = Color3.fromRGB(70, 45, 35),
		DialogInputLine = Color3.fromRGB(190, 120, 90),
		Hover = Color3.fromRGB(180, 110, 80),
	Ocean = {
		Name = "Ocean",
		Accent = Color3.fromRGB(0, 141, 255),
		AcrylicMain = Color3.fromRGB(20, 25, 40),
		AcrylicBorder = Color3.fromRGB(40, 60, 100),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(15, 25, 45), Color3.fromRGB(20, 30, 50)),
		TitleBarLine = Color3.fromRGB(50, 70, 120),
		Tab = Color3.fromRGB(70, 90, 160),
		Element = Color3.fromRGB(60, 80, 140),
		ElementBorder = Color3.fromRGB(30, 40, 70),
		InElementBorder = Color3.fromRGB(50, 60, 100),
		ToggleSlider = Color3.fromRGB(80, 100, 170),
		ToggleToggled = Color3.fromRGB(11, 35, 67),
		SliderRail = Color3.fromRGB(80, 100, 170),
		DropdownFrame = Color3.fromRGB(90, 110, 180),
		DropdownHolder = Color3.fromRGB(25, 35, 60),
		DropdownBorder = Color3.fromRGB(30, 40, 70),
		DropdownOption = Color3.fromRGB(80, 100, 170),
		Keybind = Color3.fromRGB(80, 100, 170),
		Input = Color3.fromRGB(80, 100, 170),
		InputFocused = Color3.fromRGB(15, 20, 35),
		InputIndicator = Color3.fromRGB(100, 120, 190),
		InputIndicatorFocus = Color3.fromRGB(0, 141, 255),
		Dialog = Color3.fromRGB(25, 35, 60),
		DialogHolder = Color3.fromRGB(20, 30, 55),
		DialogHolderLine = Color3.fromRGB(15, 25, 50),
		DialogButton = Color3.fromRGB(25, 35, 60),
		DialogButtonBorder = Color3.fromRGB(45, 65, 110),
		DialogBorder = Color3.fromRGB(40, 60, 100),
		DialogInput = Color3.fromRGB(35, 45, 70),
		DialogInputLine = Color3.fromRGB(90, 110, 180),
		Hover = Color3.fromRGB(80, 100, 170),
	Emerald = {
		Name = "Emerald",
		Accent = Color3.fromRGB(0, 168, 107),
		AcrylicMain = Color3.fromRGB(20, 35, 30),
		AcrylicBorder = Color3.fromRGB(30, 100, 80),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(20, 55, 45), Color3.fromRGB(25, 60, 50)),
		TitleBarLine = Color3.fromRGB(40, 110, 90),
		Tab = Color3.fromRGB(50, 130, 100),
		Element = Color3.fromRGB(40, 120, 95),
		ElementBorder = Color3.fromRGB(25, 75, 60),
		InElementBorder = Color3.fromRGB(35, 85, 70),
		ToggleSlider = Color3.fromRGB(45, 130, 100),
		ToggleToggled = Color3.fromRGB(15, 40, 30),
		SliderRail = Color3.fromRGB(45, 130, 100),
		DropdownFrame = Color3.fromRGB(55, 140, 110),
		DropdownHolder = Color3.fromRGB(20, 70, 55),
		DropdownBorder = Color3.fromRGB(25, 75, 60),
		DropdownOption = Color3.fromRGB(45, 130, 100),
		Keybind = Color3.fromRGB(45, 130, 100),
		Input = Color3.fromRGB(45, 130, 100),
		InputFocused = Color3.fromRGB(10, 35, 25),
		InputIndicator = Color3.fromRGB(55, 150, 120),
		InputIndicatorFocus = Color3.fromRGB(0, 168, 107),
		Dialog = Color3.fromRGB(20, 70, 55),
		DialogHolder = Color3.fromRGB(15, 65, 50),
		DialogHolderLine = Color3.fromRGB(15, 60, 45),
		DialogButton = Color3.fromRGB(20, 70, 55),
		DialogButtonBorder = Color3.fromRGB(30, 90, 70),
		DialogBorder = Color3.fromRGB(25, 85, 65),
		DialogInput = Color3.fromRGB(25, 75, 60),
		DialogInputLine = Color3.fromRGB(50, 140, 110),
		Hover = Color3.fromRGB(45, 130, 100),
	Sapphire = {
		Name = "Sapphire",
		Accent = Color3.fromRGB(0, 105, 255),
		AcrylicMain = Color3.fromRGB(24, 30, 85),
		AcrylicBorder = Color3.fromRGB(25, 80, 150),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(13, 33, 94), Color3.fromRGB(21, 44, 127)),
		AcrylicNoise = 0.88,
		TitleBarLine = Color3.fromRGB(50, 120, 200),
		Tab = Color3.fromRGB(60, 140, 220),
		Element = Color3.fromRGB(42, 98, 176),
		ElementBorder = Color3.fromRGB(23, 66, 113),
		InElementBorder = Color3.fromRGB(27, 65, 126),
		ElementTransparency = 0.85,
		ToggleSlider = Color3.fromRGB(50, 140, 210),
		ToggleToggled = Color3.fromRGB(20, 50, 80),
		SliderRail = Color3.fromRGB(50, 140, 210),
		DropdownFrame = Color3.fromRGB(60, 150, 230),
		DropdownHolder = Color3.fromRGB(15, 60, 100),
		DropdownBorder = Color3.fromRGB(30, 90, 140),
		DropdownOption = Color3.fromRGB(50, 140, 210),
		Keybind = Color3.fromRGB(50, 140, 210),
		Input = Color3.fromRGB(50, 140, 210),
		InputFocused = Color3.fromRGB(15, 40, 60),
		InputIndicator = Color3.fromRGB(60, 160, 240),
		InputIndicatorFocus = Color3.fromRGB(0, 105, 255),
		Dialog = Color3.fromRGB(10, 60, 100),
		DialogHolder = Color3.fromRGB(15, 50, 90),
		DialogHolderLine = Color3.fromRGB(15, 45, 80),
		DialogButton = Color3.fromRGB(10, 60, 100),
		DialogButtonBorder = Color3.fromRGB(30, 100, 160),
		DialogBorder = Color3.fromRGB(20, 80, 130),
		DialogInput = Color3.fromRGB(30, 90, 140),
		DialogInputLine = Color3.fromRGB(55, 150, 230),
		Hover = Color3.fromRGB(50, 140, 210),
		HoverChange = 0.05
	Cloud = {
		Name = "Cloud",
		Accent = Color3.fromRGB(27, 114, 138),
		AcrylicMain = Color3.fromRGB(13, 62, 77),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(51, 74, 83), Color3.fromRGB(4, 47, 66)),
		TitleBarLine = Color3.fromRGB(97, 97, 97),
		ToggleToggled = Color3.fromRGB(26, 59, 80),
		Dialog = Color3.fromRGB(11, 75, 88),
		DialogHolder = Color3.fromRGB(18, 77, 93),
		DialogHolderLine = Color3.fromRGB(33, 76, 86),
		DialogButton = Color3.fromRGB(43, 72, 80),
		DialogInput = Color3.fromRGB(4, 97, 107),
		Text = Color3.fromRGB(209, 240, 233),
	Grape = {
		Name = "Grape",
		Accent = Color3.fromRGB(183, 176, 223),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(6, 0, 16), Color3.fromRGB(6, 0, 16)),
		ElementBorder = Color3.fromRGB(6, 0, 16),
		ElementTransparency = 1,
		ToggleSlider = Color3.fromRGB(255, 255, 255),
		ToggleToggled = Color3.fromRGB(19, 16, 36),
		DropdownHolder = Color3.fromRGB(12, 0, 34),
		DropdownBorder = Color3.fromRGB(6, 0, 16),
		InputFocused = Color3.fromRGB(6, 0, 16),
		Dialog = Color3.fromRGB(7, 0, 18),
		DialogHolder = Color3.fromRGB(7, 0, 18),
		DialogHolderLine = Color3.fromRGB(7, 0, 18),
		DialogButton = Color3.fromRGB(13, 0, 33),
		DialogInput = Color3.fromRGB(7, 0, 18),
		SubText = Color3.fromRGB(123, 144, 170),
	Bloody = {
		Name = "Bloody",
		Accent = Color3.fromRGB(144, 0, 0),
		AcrylicMain = Color3.fromRGB(61, 0, 0),
		AcrylicBorder = Color3.fromRGB(86, 0, 0),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(90, 0, 0), Color3.fromRGB(100, 0, 0)),
		TitleBarLine = Color3.fromRGB(126, 0, 0),
		Tab = Color3.fromRGB(134, 0, 0),
		Element = Color3.fromRGB(156, 0, 0),
		ElementBorder = Color3.fromRGB(91, 0, 0),
		InElementBorder = Color3.fromRGB(106, 0, 0),
		ElementTransparency = 0.86,
		ToggleSlider = Color3.fromRGB(130, 5, 5),
		ToggleToggled = Color3.fromRGB(66, 0, 0),
		SliderRail = Color3.fromRGB(150, 30, 30),
		DropdownFrame = Color3.fromRGB(150, 30, 30),
		DropdownHolder = Color3.fromRGB(79, 0, 0),
		DropdownBorder = Color3.fromRGB(116, 0, 0),
		DropdownOption = Color3.fromRGB(150, 30, 30),
		Keybind = Color3.fromRGB(150, 30, 30),
		Input = Color3.fromRGB(150, 30, 30),
		InputFocused = Color3.fromRGB(40, 10, 10),
		InputIndicator = Color3.fromRGB(113, 1, 1),
		Dialog = Color3.fromRGB(85, 0, 1),
		DialogHolder = Color3.fromRGB(77, 0, 8),
		DialogHolderLine = Color3.fromRGB(88, 4, 4),
		DialogButton = Color3.fromRGB(115, 14, 21),
		DialogButtonBorder = Color3.fromRGB(83, 0, 1),
		DialogBorder = Color3.fromRGB(43, 4, 5),
		DialogInput = Color3.fromRGB(108, 20, 21),
		DialogInputLine = Color3.fromRGB(91, 1, 1),
		SubText = Color3.fromRGB(131, 131, 131),
		Hover = Color3.fromRGB(181, 0, 0),
	Arctic = {
		Name = "Arctic",
		Accent = Color3.fromRGB(64, 224, 255),
		AcrylicMain = Color3.fromRGB(10, 18, 25),
		AcrylicBorder = Color3.fromRGB(35, 55, 70),
		AcrylicGradient = ColorSequence.new(Color3.fromRGB(15, 25, 35), Color3.fromRGB(18, 30, 40)),
		TitleBarLine = Color3.fromRGB(45, 70, 90),
		Tab = Color3.fromRGB(70, 110, 140),
		Element = Color3.fromRGB(60, 95, 120),
		ElementBorder = Color3.fromRGB(60, 95, 120),
		InElementBorder = Color3.fromRGB(70, 110, 140),
		ElementTransparency = 0.88,
		ToggleSlider = Color3.fromRGB(90, 140, 180),
		ToggleToggled = Color3.fromRGB(15, 25, 35),
		SliderRail = Color3.fromRGB(90, 140, 180),
		DropdownFrame = Color3.fromRGB(110, 170, 220),
		DropdownHolder = Color3.fromRGB(30, 45, 60),
		DropdownBorder = Color3.fromRGB(60, 95, 120),
		DropdownOption = Color3.fromRGB(90, 140, 180),
		Keybind = Color3.fromRGB(90, 140, 180),
		Input = Color3.fromRGB(90, 140, 180),
		InputFocused = Color3.fromRGB(10, 18, 25),
		InputIndicator = Color3.fromRGB(130, 200, 255),
		InputIndicatorFocus = Color3.fromRGB(64, 224, 255),
		Dialog = Color3.fromRGB(30, 45, 60),
		DialogHolder = Color3.fromRGB(18, 30, 40),
		DialogHolderLine = Color3.fromRGB(15, 25, 35),
		DialogButton = Color3.fromRGB(30, 45, 60),
		DialogButtonBorder = Color3.fromRGB(45, 70, 90),
		DialogBorder = Color3.fromRGB(40, 60, 80),
		DialogInput = Color3.fromRGB(35, 55, 70),
		DialogInputLine = Color3.fromRGB(110, 170, 220),
		Text = Color3.fromRGB(240, 250, 255),
		SubText = Color3.fromRGB(180, 200, 220),
		Hover = Color3.fromRGB(90, 140, 180),
	}

}

local Library = {
	Version = "1.2.2",

	OpenFrames = {},
	Options = {},
	Themes = Themes.Names,
	Windows = {},

	Window = nil,
	WindowFrame = nil,
	Unloaded = false,

	Creator = nil,

	DialogOpen = false,
	UseAcrylic = false,
	Acrylic = false,
	Transparency = true,
	MinimizeKeybind = nil,
	MinimizeKey = Enum.KeyCode.LeftControl,

local function isMotor(value)
	local motorType = tostring(value):match("^Motor%((.+)%)$")

	if motorType then
		return Library, SaveManager, InterfaceManager, Mobile
	else
		return false
	end

local Connection = {}

Connection.__index = Connection

function Connection.new(signal, handler)
	return setmetatable({
		signal = signal,
		connected = true,
		_handler = handler,
	}, Connection)

function Connection:disconnect()
	if self.connected then
		self.connected = false

		for index, connection in pairs(self.signal._connections) do
			if connection == self then
				table.remove(self.signal._connections, index)
				return
			end
		end

local Signal = {}
Signal.__index = Signal

function Signal.new()
		_connections = {},
		_threads = {},
	}, Signal)

function Signal:fire(...)
	for _, connection in pairs(self._connections) do
		connection._handler(...)

	for _, thread in pairs(self._threads) do
		coroutine.resume(thread, ...)

	self._threads = {}

function Signal:connect(handler)
	local connection = Connection.new(self, handler)
	table.insert(self._connections, connection)
	return connection

function Signal:wait()
	table.insert(self._threads, coroutine.running())
	return coroutine.yield()

local Linear = {}
Linear.__index = Linear

function Linear.new(targetValue, options)
	assert(targetValue, "Missing argument #1: targetValue")

	options = options or {}

		_targetValue = targetValue,
		_velocity = options.velocity or 1,
	}, Linear)

function Linear:step(state, dt)
	local position = state.value
	local velocity = self._velocity
	local goal = self._targetValue

	local dPos = dt * velocity

	local complete = dPos >= math.abs(goal - position)
	position = position + dPos * (goal > position and 1 or -1)
	if complete then
		position = self._targetValue
		velocity = 0

	return {
		complete = complete,
		value = position,
		velocity = velocity,

local Instant = {}
Instant.__index = Instant

function Instant.new(targetValue)
	}, Instant)

function Instant:step()
		complete = true,
		value = self._targetValue,

local VELOCITY_THRESHOLD = 0.001
local POSITION_THRESHOLD = 0.001

local EPS = 0.0001

local Spring = {}
Spring.__index = Spring

function Spring.new(targetValue, options)

		_frequency = options.frequency or 4,
		_dampingRatio = options.dampingRatio or 1,
	}, Spring)

function Spring:step(state, dt)


	local d = self._dampingRatio
	local f = self._frequency * 2 * math.pi
	local g = self._targetValue
	local p0 = state.value
	local v0 = state.velocity or 0

	local offset = p0 - g
	local decay = math.exp(-d * f * dt)

	local p1, v1

	if d == 1 then
		p1 = (offset * (1 + f * dt) + v0 * dt) * decay + g
		v1 = (v0 * (1 - f * dt) - offset * (f * f * dt)) * decay
	elseif d < 1 then
		local c = math.sqrt(1 - d * d)

		local i = math.cos(f * c * dt)
		local j = math.sin(f * c * dt)



		local z
		if c > EPS then
			z = j / c
		else
			local a = dt * f
			z = a + ((a * a) * (c * c) * (c * c) / 20 - c * c) * (a * a * a) / 6



		local y
		if f * c > EPS then
			y = j / (f * c)
			local b = f * c
			y = dt + ((dt * dt) * (b * b) * (b * b) / 20 - b * b) * (dt * dt * dt) / 6

		p1 = (offset * (i + d * z) + v0 * y) * decay + g
		v1 = (v0 * (i - z * d) - offset * (z * f)) * decay
		local c = math.sqrt(d * d - 1)

		local r1 = -f * (d - c)
		local r2 = -f * (d + c)

		local co2 = (v0 - offset * r1) / (2 * f * c)
		local co1 = offset - co2

		local e1 = co1 * math.exp(r1 * dt)
		local e2 = co2 * math.exp(r2 * dt)

		p1 = e1 + e2 + g
		v1 = e1 * r1 + e2 * r2

	local complete = math.abs(v1) < VELOCITY_THRESHOLD and math.abs(p1 - g) < POSITION_THRESHOLD

		value = complete and g or p1,
		velocity = v1,

local noop = function() end

local BaseMotor = {}
BaseMotor.__index = BaseMotor

function BaseMotor.new()
		_onStep = Signal.new(),
		_onStart = Signal.new(),
		_onComplete = Signal.new(),
	}, BaseMotor)

function BaseMotor:onStep(handler)
	return self._onStep:connect(handler)

function BaseMotor:onStart(handler)
	return self._onStart:connect(handler)

function BaseMotor:onComplete(handler)
	return self._onComplete:connect(handler)

function BaseMotor:start()
	if not self._connection then
		self._connection = RunService.RenderStepped:Connect(function(deltaTime)
			self:step(deltaTime)
		end)

function BaseMotor:stop()
	if self._connection then
		self._connection:Disconnect()
		self._connection = nil

BaseMotor.destroy = BaseMotor.stop

BaseMotor.step = noop
BaseMotor.getValue = noop
BaseMotor.setGoal = noop

function BaseMotor:__tostring()
	return "Motor"

local SingleMotor = setmetatable({}, BaseMotor)
SingleMotor.__index = SingleMotor

function SingleMotor.new(initialValue, useImplicitConnections)
	assert(initialValue, "Missing argument #1: initialValue")
	assert(typeof(initialValue) == "number", "initialValue must be a number!")

	local self = setmetatable(BaseMotor.new(), SingleMotor)

	if useImplicitConnections ~= nil then
		self._useImplicitConnections = useImplicitConnections
		self._useImplicitConnections = true

	self._goal = nil
	self._state = {
		value = initialValue,

	return self

function SingleMotor:step(deltaTime)
	if self._state.complete then
		return true

	local newState = self._goal:step(self._state, deltaTime)

	self._state = newState
	self._onStep:fire(newState.value)

	if newState.complete then
		if self._useImplicitConnections then
			self:stop()

		self._onComplete:fire()

	return newState.complete

function SingleMotor:getValue()
	return self._state.value

function SingleMotor:setGoal(goal)
	self._state.complete = false
	self._goal = goal

	self._onStart:fire()

	if self._useImplicitConnections then
		self:start()

function SingleMotor:__tostring()
	return "Motor(Single)"

local GroupMotor = setmetatable({}, BaseMotor)
GroupMotor.__index = GroupMotor

local function toMotor(value)
	if isMotor(value) then
		return value

	local valueType = typeof(value)

	if valueType == "number" then
		return SingleMotor.new(value, false)
	elseif valueType == "table" then
		return GroupMotor.new(value, false)

	error(("Unable to convert %q to motor; type %s is unsupported"):format(value, valueType), 2)

function GroupMotor.new(initialValues, useImplicitConnections)
	assert(initialValues, "Missing argument #1: initialValues")
	assert(typeof(initialValues) == "table", "initialValues must be a table!")
	assert(
		not initialValues.step,
		'initialValues contains disallowed property "step". Did you mean to put a table of values here?'
	)

	local self = setmetatable(BaseMotor.new(), GroupMotor)


	self._complete = true
	self._motors = {}

	for key, value in pairs(initialValues) do
		self._motors[key] = toMotor(value)


function GroupMotor:step(deltaTime)
	if self._complete then

	local allMotorsComplete = true

	for _, motor in pairs(self._motors) do
		local complete = motor:step(deltaTime)
		if not complete then

			allMotorsComplete = false

	self._onStep:fire(self:getValue())

	if allMotorsComplete then

		self._complete = true

	return allMotorsComplete

function GroupMotor:setGoal(goals)
	assert(not goals.step, 'goals contains disallowed property "step". Did you mean to put a table of goals here?')

	self._complete = false

	for key, goal in pairs(goals) do
		local motor = assert(self._motors[key], ("Unknown motor for key %s"):format(key))
		motor:setGoal(goal)


function GroupMotor:getValue()
	local values = {}

	for key, motor in pairs(self._motors) do
		values[key] = motor:getValue()

	return values

function GroupMotor:__tostring()
	return "Motor(Group)"

local Flipper = {
	SingleMotor = SingleMotor,
	GroupMotor = GroupMotor,

	Instant = Instant,
	Linear = Linear,
	Spring = Spring,

	isMotor = isMotor,

local Creator = {
	Registry = {},
	Signals = {},
	TransparencyMotors = {},
	DefaultProperties = {
		ScreenGui = {
			ResetOnSpawn = false,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		},
		Frame = {
			BackgroundColor3 = Color3.new(1, 1, 1),
			BorderColor3 = Color3.new(0, 0, 0),
			BorderSizePixel = 0,
		ScrollingFrame = {
			ScrollBarImageColor3 = Color3.new(0, 0, 0),
		TextLabel = {
			Font = Enum.Font.SourceSans,
			Text = "",
			TextColor3 = Color3.new(0, 0, 0),
			BackgroundTransparency = 1,
			TextSize = 14,
		TextButton = {
			AutoButtonColor = false,
		TextBox = {
			ClearTextOnFocus = false,
		ImageLabel = {
		ImageButton = {
		CanvasGroup = {

local function ApplyCustomProps(Object, Props)
	if Props.ThemeTag then
		Creator.AddThemeObject(Object, Props.ThemeTag)

function Creator.AddSignal(Signal, Function)
	local Connected = Signal:Connect(Function)
	table.insert(Creator.Signals, Connected)
	return Connected

function Creator.Disconnect()
	for Idx = #Creator.Signals, 1, -1 do
		local Connection = table.remove(Creator.Signals, Idx)
		if Connection.Disconnect then
			Connection:Disconnect()

Creator.Themes = Themes
Creator.Theme = Creator.Theme or "Dark"

function Creator.GetThemeProperty(Property)
	local Theme = Creator.Themes[Creator.Theme]
	if Theme then
		return Theme[Property]
	return Creator.Themes.Dark[Property]

function Creator.UpdateTheme()
	if not Creator.Themes[Creator.Theme] then
		Creator.Theme = "Dark"

	for Instance, Object in next, Creator.Registry do
		for Property, ColorIdx in next, Object.Properties do
			local themeValue = Creator.GetThemeProperty(ColorIdx)
			if themeValue then
				Instance[Property] = themeValue

	local transparency = Creator.GetThemeProperty("ElementTransparency")
	if transparency then
		for _, Motor in next, Creator.TransparencyMotors do
			Motor:setGoal(Flipper.Instant.new(transparency))

function Creator.AddThemeObject(Object, Properties)
	local Idx = #Creator.Registry + 1
	local Data = {
		Object = Object,
		Properties = Properties,
		Idx = Idx,

	Creator.Registry[Object] = Data
	Creator.UpdateTheme()
	return Object

function Creator.OverrideTag(Object, Properties)
	Creator.Registry[Object].Properties = Properties

	if Themes[Library.Theme][Property] then
		return Themes[Library.Theme][Property]
	return Themes["Dark"][Property]

function Creator.New(Name, Properties, Children)
	local Object = Instance.new(Name)

	for Name, Value in next, Creator.DefaultProperties[Name] or {} do
		Object[Name] = Value


	for Name, Value in next, Properties or {} do
		if Name ~= "ThemeTag" then
			Object[Name] = Value


	for _, Child in next, Children or {} do
		Child.Parent = Object

	ApplyCustomProps(Object, Properties)

function Creator.SpringMotor(Initial, Instance, Prop, IgnoreDialogCheck, ResetOnThemeChange)
	IgnoreDialogCheck = IgnoreDialogCheck or false
	ResetOnThemeChange = ResetOnThemeChange or false
	local Motor = Flipper.SingleMotor.new(Initial)
	Motor:onStep(function(value)
		Instance[Prop] = value
	end)

	if ResetOnThemeChange then
		table.insert(Creator.TransparencyMotors, Motor)

	local function SetValue(Value, Ignore)
		Ignore = Ignore or false
		if not IgnoreDialogCheck then
			if not Ignore then
				if Prop == "BackgroundTransparency" and Library.DialogOpen then
					return
				end
		Motor:setGoal(Flipper.Spring.new(Value, { frequency = 8 }))

	return Motor, SetValue

Library.Creator = Creator

local New = Creator.New

local GUI = New("ScreenGui", {
	Parent = RunService:IsStudio() and LocalPlayer.PlayerGui or game:GetService("CoreGui"),
})
Library.GUI = GUI
ProtectGui(GUI)

function Library:SafeCallback(Function, ...)
	if not Function then
		return

	local Success, Event = pcall(Function, ...)
	if not Success then
		local _, i = Event:find(":%d+: ")

		if not i then
			return Library:Notify({
				Title = "Interface",
				Content = "Callback error",
				SubContent = Event,
				Duration = 5,
			})

		return Library:Notify({
			Title = "Interface",
			Content = "Callback error",
			SubContent = Event:sub(i + 1),
			Duration = 5,
		})

function Library:Round(Number, Factor)
	if Factor == 0 then
		return math.floor(Number)
	Number = tostring(Number)
	return Number:find("%.") and tonumber(Number:sub(1, Number:find("%.") + Factor)) or Number

local function map(value, inMin, inMax, outMin, outMax)
	return (value - inMin) * (outMax - outMin) / (inMax - inMin) + outMin

local function viewportPointToWorld(location, distance)
	local unitRay = game:GetService("Workspace").CurrentCamera:ScreenPointToRay(location.X, location.Y)
	return unitRay.Origin + unitRay.Direction * distance

local function getOffset()
	local viewportSizeY = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
	return map(viewportSizeY, 0, 2560, 8, 56)

local viewportPointToWorld, getOffset = unpack({ viewportPointToWorld, getOffset })

local BlurFolder = Instance.new("Folder", game:GetService("Workspace").CurrentCamera)

local function createAcrylic()
	local Part = Creator.New("Part", {
		Name = "Body",
		Color = Color3.new(0, 0, 0),
		Material = Enum.Material.Glass,
		Size = Vector3.new(1, 1, 0),
		Anchored = true,
		CanCollide = false,
		Locked = true,
		CastShadow = false,
		Transparency = 0.98,
	}, {
		Creator.New("SpecialMesh", {
			MeshType = Enum.MeshType.Brick,
			Offset = Vector3.new(0, 0, -0.000001),
		}),
	})

	return Part

function AcrylicBlur()
	local function createAcrylicBlur(distance)
		local cleanups = {}

		distance = distance or 0.001
		local positions = {
			topLeft = Vector2.new(),
			topRight = Vector2.new(),
			bottomRight = Vector2.new(),
		}
		local model = createAcrylic()
		model.Parent = BlurFolder

		local function updatePositions(size, position)
			positions.topLeft = position
			positions.topRight = position + Vector2.new(size.X, 0)
			positions.bottomRight = position + size

		local function render()
			local res = game:GetService("Workspace").CurrentCamera
			if res then
				res = res.CFrame
			local cond = res
			if not cond then
				cond = CFrame.new()

			local camera = cond
			local topLeft = positions.topLeft
			local topRight = positions.topRight
			local bottomRight = positions.bottomRight

			local topLeft3D = viewportPointToWorld(topLeft, distance)
			local topRight3D = viewportPointToWorld(topRight, distance)
			local bottomRight3D = viewportPointToWorld(bottomRight, distance)

			local width = (topRight3D - topLeft3D).Magnitude
			local height = (topRight3D - bottomRight3D).Magnitude

			model.CFrame =
				CFrame.fromMatrix((topLeft3D + bottomRight3D) / 2, camera.XVector, camera.YVector, camera.ZVector)
			model.Mesh.Scale = Vector3.new(width, height, 0)

		local function onChange(rbx)
			local offset = getOffset()
			local size = rbx.AbsoluteSize - Vector2.new(offset, offset)
			local position = rbx.AbsolutePosition + Vector2.new(offset / 2, offset / 2)

			updatePositions(size, position)
			task.spawn(render)

		local function renderOnChange()
			local camera = game:GetService("Workspace").CurrentCamera
			if not camera then

			table.insert(cleanups, camera:GetPropertyChangedSignal("CFrame"):Connect(render))
			table.insert(cleanups, camera:GetPropertyChangedSignal("ViewportSize"):Connect(render))
			table.insert(cleanups, camera:GetPropertyChangedSignal("FieldOfView"):Connect(render))

		model.Destroying:Connect(function()
			for _, item in cleanups do
				pcall(function()
					item:Disconnect()
				end)

		renderOnChange()

		return onChange, model

	return function(distance)
		local Blur = {}
		local onChange, model = createAcrylicBlur(distance)

		local comp = Creator.New("Frame", {
			Size = UDim2.fromScale(1, 1),

		Creator.AddSignal(comp:GetPropertyChangedSignal("AbsolutePosition"), function()
			onChange(comp)

		Creator.AddSignal(comp:GetPropertyChangedSignal("AbsoluteSize"), function()

		Blur.AddParent = function(Parent)
			Creator.AddSignal(Parent:GetPropertyChangedSignal("Visible"), function()
				Blur.SetVisibility(Parent.Visible)
			end)

		Blur.SetVisibility = function(Value)
			model.Transparency = Value and 0.98 or 1

		Blur.Frame = comp
		Blur.Model = model

		return Blur

function AcrylicPaint()
	local New = Creator.New
	local AcrylicBlur = AcrylicBlur()

	return function(props)
		local AcrylicPaint = {}

		AcrylicPaint.Frame = New("Frame", {
			BackgroundTransparency = 0.9,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			New("ImageLabel", {
				Image = "rbxassetid://8992230677",
				ScaleType = "Slice",
				SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Size = UDim2.new(1, 120, 1, 116),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				BackgroundTransparency = 1,
				ImageColor3 = Color3.fromRGB(0, 0, 0),
				ImageTransparency = 0.7,
			}),

			New("UICorner", {
				CornerRadius = UDim.new(0, 8),

			New("Frame", {
				BackgroundTransparency = 0.45,
				Size = UDim2.fromScale(1, 1),
				Name = "Background",
				ThemeTag = {
					BackgroundColor3 = "AcrylicMain",
				},
			}, {
				New("UICorner", {
					CornerRadius = UDim.new(0, 8),
				}),

				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 0.4,

				New("UIGradient", {
					Rotation = 90,
					ThemeTag = {
						Color = "AcrylicGradient",
					},

				Image = "rbxassetid://9968344105",
				ImageTransparency = 0.98,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.new(0, 128, 0, 128),

				Image = "rbxassetid://9968344227",
				ImageTransparency = 0.9,
					ImageTransparency = "AcrylicNoise",

				ZIndex = 2,
				New("UIStroke", {
					Transparency = 0.5,
					Thickness = 1,
						Color = "AcrylicBorder",

		local Blur

		if Library.UseAcrylic then
			Blur = AcrylicBlur()
			Blur.Frame.Parent = AcrylicPaint.Frame
			AcrylicPaint.Model = Blur.Model
			AcrylicPaint.AddParent = Blur.AddParent
			AcrylicPaint.SetVisibility = Blur.SetVisibility

		return AcrylicPaint

local Acrylic = {
	AcrylicBlur = AcrylicBlur(),
	CreateAcrylic = createAcrylic,
	AcrylicPaint = AcrylicPaint(),

function Acrylic.init()
	local baseEffect = Instance.new("DepthOfFieldEffect")
	baseEffect.FarIntensity = 0
	baseEffect.InFocusRadius = 0.1
	baseEffect.NearIntensity = 1

	local depthOfFieldDefaults = {}

	function Acrylic.Enable()
		for _, effect in pairs(depthOfFieldDefaults) do
			effect.Enabled = false
		baseEffect.Parent = game:GetService("Lighting")

	function Acrylic.Disable()
			effect.Enabled = effect.enabled
		baseEffect.Parent = nil

	local function registerDefaults()
		local function register(object)
			if object:IsA("DepthOfFieldEffect") then
				depthOfFieldDefaults[object] = { enabled = object.Enabled }

		for _, child in pairs(game:GetService("Lighting"):GetChildren()) do
			register(child)

		if game:GetService("Workspace").CurrentCamera then
			for _, child in pairs(game:GetService("Workspace").CurrentCamera:GetChildren()) do
				register(child)

	registerDefaults()
	Acrylic.Enable()

local Components = {
	Assets = {
		Close = "rbxassetid://9886659671",
		Min = "rbxassetid://9886659276",
		Max = "rbxassetid://9886659406",
		Restore = "rbxassetid://9886659001",

Components.Element = (function()

	local Spring = Flipper.Spring.new

	return function(Title, Desc, Parent, Hover, Options)
		local Element = {}
		local Options = Options or {}

		Element.TitleLabel = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal),
			Text = Title,
			TextColor3 = Color3.fromRGB(240, 240, 240),
			TextSize = 13,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = UDim2.new(1, 0, 0, 14),
			ThemeTag = {
				TextColor3 = "Text",
			},

		Element.DescLabel = New("TextLabel", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
			Text = Desc,
			TextColor3 = Color3.fromRGB(200, 200, 200),
			TextSize = 12,
			TextWrapped = true,
			AutomaticSize = Enum.AutomaticSize.Y,
				TextColor3 = "SubText",

		Element.LabelHolder = New("Frame", {
			Position = UDim2.fromOffset(10, 0),
			Size = UDim2.new(1, -28, 0, 0),
			New("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			New("UIPadding", {
				PaddingBottom = UDim.new(0, 13),
				PaddingTop = UDim.new(0, 13),
			Element.TitleLabel,
			Element.DescLabel,

		Element.Border = New("UIStroke", {
			Transparency = 0.5,
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(0, 0, 0),
				Color = "ElementBorder",

		Element.Frame = New("TextButton", {
			Visible = Options.Visible and Options.Visible or true,
			Size = UDim2.new(1, 0, 0, 0),
			BackgroundTransparency = 0.89,
			BackgroundColor3 = Color3.fromRGB(130, 130, 130),
			Parent = Parent,
			LayoutOrder = 7,
				BackgroundColor3 = "Element",
				BackgroundTransparency = "ElementTransparency",
				CornerRadius = UDim.new(0, 4),
			Element.Border,
			Element.LabelHolder,

		function Element:SetTitle(Set)
			Element.TitleLabel.Text = Set
			if Library.Windows and #Library.Windows > 0 then
				local currentWindow = Library.Windows[#Library.Windows]
				if currentWindow and currentWindow.AllElements and currentWindow.AllElements[Element.Frame] then
					currentWindow.AllElements[Element.Frame].title = Set

		function Element:Visible(Bool)
			Element.Frame.Visible = Bool

		function Element:SetDesc(Set)
			if Set == nil then
				Set = ""
			if Set == "" then
				Element.DescLabel.Visible = false
			else
				Element.DescLabel.Visible = true
			Element.DescLabel.Text = Set
					currentWindow.AllElements[Element.Frame].description = Set

		function Element:GetTitle()
			return Element.TitleLabel.Text

		function Element:GetDesc()
			return Element.DescLabel.Text

		function Element:Destroy()
			Element.Frame:Destroy()

		Element:SetTitle(Title)
		Element:SetDesc(Desc)


		if Library.Windows and #Library.Windows > 0 then
			local currentWindow = Library.Windows[#Library.Windows]
			if currentWindow and currentWindow.RegisterElement then
				currentWindow.RegisterElement(Element.Frame, Title, "Element", Desc)

		if Hover then
			local Themes = Library.Themes
			local Motor, SetTransparency = Creator.SpringMotor(
				Creator.GetThemeProperty("ElementTransparency"),
				Element.Frame,
				"BackgroundTransparency",
				false,
				true
			)

			Creator.AddSignal(Element.Frame.MouseEnter, function()
				SetTransparency(Creator.GetThemeProperty("ElementTransparency") - Creator.GetThemeProperty("HoverChange"))
			Creator.AddSignal(Element.Frame.MouseLeave, function()
				SetTransparency(Creator.GetThemeProperty("ElementTransparency"))
			Creator.AddSignal(Element.Frame.MouseButton1Down, function()
				SetTransparency(Creator.GetThemeProperty("ElementTransparency") + Creator.GetThemeProperty("HoverChange"))
			Creator.AddSignal(Element.Frame.MouseButton1Up, function()

		return Element
end)()
Components.Section = (function()

	return function(Title, Parent, Icon)
		local Section = {}

		Section.Layout = New("UIListLayout", {
			Padding = UDim.new(0, 5),

		Section.Container = New("Frame", {
			Size = UDim2.new(1, 0, 0, 26),
			Position = UDim2.fromOffset(0, 24),
			Section.Layout,

		local SectionHeader = New("Frame", {
			Size = UDim2.new(1, -16, 0, 18),
			Position = UDim2.fromOffset(0, 2),
				Padding = UDim.new(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
			Icon and New("ImageLabel", {
				Image = Icon,
				Size = UDim2.fromOffset(16, 16),
				LayoutOrder = 1,
					ImageColor3 = "Text",
			}) or nil,
			New("TextLabel", {
				RichText = true,
				Text = Title,
				TextTransparency = 0,
				FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				TextSize = 18,
				TextXAlignment = "Left",
				TextYAlignment = "Center",
				Size = UDim2.fromScale(0, 1),
				AutomaticSize = Enum.AutomaticSize.X,
				LayoutOrder = 2,
					TextColor3 = "Text",

		Section.Root = New("Frame", {
			SectionHeader,
			Section.Container,

		Creator.AddSignal(Section.Layout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Section.Container.Size = UDim2.new(1, 0, 0, Section.Layout.AbsoluteContentSize.Y)
			Section.Root.Size = UDim2.new(1, 0, 0, Section.Layout.AbsoluteContentSize.Y + 25)


				currentWindow.RegisterElement(Section.Root, Title, "Section")

		return Section
Components.Tab = (function()
	local Instant = Flipper.Instant.new
	local Components = Components

	local TabModule = {
		Window = nil,
		Tabs = {},
		Containers = {},
		SelectedTab = 0,
		TabCount = 0,

	function TabModule:Init(Window)
		TabModule.Window = Window
		return TabModule

	function TabModule:GetCurrentTabPos()
		local TabHolderPos = TabModule.Window.TabHolder.AbsolutePosition.Y
		local TabPos = TabModule.Tabs[TabModule.SelectedTab].Frame.AbsolutePosition.Y

		return TabPos - TabHolderPos

	function TabModule:New(Title, Icon, Parent)
		local Window = TabModule.Window
		local Elements = Library.Elements

		TabModule.TabCount = TabModule.TabCount + 1
		local TabIndex = TabModule.TabCount

		local Tab = {
			Selected = false,
			Name = Title,
			Type = "Tab",

		if not fischbypass then 
			if Library:GetIcon(Icon) then
				Icon = Library:GetIcon(Icon)

			if Icon == "" or nil then
				Icon = nil

		Tab.Frame = New("TextButton", {
			Size = UDim2.new(1, 0, 0, 34),
				BackgroundColor3 = "Tab",
				CornerRadius = UDim.new(0, 6),
				AnchorPoint = Vector2.new(0, 0.5),
				Position = not fischbypass and Icon and UDim2.new(0, 30, 0.5, 0) or UDim2.new(0, 12, 0.5, 0),
				TextColor3 = Color3.fromRGB(255, 255, 255),
				FontFace = Font.new(
					"rbxasset://fonts/families/GothamSSm.json",
					Enum.FontWeight.Regular,
					Enum.FontStyle.Normal
				),
				TextSize = 12,
				Size = UDim2.new(1, -12, 1, 0),
				Position = UDim2.new(0, 8, 0.5, 0),
				Image = Icon and Icon or nil,

		local ContainerLayout = New("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,

		Tab.ContainerFrame = New("ScrollingFrame", {
			Parent = Window.ContainerHolder,
			Visible = false,
			BottomImage = "rbxassetid://6889812791",
			MidImage = "rbxassetid://6889812721",
			TopImage = "rbxassetid://6276641225",
			ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
			ScrollBarImageTransparency = 0.95,
			ScrollBarThickness = 3,
			CanvasSize = UDim2.fromScale(0, 0),
			ScrollingDirection = Enum.ScrollingDirection.Y,
			ContainerLayout,
				PaddingRight = UDim.new(0, 10),
				PaddingLeft = UDim.new(0, 1),
				PaddingTop = UDim.new(0, 1),
				PaddingBottom = UDim.new(0, 1),

		Creator.AddSignal(ContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Tab.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, ContainerLayout.AbsoluteContentSize.Y + 2)

		Tab.Motor, Tab.SetTransparency = Creator.SpringMotor(1, Tab.Frame, "BackgroundTransparency")

		Creator.AddSignal(Tab.Frame.MouseEnter, function()
			Tab.SetTransparency(Tab.Selected and 0.85 or 0.89)
		Creator.AddSignal(Tab.Frame.MouseLeave, function()
			Tab.SetTransparency(Tab.Selected and 0.89 or 1)
		Creator.AddSignal(Tab.Frame.MouseButton1Down, function()
			Tab.SetTransparency(0.92)
		Creator.AddSignal(Tab.Frame.MouseButton1Up, function()
		Creator.AddSignal(Tab.Frame.MouseButton1Click, function()
			TabModule:SelectTab(TabIndex)

		TabModule.Containers[TabIndex] = Tab.ContainerFrame
		TabModule.Tabs[TabIndex] = Tab

		Tab.Container = Tab.ContainerFrame
		Tab.ScrollFrame = Tab.Container

		function Tab:AddSection(SectionTitle, SectionIcon)
			local Section = { Type = "Section" }

			local Icon = SectionIcon
			if not fischbypass then 
				if Library:GetIcon(Icon) then
					Icon = Library:GetIcon(Icon)

				if Icon == "" or nil then
					Icon = nil

			local SectionFrame = Components.Section(SectionTitle, Tab.Container, Icon)
			Section.Container = SectionFrame.Container
			Section.ScrollFrame = Tab.Container

			setmetatable(Section, Elements)
			return Section

		setmetatable(Tab, Elements)
		return Tab

	function TabModule:SelectTab(Tab)

		TabModule.SelectedTab = Tab

		for _, TabObject in next, TabModule.Tabs do
			TabObject.SetTransparency(1)
			TabObject.Selected = false
		TabModule.Tabs[Tab].SetTransparency(0.89)
		TabModule.Tabs[Tab].Selected = true

		Window.TabDisplay.Text = TabModule.Tabs[Tab].Name
		Window.SelectorPosMotor:setGoal(Spring(TabModule:GetCurrentTabPos(), { frequency = 6 }))

		task.spawn(function()
			Window.ContainerHolder.Parent = Window.ContainerAnim

			Window.ContainerPosMotor:setGoal(Spring(15, { frequency = 10 }))
			Window.ContainerBackMotor:setGoal(Spring(1, { frequency = 10 }))
			task.wait(0.12)
			for _, Container in next, TabModule.Containers do
				Container.Visible = false
			TabModule.Containers[Tab].Visible = true
			Window.ContainerPosMotor:setGoal(Spring(0, { frequency = 5 }))
			Window.ContainerBackMotor:setGoal(Spring(0, { frequency = 8 }))
			Window.ContainerHolder.Parent = Window.ContainerCanvas

	return TabModule
Components.Button = (function()


	return function(Theme, Parent, DialogCheck)
		DialogCheck = DialogCheck or false
		local Button = {}

		Button.Title = New("TextLabel", {
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,

		Button.HoverFrame = New("Frame", {
				BackgroundColor3 = "Hover",

		Button.Frame = New("TextButton", {
			Size = UDim2.new(0, 0, 0, 32),
				BackgroundColor3 = "DialogButton",
			New("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Transparency = 0.65,
					Color = "DialogButtonBorder",
			Button.HoverFrame,
			Button.Title,

		local Motor, SetTransparency = Creator.SpringMotor(1, Button.HoverFrame, "BackgroundTransparency", DialogCheck)
		Creator.AddSignal(Button.Frame.MouseEnter, function()
			SetTransparency(0.97)
		Creator.AddSignal(Button.Frame.MouseLeave, function()
			SetTransparency(1)
		Creator.AddSignal(Button.Frame.MouseButton1Down, function()
		Creator.AddSignal(Button.Frame.MouseButton1Up, function()

		return Button
Components.Dialog = (function()

	local Dialog = {

	function Dialog:Init(Window)
		Dialog.Window = Window
		return Dialog

	function Dialog:Create()
		local NewDialog = {
			Buttons = 0,

		NewDialog.TintFrame = New("TextButton", {
			BackgroundColor3 = Color3.fromRGB(0, 0, 0),
			Parent = Dialog.Window.Root,

		local TintMotor, TintTransparency = Creator.SpringMotor(1, NewDialog.TintFrame, "BackgroundTransparency", true)

		NewDialog.ButtonHolder = New("Frame", {
			Size = UDim2.new(1, -40, 1, -40),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
				Padding = UDim.new(0, 10),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,

		NewDialog.ButtonHolderFrame = New("Frame", {
			Size = UDim2.new(1, 0, 0, 70),
			Position = UDim2.new(0, 0, 1, -70),
				BackgroundColor3 = "DialogHolder",
				Size = UDim2.new(1, 0, 0, 1),
					BackgroundColor3 = "DialogHolderLine",
			NewDialog.ButtonHolder,

		NewDialog.Title = New("TextLabel", {
			FontFace = Font.new(
				"rbxasset://fonts/families/GothamSSm.json",
				Enum.FontWeight.SemiBold,
				Enum.FontStyle.Normal
			),
			Text = "Dialog",
			TextSize = 22,
			Size = UDim2.new(1, 0, 0, 22),
			Position = UDim2.fromOffset(20, 25),

		NewDialog.Scale = New("UIScale", {
			Scale = 1,

		local ScaleMotor, Scale = Creator.SpringMotor(1.1, NewDialog.Scale, "Scale")

		NewDialog.Root = New("CanvasGroup", {
			Size = UDim2.fromOffset(300, 165),
			GroupTransparency = 1,
			Parent = NewDialog.TintFrame,
				BackgroundColor3 = "Dialog",
				Transparency = 0.5,
					Color = "DialogBorder",
			NewDialog.Scale,
			NewDialog.Title,
			NewDialog.ButtonHolderFrame,

		local RootMotor, RootTransparency = Creator.SpringMotor(1, NewDialog.Root, "GroupTransparency")

		function NewDialog:Open()
			Library.DialogOpen = true
			NewDialog.Scale.Scale = 1.1
			TintTransparency(0.75)
			RootTransparency(0)
			Scale(1)

		function NewDialog:Close()
			Library.DialogOpen = false
			TintTransparency(1)
			RootTransparency(1)
			Scale(1.1)
			NewDialog.Root.UIStroke:Destroy()
			task.wait(0.15)
			NewDialog.TintFrame:Destroy()

		function NewDialog:Button(Title, Callback)
			NewDialog.Buttons = NewDialog.Buttons + 1
			Title = Title or "Button"
			Callback = Callback or function() end

			local Button = Components.Button("", NewDialog.ButtonHolder, true)
			Button.Title.Text = Title

			for _, Btn in next, NewDialog.ButtonHolder:GetChildren() do
				if Btn:IsA("TextButton") then
					Btn.Size =
						UDim2.new(1 / NewDialog.Buttons, -(((NewDialog.Buttons - 1) * 10) / NewDialog.Buttons), 0, 32)

			Creator.AddSignal(Button.Frame.MouseButton1Click, function()
				Library:SafeCallback(Callback)
					NewDialog:Close()

			return Button

		return NewDialog

	return Dialog
Components.Notification = (function()

	local Notification = {}

	function Notification:Init(GUI)
		Library.ActiveNotifications = Library.ActiveNotifications or {}

		Notification.Holder = New("Frame", {
			Position = UDim2.new(1, -30, 1, -30),
			Size = UDim2.new(0, 310, 1, -30),
			AnchorPoint = Vector2.new(1, 1),
			Parent = GUI,
				VerticalAlignment = Enum.VerticalAlignment.Bottom,
				Padding = UDim.new(0, 20),

	function Notification:New(Config)
		Config.Title = Config.Title or "Title"
		Config.Content = Config.Content or "Content"
		Config.SubContent = Config.SubContent or ""
		Config.Duration = Config.Duration or nil
		Config.Buttons = Config.Buttons or {}
		local NewNotification = {
			Closed = false,

		NewNotification.AcrylicPaint = Acrylic.AcrylicPaint()

		NewNotification.Title = New("TextLabel", {
			Position = UDim2.new(0, 14, 0, 17),
			Text = Config.Title,
			RichText = true,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextTransparency = 0,
			TextXAlignment = "Left",
			TextYAlignment = "Center",
			Size = UDim2.new(1, -12, 0, 12),

		NewNotification.ContentLabel = New("TextLabel", {
			Text = Config.Content,

		NewNotification.SubContentLabel = New("TextLabel", {
			Text = Config.SubContent,

		NewNotification.LabelHolder = New("Frame", {
			Position = UDim2.fromOffset(14, 40),
				Padding = UDim.new(0, 3),
			NewNotification.ContentLabel,
			NewNotification.SubContentLabel,

		NewNotification.CloseButton = New("TextButton", {
			Position = UDim2.new(1, -14, 0, 13),
			Size = UDim2.fromOffset(20, 20),
			AnchorPoint = Vector2.new(1, 0),
				Image = Components.Close,
				Position = UDim2.fromScale(0.5, 0.5),

		NewNotification.Root = New("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.fromScale(1, 0),
			NewNotification.AcrylicPaint.Frame,
			NewNotification.Title,
			NewNotification.CloseButton,
			NewNotification.LabelHolder,

		if Config.Content == "" then
			NewNotification.ContentLabel.Visible = false

		if Config.SubContent == "" then
			NewNotification.SubContentLabel.Visible = false

		NewNotification.Holder = New("Frame", {
			Size = UDim2.new(1, 0, 0, 200),
			Parent = Notification.Holder,
			NewNotification.Root,

		local RootMotor = Flipper.GroupMotor.new({
			Offset = 60,

		RootMotor:onStep(function(Values)
			NewNotification.Root.Position = UDim2.new(Values.Scale, Values.Offset, 0, 0)

		Creator.AddSignal(NewNotification.CloseButton.MouseButton1Click, function()
			NewNotification:Close()

		function NewNotification:ApplyTransparency()
			if Library.Theme == "Glass" and Library.UseAcrylic then
				local Value = Library.NotificationTransparency or 1

				local notifTransparency = 0.85 + (Value * 0.08)
				if Value > 1 then
					notifTransparency = 0.93 + ((Value - 1) * 0.04)

				local notifBackgroundTransparency = 0.8 + (Value * 0.1)
					notifBackgroundTransparency = 0.9 + ((Value - 1) * 0.05)

				if NewNotification.AcrylicPaint and NewNotification.AcrylicPaint.Model then
					NewNotification.AcrylicPaint.Model.Transparency = math.min(notifTransparency, 0.97)
				if NewNotification.AcrylicPaint and NewNotification.AcrylicPaint.Frame and NewNotification.AcrylicPaint.Frame.Background then
					NewNotification.AcrylicPaint.Frame.Background.BackgroundTransparency = math.min(notifBackgroundTransparency, 0.95)

		function NewNotification:Open()
			local ContentSize = NewNotification.LabelHolder.AbsoluteSize.Y
			NewNotification.Holder.Size = UDim2.new(1, 0, 0, 58 + ContentSize)

			RootMotor:setGoal({
				Scale = Spring(0, { frequency = 5 }),
				Offset = Spring(0, { frequency = 5 }),

			task.defer(function()
				task.wait(0.1)
				NewNotification:ApplyTransparency()

		function NewNotification:Close()
			if not NewNotification.Closed then
				NewNotification.Closed = true

				for i, notif in pairs(Library.ActiveNotifications or {}) do
					if notif == NewNotification then
						table.remove(Library.ActiveNotifications, i)
						break
					end

				task.spawn(function()
					RootMotor:setGoal({
						Scale = Spring(1, { frequency = 5 }),
						Offset = Spring(60, { frequency = 5 }),
					})
					task.wait(0.4)
					if Library.UseAcrylic then
						NewNotification.AcrylicPaint.Model:Destroy()
					NewNotification.Holder:Destroy()

		table.insert(Library.ActiveNotifications, NewNotification)

		NewNotification:Open()
		if Config.Duration then
			task.delay(Config.Duration, function()
				NewNotification:Close()
		return NewNotification

	return Notification
Components.Textbox = (function()

	return function(Parent, Acrylic)
		Acrylic = Acrylic or false
		local Textbox = {}

		Textbox.Input = New("TextBox", {
				PlaceholderColor3 = "SubText",

		Textbox.Container = New("Frame", {
			ClipsDescendants = true,
			Position = UDim2.new(0, 6, 0, 0),
			Size = UDim2.new(1, -12, 1, 0),
			Textbox.Input,

		Textbox.Indicator = New("Frame", {
			Size = UDim2.new(1, -4, 0, 1),
			Position = UDim2.new(0, 2, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			BackgroundTransparency = Acrylic and 0.5 or 0,
				BackgroundColor3 = Acrylic and "InputIndicator" or "DialogInputLine",

		Textbox.Frame = New("Frame", {
			Size = UDim2.new(0, 0, 0, 30),
			BackgroundTransparency = Acrylic and 0.9 or 0,
				BackgroundColor3 = Acrylic and "Input" or "DialogInput",
				Transparency = Acrylic and 0.5 or 0.65,
					Color = Acrylic and "InElementBorder" or "DialogButtonBorder",
			Textbox.Indicator,
			Textbox.Container,

		local function Update()
			local PADDING = 2
			local Reveal = Textbox.Container.AbsoluteSize.X

			if not Textbox.Input:IsFocused() or Textbox.Input.TextBounds.X <= Reveal - 2 * PADDING then
				Textbox.Input.Position = UDim2.new(0, PADDING, 0, 0)
				local Cursor = Textbox.Input.CursorPosition
				if Cursor ~= -1 then
					local subtext = string.sub(Textbox.Input.Text, 1, Cursor - 1)
					local width = TextService:GetTextSize(
						subtext,
						Textbox.Input.TextSize,
						Textbox.Input.Font,
						Vector2.new(math.huge, math.huge)
					).X

					local CurrentCursorPos = Textbox.Input.Position.X.Offset + width
					if CurrentCursorPos < PADDING then
						Textbox.Input.Position = UDim2.fromOffset(PADDING - width, 0)
					elseif CurrentCursorPos > Reveal - PADDING - 1 then
						Textbox.Input.Position = UDim2.fromOffset(Reveal - width - PADDING - 1, 0)

		task.spawn(Update)

		Creator.AddSignal(Textbox.Input:GetPropertyChangedSignal("Text"), Update)
		Creator.AddSignal(Textbox.Input:GetPropertyChangedSignal("CursorPosition"), Update)

		Creator.AddSignal(Textbox.Input.Focused, function()
			Update()
			Textbox.Indicator.Size = UDim2.new(1, -2, 0, 2)
			Textbox.Indicator.Position = UDim2.new(0, 1, 1, 0)
			Textbox.Indicator.BackgroundTransparency = 0
			Creator.OverrideTag(Textbox.Frame, { BackgroundColor3 = Acrylic and "InputFocused" or "DialogHolder" })
			Creator.OverrideTag(Textbox.Indicator, { BackgroundColor3 = "InputIndicatorFocus" })

		Creator.AddSignal(Textbox.Input.FocusLost, function()
			Textbox.Indicator.Size = UDim2.new(1, -4, 0, 1)
			Textbox.Indicator.Position = UDim2.new(0, 2, 1, 0)
			Textbox.Indicator.BackgroundTransparency = 0.5
			Creator.OverrideTag(Textbox.Frame, { BackgroundColor3 = Acrylic and "Input" or "DialogInput" })
			Creator.OverrideTag(Textbox.Indicator, { BackgroundColor3 = Acrylic and "InputIndicator" or "DialogInputLine" })

		return Textbox
Components.TitleBar = (function()
	local AddSignal = Creator.AddSignal

	return function(Config)
		local TitleBar = {}

		local function BarButton(Icon, Pos, Parent, Callback)
			local Button = {
				Callback = Callback or function() end,
			}

			Button.Frame = New("TextButton", {
				Size = UDim2.new(0, 34, 1, -8),
				AnchorPoint = Vector2.new(1, 0),
				Parent = Parent,
				Position = Pos,
				Text = "",
					BackgroundColor3 = "Text",
					CornerRadius = UDim.new(0, 7),
				New("ImageLabel", {
					Image = Icon,
					Size = UDim2.fromOffset(16, 16),
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Name = "Icon",
						ImageColor3 = "Text",

			local Motor, SetTransparency = Creator.SpringMotor(1, Button.Frame, "BackgroundTransparency")

			AddSignal(Button.Frame.MouseEnter, function()
				SetTransparency(0.94)
			AddSignal(Button.Frame.MouseLeave, function()
				SetTransparency(1, true)
			AddSignal(Button.Frame.MouseButton1Down, function()
				SetTransparency(0.96)
			AddSignal(Button.Frame.MouseButton1Up, function()
			AddSignal(Button.Frame.MouseButton1Click, Button.Callback)

			Button.SetCallback = function(Func)
				Button.Callback = Func


		TitleBar.Frame = New("Frame", {
			Size = UDim2.new(1, 0, 0, 42),
			Parent = Config.Parent,
				Size = UDim2.new(1, -16, 1, 0),
				Position = UDim2.new(0, 16, 0, 0),
				New("UIListLayout", {
					Padding = UDim.new(0, 2),
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,

				New("TextLabel", {
					RichText = true,
					Text = Config.Title,
					FontFace = Font.new(
						"rbxasset://fonts/families/GothamSSm.json",
						Enum.FontWeight.Regular,
						Enum.FontStyle.Normal
					),
					TextSize = 12,
					TextXAlignment = "Left",
					TextYAlignment = "Center",
					Size = UDim2.fromScale(0, 1),
					AutomaticSize = Enum.AutomaticSize.X,
					LayoutOrder = 1,
						TextColor3 = "Text",
				Config.SubTitle and New("TextLabel", {
					Text = Config.SubTitle,
					TextTransparency = 0.4,
					LayoutOrder = 2,
				}) or nil,
				BackgroundTransparency = 0.5,
				Position = UDim2.new(0, 0, 1, 0),
					BackgroundColor3 = "TitleBarLine",

		TitleBar.CloseButton = BarButton(Components.Assets.Close, UDim2.new(1, -4, 0, 4), TitleBar.Frame, function()
			Library.Window:Dialog({
				Title = "Close",
				Content = "Are you sure you want to unload the interface?",
				Buttons = {
					{
						Title = "Yes",
						Callback = function()
							Library:Destroy()
						end,
						Title = "No",
		TitleBar.MaxButton = BarButton(Components.Assets.Max, UDim2.new(1, -40, 0, 4), TitleBar.Frame, function()
			Config.Window.Maximize(not Config.Window.Maximized)
		TitleBar.MinButton = BarButton(Components.Assets.Min, UDim2.new(1, -80, 0, 4), TitleBar.Frame, function()

		return TitleBar
Components.Window = (function()

		local Window = {
			Minimized = false,
			Maximized = false,
			Size = Config.Size,
			CurrentPos = 0,
			TabWidth = 0,
			Position = UDim2.fromOffset(
				(Camera and Camera.ViewportSize.X or 800) / 2 - Config.Size.X.Offset / 2,
				(Camera and Camera.ViewportSize.Y or 600) / 2 - Config.Size.Y.Offset / 2

		local Dragging, DragInput, MousePos, StartPos = false
		local Resizing, ResizePos = false
		local MinimizeNotif = false

		Window.AcrylicPaint = Acrylic.AcrylicPaint()
		Window.TabWidth = Config.TabWidth

		local Selector = New("Frame", {
			Size = UDim2.fromOffset(4, 0),
			BackgroundColor3 = Color3.fromRGB(76, 194, 255),
			Position = UDim2.fromOffset(0, 17 + 45),
			AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = "Accent",
				CornerRadius = UDim.new(0, 2),

		local ResizeStartFrame = New("Frame", {
			Position = UDim2.new(1, -20, 1, -20),

		Window.TabHolder = New("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -45),
			Position = UDim2.new(0, 0, 0, 45),
			ScrollBarImageTransparency = 1,
			ScrollBarThickness = 0,
				Padding = UDim.new(0, 4),


		local SearchElements = {}
		local AllElements = {}

		local function UpdateElementVisibility(searchTerm)
			searchTerm = string.lower(searchTerm or "")

			for element, data in pairs(AllElements) do
				if element and element.Parent then
					local shouldShow = searchTerm == "" or 
						string.find(string.lower(data.title), searchTerm, 1, true) or
						(data.description and string.find(string.lower(data.description), searchTerm, 1, true))
					element.Visible = shouldShow

			task.spawn(function()
				task.wait(0.01)
				if Window and Window.TabHolder then
					for _, child in pairs(Window.TabHolder:GetChildren()) do
						if child:IsA("ScrollingFrame") then
							local layout = child:FindFirstChild("UIListLayout")
							if layout then
								child.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 2)
							end
						end

		local function RegisterElement(elementFrame, title, elementType, description)
			if elementFrame and title then
				AllElements[elementFrame] = {
					title = title,
					type = elementType or "Element",
					description = description or ""
				}


		local SearchFrame = New("Frame", {
			Size = UDim2.new(1, 0, 0, 35),
			Position = UDim2.new(0, 0, 0, 0),
			ZIndex = 10,
				Transparency = 0.8,
				Thickness = 1,
					Color = "ElementBorder",

		local SearchTextbox = Components.Textbox(SearchFrame, true)
		SearchTextbox.Frame.Size = UDim2.new(1, -42, 1, -9)
		SearchTextbox.Frame.Position = UDim2.new(0, 8, 0, 4)
		SearchTextbox.Input.PlaceholderText = "Search..."
		SearchTextbox.Input.Text = ""








		local SearchIcon = New("ImageLabel", {
			Size = UDim2.fromOffset(18, 18),
			Position = UDim2.new(1, -18, 0.5, 0),
			Image = "rbxassetid://10734943674",
			Parent = SearchFrame,
				ImageColor3 = "SubText",


		Creator.AddSignal(SearchTextbox.Input:GetPropertyChangedSignal("Text"), function()
			local searchText = SearchTextbox.Input.Text
			UpdateElementVisibility(searchText)


		Creator.AddSignal(SearchTextbox.Input.FocusLost, function(enterPressed)

		Creator.AddSignal(UserInputService.InputBegan, function(input, gameProcessed)
			if gameProcessed then return end

			if input.KeyCode == Enum.KeyCode.Escape and SearchTextbox.Input:IsFocused() then
				SearchTextbox.Input.Text = ""
				SearchTextbox.Input:ReleaseFocus()


		Window.SearchElements = SearchElements
		Window.AllElements = AllElements
		Window.RegisterElement = RegisterElement
		Window.UpdateElementVisibility = UpdateElementVisibility

		local TabFrame = New("Frame", {
			Size = UDim2.new(0, Window.TabWidth, 1, -66),
			Position = UDim2.new(0, 12, 0, 54),
			Window.TabHolder,
			Selector,
			SearchFrame,

		Window.TabDisplay = New("TextLabel", {
			Text = "Tab",
			FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
			TextSize = 28,
			Size = UDim2.new(1, -16, 0, 28),
			Position = UDim2.fromOffset(Window.TabWidth + 26, 56),

		Window.ContainerHolder = New("Frame", {

		Window.ContainerAnim = New("CanvasGroup", {

		Window.ContainerCanvas = New("Frame", {
			Size = UDim2.new(1, -Window.TabWidth - 32, 1, -102),
			Position = UDim2.fromOffset(Window.TabWidth + 26, 90),
			Window.ContainerAnim,
			Window.ContainerHolder

		Window.Root = New("Frame", {
			Size = Window.Size,
			Position = Window.Position,
			Window.AcrylicPaint.Frame,
			Window.TabDisplay,
			Window.ContainerCanvas,
			TabFrame,
			ResizeStartFrame,

		Window.TitleBar = Components.TitleBar({
			Title = Config.Title,
			SubTitle = Config.SubTitle,
			Parent = Window.Root,
			Window = Window,

			Window.AcrylicPaint.AddParent(Window.Root)

		local SizeMotor = Flipper.GroupMotor.new({
			X = Window.Size.X.Offset,
			Y = Window.Size.Y.Offset,

		local PosMotor = Flipper.GroupMotor.new({
			X = Window.Position.X.Offset,
			Y = Window.Position.Y.Offset,

		_G.CDDrag = 0
		Window.SelectorPosMotor = Flipper.SingleMotor.new(17)
		Window.SelectorSizeMotor = Flipper.SingleMotor.new(0)
		Window.ContainerBackMotor = Flipper.SingleMotor.new(0)
		Window.ContainerPosMotor = Flipper.SingleMotor.new(94)

		SizeMotor:onStep(function(values)
			task.wait(_G.CDDrag / 10)
			Window.Root.Size = UDim2.new(0, values.X, 0, values.Y)

		PosMotor:onStep(function(values)
			Window.Root.Position = UDim2.new(0, values.X, 0, values.Y)

		local LastValue = 0
		local LastTime = 0
		Window.SelectorPosMotor:onStep(function(Value)
			Selector.Position = UDim2.new(0, 0, 0, Value + 17 + 45)
			local Now = tick()
			local DeltaTime = Now - LastTime

			if LastValue ~= nil then
				Window.SelectorSizeMotor:setGoal(Spring((math.abs(Value - LastValue) / (DeltaTime * 60)) + 16))
				LastValue = Value
			LastTime = Now

		Window.SelectorSizeMotor:onStep(function(Value)
			Selector.Size = UDim2.new(0, 4, 0, Value)

		Window.ContainerBackMotor:onStep(function(Value)
			Window.ContainerAnim.GroupTransparency = Value

		Window.ContainerPosMotor:onStep(function(Value)
			Window.ContainerAnim.Position = UDim2.fromOffset(0, Value)

		local OldSizeX
		local OldSizeY
		Window.Maximize = function(Value, NoPos, Instant)
			Window.Maximized = Value
			Window.TitleBar.MaxButton.Frame.Icon.Image = Value and Components.Assets.Restore or Components.Assets.Max

			if Value then
				OldSizeX = Window.Size.X.Offset
				OldSizeY = Window.Size.Y.Offset
			local SizeX = Value and (Camera and Camera.ViewportSize.X or 800) or OldSizeX
			local SizeY = Value and (Camera and Camera.ViewportSize.Y or 600) or OldSizeY
			SizeMotor:setGoal({
				X = Flipper[Instant and "Instant" or "Spring"].new(SizeX, { frequency = 6 }),
				Y = Flipper[Instant and "Instant" or "Spring"].new(SizeY, { frequency = 6 }),
			Window.Size = UDim2.fromOffset(SizeX, SizeY)

			if not NoPos then
				PosMotor:setGoal({
					X = Spring(Value and 0 or Window.Position.X.Offset, { frequency = 6 }),
					Y = Spring(Value and 0 or Window.Position.Y.Offset, { frequency = 6 }),
				})

		Creator.AddSignal(Window.TitleBar.Frame.InputBegan, function(Input)
			if
				Input.UserInputType == Enum.UserInputType.MouseButton1
				or Input.UserInputType == Enum.UserInputType.Touch
			then
				Dragging = true
				MousePos = Input.Position
				StartPos = Window.Root.Position

				if Window.Maximized then
					StartPos = UDim2.fromOffset(
						Mouse.X - (Mouse.X * ((OldSizeX - 100) / Window.Root.AbsoluteSize.X)),
						Mouse.Y - (Mouse.Y * (OldSizeY / Window.Root.AbsoluteSize.Y))
					)

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false

		Creator.AddSignal(Window.TitleBar.Frame.InputChanged, function(Input)
				Input.UserInputType == Enum.UserInputType.MouseMovement
				DragInput = Input

		Creator.AddSignal(ResizeStartFrame.InputBegan, function(Input)
				Resizing = true
				ResizePos = Input.Position

		Creator.AddSignal(UserInputService.InputChanged, function(Input)
			if Input == DragInput and Dragging then
				local Delta = Input.Position - MousePos
				Window.Position = UDim2.fromOffset(StartPos.X.Offset + Delta.X, StartPos.Y.Offset + Delta.Y)
					X = Instant(Window.Position.X.Offset),
					Y = Instant(Window.Position.Y.Offset),

					Window.Maximize(false, true, true)

				(Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch)
				and Resizing
				local Delta = Input.Position - ResizePos
				local StartSize = Window.Size

				local TargetSize = Vector3.new(StartSize.X.Offset, StartSize.Y.Offset, 0) + Vector3.new(1, 1, 0) * Delta
				local TargetSizeClamped =
					Vector2.new(math.clamp(TargetSize.X, 470, 2048), math.clamp(TargetSize.Y, 380, 2048))

				SizeMotor:setGoal({
					X = Flipper.Instant.new(TargetSizeClamped.X),
					Y = Flipper.Instant.new(TargetSizeClamped.Y),

		Creator.AddSignal(UserInputService.InputEnded, function(Input)
			if Resizing == true or Input.UserInputType == Enum.UserInputType.Touch then
				Resizing = false
				Window.Size = UDim2.fromOffset(SizeMotor:getValue().X, SizeMotor:getValue().Y)

		Creator.AddSignal(Window.TabHolder.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
			Window.TabHolder.CanvasSize = UDim2.new(0, 0, 0, Window.TabHolder.UIListLayout.AbsoluteContentSize.Y)

		Creator.AddSignal(UserInputService.InputBegan, function(Input)
				type(Library.MinimizeKeybind) == "table"
				and Library.MinimizeKeybind.Type == "Keybind"
				and not UserInputService:GetFocusedTextBox()
				if Input.KeyCode.Name == Library.MinimizeKeybind.Value then
			elseif Input.KeyCode == Library.MinimizeKey and not UserInputService:GetFocusedTextBox() then

			Window.Minimized = not Window.Minimized
			Window.Root.Visible = not Window.Minimized
			if not MinimizeNotif then
				MinimizeNotif = true
				local Key = Library.MinimizeKeybind and Library.MinimizeKeybind.Value or Library.MinimizeKey.Name
				if not Mobile then Library:Notify({
					Title = "Interface",
					Content = "Press " .. Key .. " to toggle the interface.",
					Duration = 6
				else 
					Library:Notify({
						Title = "Interface",
						Content = "Tap to the button to toggle the interface.",
						Duration = 6
			if not RunService:IsStudio() and Mobile and Minimizer then
					local minimizeButton = Minimizer:FindFirstChild("Frame"):FindFirstChild("TextButton")
					if minimizeButton then
						local imageLabel = minimizeButton:FindFirstChild("ImageLabel")
						if imageLabel then
							imageLabel.Image = Window.Minimized and "rbxassetid://10734896384" or "rbxassetid://10734897102"

		function Window:Destroy()
			if Library.UseAcrylic then
				Window.AcrylicPaint.Model:Destroy()
			Window.Root:Destroy()

		local DialogModule = Components.Dialog:Init(Window)
		function Window:Dialog(Config)
			local Dialog = DialogModule:Create()
			Dialog.Title.Text = Config.Title

			local Content = New("TextLabel", {
				FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
				Text = Config.Content,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				Size = UDim2.new(1, -40, 1, 0),
				Position = UDim2.fromOffset(20, 60),
				Parent = Dialog.Root,
				ClipsDescendants = false,

			New("UISizeConstraint", {
				MinSize = Vector2.new(300, 165),
				MaxSize = Vector2.new(620, math.huge),

			Dialog.Root.Size = UDim2.fromOffset(Content.TextBounds.X + 40, 165)
			if Content.TextBounds.X + 40 > Window.Size.X.Offset - 120 then
				Dialog.Root.Size = UDim2.fromOffset(Window.Size.X.Offset - 120, 165)
				Content.TextWrapped = true
				Dialog.Root.Size = UDim2.fromOffset(Window.Size.X.Offset - 120, Content.TextBounds.Y + 150)

			for _, Button in next, Config.Buttons do
				Dialog:Button(Button.Title, Button.Callback)

			Dialog:Open()

		local TabModule = Components.Tab:Init(Window)
		function Window:AddTab(TabConfig)
			return TabModule:New(TabConfig.Title, TabConfig.Icon, Window.TabHolder)

		function Window:SelectTab(Tab)
			TabModule:SelectTab(Tab)

		Creator.AddSignal(Window.TabHolder:GetPropertyChangedSignal("CanvasPosition"), function()
			LastValue = TabModule:GetCurrentTabPos() + 16
			LastTime = 0
			Window.SelectorPosMotor:setGoal(Instant(TabModule:GetCurrentTabPos()))

		return Window

local ElementsTable = {}
local AddSignal = Creator.AddSignal

ElementsTable.Button = (function()
	local Element = {}
	Element.__index = Element
	Element.__type = "Button"

	function Element:New(Config)
		assert(Config.Title, "Button - Missing Title")
		Config.Callback = Config.Callback or function() end

		local ButtonFrame = Components.Element(Config.Title, Config.Description, self.Container, true, Config)

		local ButtonIco = New("ImageLabel", {
			Image = "rbxassetid://10709791437",
			Size = UDim2.fromOffset(16, 16),
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.new(1, -10, 0.5, 0),
			Parent = ButtonFrame.Frame,
				ImageColor3 = "Text",

		Creator.AddSignal(ButtonFrame.Frame.MouseButton1Click, function()
			Library:SafeCallback(Config.Callback)

		return ButtonFrame

	return Element
ElementsTable.Toggle = (function()
	Element.__type = "Toggle"

	function Element:New(Idx, Config)
		assert(Config.Title, "Toggle - Missing Title")

		local Toggle = {
			Value = Config.Default or false,
			Callback = Config.Callback or function(Value) end,
			Type = "Toggle",

		local ToggleFrame = Components.Element(Config.Title, Config.Description, self.Container, true, Config)
		ToggleFrame.DescLabel.Size = UDim2.new(1, -54, 0, 14)

		Toggle.SetTitle = ToggleFrame.SetTitle
		Toggle.SetDesc = ToggleFrame.SetDesc
		Toggle.Visible = ToggleFrame.Visible
		Toggle.Elements = ToggleFrame

		local ToggleCircle = New("ImageLabel", {
			Size = UDim2.fromOffset(14, 14),
			Position = UDim2.new(0, 2, 0.5, 0),
			Image = "http://www.roblox.com/asset/?id=12266946128",
			ImageTransparency = 0.5,
				ImageColor3 = "ToggleSlider",

		local ToggleBorder = New("UIStroke", {
				Color = "ToggleSlider",

		local ToggleSlider = New("Frame", {
			Size = UDim2.fromOffset(36, 18),
			Parent = ToggleFrame.Frame,
				CornerRadius = UDim.new(0, 9),
			ToggleBorder,
			ToggleCircle,

		function Toggle:OnChanged(Func)
			Toggle.Changed = Func
			Func(Toggle.Value)

		function Toggle:SetValue(Value)
			Value = not not Value
			Toggle.Value = Value

			Creator.OverrideTag(ToggleBorder, { Color = Toggle.Value and "Accent" or "ToggleSlider" })
			Creator.OverrideTag(ToggleCircle, { ImageColor3 = Toggle.Value and "ToggleToggled" or "ToggleSlider" })
			TweenService:Create(
				ToggleCircle,
				TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
				{ Position = UDim2.new(0, Toggle.Value and 19 or 2, 0.5, 0) }
			):Play()
				ToggleSlider,
				{ BackgroundTransparency = Toggle.Value and 0.45 or 1 }
			ToggleCircle.ImageTransparency = Toggle.Value and 0 or 0.5

			Library:SafeCallback(Toggle.Callback, Toggle.Value)
			Library:SafeCallback(Toggle.Changed, Toggle.Value)

		function Toggle:Destroy()
			ToggleFrame:Destroy()
			Library.Options[Idx] = nil

		Creator.AddSignal(ToggleFrame.Frame.MouseButton1Click, function()
			Toggle:SetValue(not Toggle.Value)

		Toggle:SetValue(Toggle.Value)

		Library.Options[Idx] = Toggle
		return Toggle

ElementsTable.Dropdown = (function()
	Element.__type = "Dropdown"


		local Dropdown = {
			Values = Config.Values,
			Value = Config.Default,
			Multi = Config.Multi,
			Buttons = {},
			Opened = false,
			Type = "Dropdown",
			Callback = Config.Callback or function() end,
			Searchable = Config.Searchable or false

		if Dropdown.Multi and Config.AllowNull then
			Dropdown.Value = {}

		local DropdownFrame = Components.Element(Config.Title, Config.Description, self.Container, false, Config)
		DropdownFrame.DescLabel.Size = UDim2.new(1, -170, 0, 14)

		Dropdown.SetTitle = DropdownFrame.SetTitle
		Dropdown.SetDesc = DropdownFrame.SetDesc
		Dropdown.Visible = DropdownFrame.Visible
		Dropdown.Elements = DropdownFrame

		local DropdownDisplay = New("TextBox", {
			FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
			PlaceholderText = "Value",
			PlaceholderColor3 = Color3.fromRGB(240, 240, 240),
			Size = UDim2.new(1, -40, 0.5, 0),
			Position = UDim2.new(0, 8, 0.5, 0),
			TextTruncate = Enum.TextTruncate.AtEnd,
			Interactable = Dropdown.Searchable,
				PlaceholderColor3 = "Text"

		local DropdownIco = New("ImageLabel", {
			Image = "rbxassetid://10709790948",
			Position = UDim2.new(1, -8, 0.5, 0),
			Rotation = 180,

		local DropdownInner = New("TextButton", {
			Size = UDim2.fromOffset(160, 30),
			Parent = DropdownFrame.Frame,
				BackgroundColor3 = "DropdownFrame",
				CornerRadius = UDim.new(0, 5),
					Color = "InElementBorder",
			DropdownIco,
			DropdownDisplay,

		local DropdownListLayout = New("UIListLayout", {
			Padding = UDim.new(0, 3),

		local DropdownScrollFrame = New("ScrollingFrame", {
			Size = UDim2.new(1, -5, 1, -10),
			Position = UDim2.fromOffset(5, 5),
			ScrollBarImageTransparency = 0.75,
			ScrollBarThickness = 5,
			DropdownListLayout,

		local DropdownHolderFrame = New("Frame", {
			Size = UDim2.fromScale(1, 0.6),
				BackgroundColor3 = "DropdownHolder",
			DropdownScrollFrame,
				CornerRadius = UDim.new(0, 7),
					Color = "DropdownBorder",
				Image = "http://www.roblox.com/asset/?id=5554236805",
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(23, 23, 277, 277),
				Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
				Position = UDim2.fromOffset(-15, -15),
				ImageTransparency = 0.1,

		local DropdownHolderCanvas = New("Frame", {
			Size = UDim2.fromOffset(170, 300),
			Parent = Library.GUI,
			DropdownHolderFrame,
				MinSize = Vector2.new(170, 0),
		table.insert(Library.OpenFrames, DropdownHolderCanvas)

		local function RecalculateListPosition()
			local Add = -40
			if (Camera and Camera.ViewportSize.Y or 600) - DropdownInner.AbsolutePosition.Y < DropdownHolderCanvas.AbsoluteSize.Y - 5 then
				Add = DropdownHolderCanvas.AbsoluteSize.Y
				- 5
				- ((Camera and Camera.ViewportSize.Y or 600) - DropdownInner.AbsolutePosition.Y)
					+ 40
			DropdownHolderCanvas.Position =
				UDim2.fromOffset(DropdownInner.AbsolutePosition.X - 1, DropdownInner.AbsolutePosition.Y - 5 - Add)

		local ListSizeX = 0
		local function RecalculateListSize()
			if #Dropdown.Values > 10 then
				DropdownHolderCanvas.Size = UDim2.fromOffset(ListSizeX, 392)
				DropdownHolderCanvas.Size = UDim2.fromOffset(ListSizeX, DropdownListLayout.AbsoluteContentSize.Y + 10)

		local function RecalculateCanvasSize()
			DropdownScrollFrame.CanvasSize = UDim2.fromOffset(0, DropdownListLayout.AbsoluteContentSize.Y)

		RecalculateListPosition()
		RecalculateListSize()

		Creator.AddSignal(DropdownInner:GetPropertyChangedSignal("AbsolutePosition"), RecalculateListPosition)

		Creator.AddSignal(DropdownInner.MouseButton1Click, function()
			if Dropdown.Opened then
				Dropdown:Close()
			Dropdown:Open()

		Creator.AddSignal(DropdownInner.InputBegan, function(Input)
			if Input.UserInputType == Enum.UserInputType.Touch then
				if Dropdown.Opened then
					Dropdown:Close()
				Dropdown:Open()

		Creator.AddSignal(DropdownDisplay:GetPropertyChangedSignal("Text"), function()
			local Text = DropdownDisplay.Text
			if #Text == 0 then
				for _, Element in next, DropdownScrollFrame:GetChildren() do
					if not Element:IsA("UIListLayout") then
						local Value = Element.ButtonLabel.Text
						local Similar = Value:lower():match(Text:lower()) or Value:lower() == Text:lower()
						Element.Visible = true
			for _, Element in next, DropdownScrollFrame:GetChildren() do
				if not Element:IsA("UIListLayout") then
					local Value = Element.ButtonLabel.Text
					local Similar = Value:lower():match(Text:lower()) or Value:lower() == Text:lower()
					Element.Visible = Similar and true or false


			RecalculateListPosition()
			RecalculateListSize()

		Creator.AddSignal(DropdownDisplay.Focused, function()
			DropdownDisplay.Text = ""

		Creator.AddSignal(DropdownDisplay.FocusLost, function(Enter, Input)
			if #DropdownDisplay.Text > 0 then
				local Tick = tick()
				repeat wait() until tick() - Tick > 5 or DropdownDisplay:IsFocused()
				if not DropdownDisplay:IsFocused() then
					DropdownDisplay.Text = ""
					Dropdown:Display()

		local LastOpenTime = 0
				if tick() - LastOpenTime < 0.1 then
				local AbsPos, AbsSize = DropdownHolderFrame.AbsolutePosition, DropdownHolderFrame.AbsoluteSize
				if
					Mouse.X < AbsPos.X
					or Mouse.X > AbsPos.X + AbsSize.X
					or Mouse.Y < (AbsPos.Y - 20 - 1)
					or Mouse.Y > AbsPos.Y + AbsSize.Y
				then

		local ScrollFrame = self.ScrollFrame
		function Dropdown:Open()
			Dropdown.Opened = true
			LastOpenTime = tick()
			DropdownDisplay.Interactable = Dropdown.Searchable and true or false
			ScrollFrame.ScrollingEnabled = false
			DropdownHolderCanvas.Visible = true
				DropdownHolderFrame,
				TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
				{ Size = UDim2.fromScale(1, 1) }
				DropdownIco,
				{ Rotation = 0 }
			if Dropdown.Searchable then
				DropdownDisplay:CaptureFocus()

		function Dropdown:Close()
			Dropdown.Opened = false
			ScrollFrame.ScrollingEnabled = true
			DropdownDisplay.Interactable = false
			DropdownHolderFrame.Size = UDim2.fromScale(1, 0.6)
			DropdownHolderCanvas.Visible = false
				{ Rotation = 180 }
			DropdownDisplay:ReleaseFocus(false)
			Dropdown:Display()

		function Dropdown:Display()
			local Values = Dropdown.Values
			local Str = ""

			if Config.Multi then
				for Idx, Value in next, Values do
					if Dropdown.Value[Value] then
						Str = Str .. Value .. ", "
				Str = Str:sub(1, #Str - 2)
				Str = Dropdown.Value or ""

			DropdownDisplay.PlaceholderText = (Str == "" and "--" or Str)

		function Dropdown:GetActiveValues()
				local T = {}

				for Value, Bool in next, Dropdown.Value do
					table.insert(T, Value)

				return T
				return Dropdown.Value and 1 or 0

		function Dropdown:SetActiveValues(Value)
			Dropdown.Value = Value

			Library:SafeCallback(Dropdown.Callback, Dropdown.Value)
			Library:SafeCallback(Dropdown.Changed, Dropdown.Value)

			Dropdown:BuildDropdownList()

		function Dropdown:BuildDropdownList()
			local Buttons = {}

					Element:Destroy()

			local Count = 0

			for Idx, Value in next, Values do
				local Table = {}

				Count = Count + 1

				local ButtonSelector = New("Frame", {
					Size = UDim2.fromOffset(4, 14),
					BackgroundColor3 = Color3.fromRGB(76, 194, 255),
					Position = UDim2.fromOffset(-1, 16),
					AnchorPoint = Vector2.new(0, 0.5),
						BackgroundColor3 = "Accent",
				}, {
					New("UICorner", {
						CornerRadius = UDim.new(0, 2),
					}),

				local ButtonLabel = New("TextLabel", {
					FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json"),
					Text = Value,
					TextColor3 = Color3.fromRGB(200, 200, 200),
					TextSize = 13,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.fromScale(1, 1),
					Position = UDim2.fromOffset(10, 0),
					Name = "ButtonLabel",

				local Button = New("TextButton", {
					Size = UDim2.new(1, -5, 0, 32),
					ZIndex = 23,
					Text = "",
					Parent = DropdownScrollFrame,
						BackgroundColor3 = "DropdownOption",
					ButtonSelector,
					ButtonLabel,
						CornerRadius = UDim.new(0, 6),

				local Selected

				if Config.Multi then
					Selected = Dropdown.Value[Value]
				else
					Selected = Dropdown.Value == Value

				local BackMotor, SetBackTransparency = Creator.SpringMotor(1, Button, "BackgroundTransparency")
				local SelMotor, SetSelTransparency = Creator.SpringMotor(1, ButtonSelector, "BackgroundTransparency")
				local SelectorSizeMotor = Flipper.SingleMotor.new(6)

				SelectorSizeMotor:onStep(function(value)
					ButtonSelector.Size = UDim2.new(0, 4, 0, value)

				Creator.AddSignal(Button.MouseEnter, function()
					SetBackTransparency(Selected and 0.85 or 0.89)
				Creator.AddSignal(Button.MouseLeave, function()
					SetBackTransparency(Selected and 0.89 or 1)
				Creator.AddSignal(Button.MouseButton1Down, function()
					SetBackTransparency(0.92)
				Creator.AddSignal(Button.MouseButton1Up, function()

				function Table:UpdateButton()
					if Config.Multi then
						Selected = Dropdown.Value[Value]
						if Selected then
							SetBackTransparency(0.89)
					else
						Selected = Dropdown.Value == Value
						SetBackTransparency(Selected and 0.89 or 1)

					SelectorSizeMotor:setGoal(Flipper.Spring.new(Selected and 14 or 6, { frequency = 6 }))
					SetSelTransparency(Selected and 0 or 1)

				AddSignal(Button.Activated, function()
					local Try = not Selected

					if Dropdown:GetActiveValues() == 1 and not Try and not Config.AllowNull then
						if Config.Multi then
							Selected = Try
							Dropdown.Value[Value] = Selected and true or nil
						else
							Dropdown.Value = Selected and Value or nil

							for _, OtherButton in next, Buttons do
								OtherButton:UpdateButton()

						Table:UpdateButton()

						if Dropdown.Searchable and #DropdownDisplay.Text > 0 then

							Dropdown:Display()

						Library:SafeCallback(Dropdown.Callback, Dropdown.Value)
						Library:SafeCallback(Dropdown.Changed, Dropdown.Value)

				Table:UpdateButton()
				Dropdown:Display()

				Buttons[Button] = Table

			ListSizeX = 0
			for Button, Table in next, Buttons do
				if Button.ButtonLabel then
					if Button.ButtonLabel.TextBounds.X > ListSizeX then
						ListSizeX = Button.ButtonLabel.TextBounds.X
			ListSizeX = ListSizeX + 30

			RecalculateCanvasSize()

		function Dropdown:SetValues(NewValues)
			if NewValues then
				Dropdown.Values = NewValues


		function Dropdown:OnChanged(Func)
			Dropdown.Changed = Func
			Func(Dropdown.Value)

		function Dropdown:SetValue(Val)
			if Dropdown.Multi then
				local nTable = {}

				for Value, Bool in next, Val do
					if table.find(Dropdown.Values, Value) then
						nTable[Value] = true

				Dropdown.Value = nTable
				if not Val then
					Dropdown.Value = nil
				elseif table.find(Dropdown.Values, Val) then
					Dropdown.Value = Val



		function Dropdown:Destroy()
			DropdownFrame:Destroy()

		Dropdown:BuildDropdownList()
		Dropdown:Display()

		local Defaults = {}

		if type(Config.Default) == "string" then
			local Idx = table.find(Dropdown.Values, Config.Default)
			if Idx then
				table.insert(Defaults, Idx)
		elseif type(Config.Default) == "table" then
			for _, Value in next, Config.Default do
				local Idx = table.find(Dropdown.Values, Value)
				if Idx then
					table.insert(Defaults, Idx)
		elseif type(Config.Default) == "number" and Dropdown.Values[Config.Default] ~= nil then
			table.insert(Defaults, Config.Default)

		if next(Defaults) then
			for i = 1, #Defaults do
				local Index = Defaults[i]
					Dropdown.Value[Dropdown.Values[Index]] = true
					Dropdown.Value = Dropdown.Values[Index]

				if not Config.Multi then
					break


		Library.Options[Idx] = Dropdown
		return Dropdown

ElementsTable.Paragraph = (function()
	local Paragraph = {}
	Paragraph.__index = Paragraph
	Paragraph.__type = "Paragraph"

	function Paragraph:New(Config)
		assert(Config.Title, "Paragraph - Missing Title")
		Config.Content = Config.Content or ""

		local Paragraph = Components.Element(Config.Title, Config.Content, Paragraph.Container, false, Config)
		Paragraph.Frame.BackgroundTransparency = 0.92
		Paragraph.Border.Transparency = 0.6

		Paragraph.SetTitle = Paragraph.SetTitle
		Paragraph.SetDesc = Paragraph.SetDesc
		Paragraph.Visible = Paragraph.Visible
		Paragraph.Elements = Paragraph

		return Paragraph

	return Paragraph
ElementsTable.Slider = (function()
	Element.__type = "Slider"

		assert(Config.Title, "Slider - Missing Title.")
		assert(Config.Default, "Slider - Missing default value.")
		assert(Config.Min, "Slider - Missing minimum value.")
		assert(Config.Max, "Slider - Missing maximum value.")
		assert(Config.Rounding, "Slider - Missing rounding value.")

		local Slider = {
			Value = nil,
			Min = Config.Min,
			Max = Config.Max,
			Rounding = Config.Rounding,
			Type = "Slider",

		local Dragging = false

		local SliderFrame = Components.Element(Config.Title, Config.Description, self.Container, false, Config)
		SliderFrame.DescLabel.Size = UDim2.new(1, -170, 0, 14)

		Slider.Elements = SliderFrame
		Slider.SetTitle = SliderFrame.SetTitle
		Slider.SetDesc = SliderFrame.SetDesc
		Slider.Visible = SliderFrame.Visible

		local SliderDot = New("ImageLabel", {
			Position = UDim2.new(0, -7, 0.5, 0),
				ImageColor3 = "Accent",

		local SliderRail = New("Frame", {
			Position = UDim2.fromOffset(7, 0),
			Size = UDim2.new(1, -14, 1, 0),
			SliderDot,

		local SliderFill = New("Frame", {
			Size = UDim2.new(0, 0, 1, 0),
				CornerRadius = UDim.new(1, 0),

		local SliderDisplay = New("TextLabel", {
			Text = "Value",
			TextXAlignment = Enum.TextXAlignment.Right,
			Size = UDim2.new(0, 100, 0, 14),
			Position = UDim2.new(0, -4, 0.5, 0),

		local SliderInner = New("Frame", {
			Size = UDim2.new(1, 0, 0, 4),
			BackgroundTransparency = 0.4,
			Parent = SliderFrame.Frame,
				BackgroundColor3 = "SliderRail",
				MaxSize = Vector2.new(150, math.huge),
			SliderDisplay,
			SliderFill,
			SliderRail,

		Creator.AddSignal(SliderDot.InputBegan, function(Input)

		Creator.AddSignal(SliderDot.InputEnded, function(Input)
				Dragging = false

			if Dragging then
				local position = nil
				if Input.UserInputType == Enum.UserInputType.MouseMovement then
					position = Input.Position
				elseif Input.UserInputType == Enum.UserInputType.Touch then

				if position then
					local SizeScale = math.clamp((position.X - SliderRail.AbsolutePosition.X) / SliderRail.AbsoluteSize.X, 0, 1)
					Slider:SetValue(Slider.Min + ((Slider.Max - Slider.Min) * SizeScale))

		Creator.AddSignal(SliderRail.InputBegan, function(Input)
				local SizeScale = math.clamp((Input.Position.X - SliderRail.AbsolutePosition.X) / SliderRail.AbsoluteSize.X, 0, 1)
				Slider:SetValue(Slider.Min + ((Slider.Max - Slider.Min) * SizeScale))

		Creator.AddSignal(SliderRail.InputEnded, function(Input)

		function Slider:OnChanged(Func)
			Slider.Changed = Func
			Func(Slider.Value)

		function Slider:SetValue(Value)
			self.Value = Library:Round(math.clamp(Value, Slider.Min, Slider.Max), Slider.Rounding)
			SliderDot.Position = UDim2.new((self.Value - Slider.Min) / (Slider.Max - Slider.Min), -7, 0.5, 0)
			SliderFill.Size = UDim2.fromScale((self.Value - Slider.Min) / (Slider.Max - Slider.Min), 1)
			SliderDisplay.Text = tostring(self.Value)

			Library:SafeCallback(Slider.Callback, self.Value)
			Library:SafeCallback(Slider.Changed, self.Value)

		function Slider:Destroy()
			SliderFrame:Destroy()

		Slider:SetValue(Config.Default)

		Library.Options[Idx] = Slider
		return Slider

ElementsTable.Keybind = (function()
	Element.__type = "Keybind"

		assert(Config.Title, "KeyBind - Missing Title")
		assert(Config.Default, "KeyBind - Missing default value.")

		local Keybind = {
			Toggled = false,
			Mode = Config.Mode or "Toggle",
			Type = "Keybind",
			ChangedCallback = Config.ChangedCallback or function(New) end,

		local Picking = false

		local KeybindFrame = Components.Element(Config.Title, Config.Description, self.Container, true)

		Keybind.SetTitle = KeybindFrame.SetTitle
		Keybind.SetDesc = KeybindFrame.SetDesc
		Keybind.Visible = KeybindFrame.Visible
		Keybind.Elements = KeybindFrame

		local KeybindDisplayLabel = New("TextLabel", {
			Text = Config.Default,
			Size = UDim2.new(0, 0, 0, 14),
			Position = UDim2.new(0, 0, 0.5, 0),
			AutomaticSize = Enum.AutomaticSize.X,

		local KeybindDisplayFrame = New("TextButton", {
			Size = UDim2.fromOffset(0, 30),
			Parent = KeybindFrame.Frame,
				BackgroundColor3 = "Keybind",
				PaddingLeft = UDim.new(0, 8),
				PaddingRight = UDim.new(0, 8),
			KeybindDisplayLabel,

		function Keybind:GetState()
			if UserInputService:GetFocusedTextBox() and Keybind.Mode ~= "Always" then
				return false

			if Keybind.Mode == "Always" then
				return true
			elseif Keybind.Mode == "Hold" then
				if Keybind.Value == "None" then
					return false

				local Key = Keybind.Value

				if Key == "MouseLeft" or Key == "MouseRight" then
					return Key == "MouseLeft" and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
						or Key == "MouseRight"
						and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
					return UserInputService:IsKeyDown(Enum.KeyCode[Keybind.Value])
				return Keybind.Toggled

		function Keybind:SetValue(Key, Mode)
			Key = Key or Keybind.Key
			Mode = Mode or Keybind.Mode

			KeybindDisplayLabel.Text = Key
			Keybind.Value = Key
			Keybind.Mode = Mode

		function Keybind:OnClick(Callback)
			Keybind.Clicked = Callback

		function Keybind:OnChanged(Callback)
			Keybind.Changed = Callback
			Callback(Keybind.Value)

		function Keybind:DoClick()
			Library:SafeCallback(Keybind.Callback, Keybind.Toggled)
			Library:SafeCallback(Keybind.Clicked, Keybind.Toggled)

		function Keybind:Destroy()
			KeybindFrame:Destroy()

		Creator.AddSignal(KeybindDisplayFrame.InputBegan, function(Input)
				Picking = true
				KeybindDisplayLabel.Text = "..."

				wait(0.2)

				local Event
				Event = UserInputService.InputBegan:Connect(function(Input)
					local Key

					if Input.UserInputType == Enum.UserInputType.Keyboard then
						Key = Input.KeyCode.Name
					elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
						Key = "MouseLeft"
					elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
						Key = "MouseRight"

					local EndedEvent
					EndedEvent = UserInputService.InputEnded:Connect(function(Input)
						if
							Input.KeyCode.Name == Key
							or Key == "MouseLeft" and Input.UserInputType == Enum.UserInputType.MouseButton1
							or Key == "MouseRight" and Input.UserInputType == Enum.UserInputType.MouseButton2
						then
							Picking = false

							KeybindDisplayLabel.Text = Key
							Keybind.Value = Key

							Library:SafeCallback(Keybind.ChangedCallback, Input.KeyCode or Input.UserInputType)
							Library:SafeCallback(Keybind.Changed, Input.KeyCode or Input.UserInputType)

							Event:Disconnect()
							EndedEvent:Disconnect()
					end)

			if not Picking and not UserInputService:GetFocusedTextBox() then
				if Keybind.Mode == "Toggle" then
					local Key = Keybind.Value

					if Key == "MouseLeft" or Key == "MouseRight" then
							Key == "MouseLeft" and Input.UserInputType == Enum.UserInputType.MouseButton1
							Keybind.Toggled = not Keybind.Toggled
							Keybind:DoClick()
					elseif Input.UserInputType == Enum.UserInputType.Keyboard then
						if Input.KeyCode.Name == Key then

		Library.Options[Idx] = Keybind
		return Keybind

ElementsTable.Colorpicker = (function()
	Element.__type = "Colorpicker"

		assert(Config.Title, "Colorpicker - Missing Title")
		assert(Config.Default, "AddColorPicker: Missing default value.")

		local Colorpicker = {
			Transparency = Config.Transparency or 0,
			Type = "Colorpicker",
			Title = type(Config.Title) == "string" and Config.Title or "Colorpicker",
			Callback = Config.Callback or function(Color) end,

		function Colorpicker:SetHSVFromRGB(Color)
			local H, S, V = Color3.toHSV(Color)
			Colorpicker.Hue = H
			Colorpicker.Sat = S
			Colorpicker.Vib = V

		Colorpicker:SetHSVFromRGB(Colorpicker.Value)

		local ColorpickerFrame = Components.Element(Config.Title, Config.Description, self.Container, true)

		Colorpicker.SetTitle = ColorpickerFrame.SetTitle
		Colorpicker.SetDesc = ColorpickerFrame.SetDesc
		Colorpicker.Visible = ColorpickerFrame.Visible
		Colorpicker.Elements = ColorpickerFrame

		local DisplayFrameColor = New("Frame", {
			BackgroundColor3 = Colorpicker.Value,
			Parent = ColorpickerFrame.Frame,

		local DisplayFrame = New("ImageLabel", {
			Size = UDim2.fromOffset(26, 26),
			Image = "http://www.roblox.com/asset/?id=14204231522",
			ImageTransparency = 0.45,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.fromOffset(40, 40),
			DisplayFrameColor,

		local function CreateColorDialog()
			local Dialog = Components.Dialog:Create()
			Dialog.Title.Text = Colorpicker.Title
			Dialog.Root.Size = UDim2.fromOffset(430, 330)

			local Hue, Sat, Vib = Colorpicker.Hue, Colorpicker.Sat, Colorpicker.Vib
			local Transparency = Colorpicker.Transparency

			local function CreateInput()
				local Box = Components.Textbox()
				Box.Frame.Parent = Dialog.Root
				Box.Frame.Size = UDim2.new(0, 90, 0, 32)

				return Box

			local function CreateInputLabel(Text, Pos)
				return New("TextLabel", {
						Enum.FontWeight.Medium,
					Text = Text,
					TextColor3 = Color3.fromRGB(240, 240, 240),
					Size = UDim2.new(1, 0, 0, 32),
					Position = Pos,
					Parent = Dialog.Root,

			local function GetRGB()
				local Value = Color3.fromHSV(Hue, Sat, Vib)
				return { R = math.floor(Value.r * 255), G = math.floor(Value.g * 255), B = math.floor(Value.b * 255) }

			local SatCursor = New("ImageLabel", {
				Size = UDim2.new(0, 18, 0, 18),
				ScaleType = Enum.ScaleType.Fit,
				Image = "http://www.roblox.com/asset/?id=4805639000",

			local SatVibMap = New("ImageLabel", {
				Size = UDim2.fromOffset(180, 160),
				Position = UDim2.fromOffset(20, 55),
				Image = "rbxassetid://4155801252",
				BackgroundColor3 = Colorpicker.Value,
				BackgroundTransparency = 0,
					CornerRadius = UDim.new(0, 4),
				SatCursor,

			local OldColorFrame = New("Frame", {
				BackgroundTransparency = Colorpicker.Transparency,

			local OldColorFrameChecker = New("ImageLabel", {
				Image = "http://www.roblox.com/asset/?id=14204231522",
				ImageTransparency = 0.45,
				TileSize = UDim2.fromOffset(40, 40),
				Position = UDim2.fromOffset(112, 220),
				Size = UDim2.fromOffset(88, 24),
					Thickness = 2,
					Transparency = 0.75,
				OldColorFrame,

			local DialogDisplayFrame = New("Frame", {

			local DialogDisplayFrameChecker = New("ImageLabel", {
				Position = UDim2.fromOffset(20, 220),
				DialogDisplayFrame,

			local SequenceTable = {}

			for Color = 0, 1, 0.1 do
				table.insert(SequenceTable, ColorSequenceKeypoint.new(Color, Color3.fromHSV(Color, 1, 1)))

			local HueSliderGradient = New("UIGradient", {
				Color = ColorSequence.new(SequenceTable),
				Rotation = 90,

			local HueDragHolder = New("Frame", {
				Size = UDim2.new(1, 0, 1, -10),
				Position = UDim2.fromOffset(0, 5),

			local HueDrag = New("ImageLabel", {
				Size = UDim2.fromOffset(14, 14),
				Image = "http://www.roblox.com/asset/?id=12266946128",
				Parent = HueDragHolder,
					ImageColor3 = "DialogInput",

			local HueSlider = New("Frame", {
				Size = UDim2.fromOffset(12, 190),
				Position = UDim2.fromOffset(210, 55),
					CornerRadius = UDim.new(1, 0),
				HueSliderGradient,
				HueDragHolder,

			local HexInput = CreateInput()
			HexInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 55)
			CreateInputLabel("Hex", UDim2.fromOffset(Config.Transparency and 360 or 340, 55))

			local RedInput = CreateInput()
			RedInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 95)
			CreateInputLabel("Red", UDim2.fromOffset(Config.Transparency and 360 or 340, 95))

			local GreenInput = CreateInput()
			GreenInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 135)
			CreateInputLabel("Green", UDim2.fromOffset(Config.Transparency and 360 or 340, 135))

			local BlueInput = CreateInput()
			BlueInput.Frame.Position = UDim2.fromOffset(Config.Transparency and 260 or 240, 175)
			CreateInputLabel("Blue", UDim2.fromOffset(Config.Transparency and 360 or 340, 175))

			local AlphaInput
			if Config.Transparency then
				AlphaInput = CreateInput()
				AlphaInput.Frame.Position = UDim2.fromOffset(260, 215)
				CreateInputLabel("Alpha", UDim2.fromOffset(360, 215))

			local TransparencySlider, TransparencyDrag, TransparencyColor
				local TransparencyDragHolder = New("Frame", {
					Size = UDim2.new(1, 0, 1, -10),
					Position = UDim2.fromOffset(0, 5),

				TransparencyDrag = New("ImageLabel", {
					Size = UDim2.fromOffset(14, 14),
					Image = "http://www.roblox.com/asset/?id=12266946128",
					Parent = TransparencyDragHolder,
						ImageColor3 = "DialogInput",

				TransparencyColor = New("Frame", {
					New("UIGradient", {
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 0),
							NumberSequenceKeypoint.new(1, 1),
						}),
						Rotation = 270,
						CornerRadius = UDim.new(1, 0),

				TransparencySlider = New("Frame", {
					Size = UDim2.fromOffset(12, 190),
					Position = UDim2.fromOffset(230, 55),
					New("ImageLabel", {
						Image = "http://www.roblox.com/asset/?id=14204231522",
						ImageTransparency = 0.45,
						ScaleType = Enum.ScaleType.Tile,
						TileSize = UDim2.fromOffset(40, 40),
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1),
						Parent = Dialog.Root,
					}, {
						New("UICorner", {
							CornerRadius = UDim.new(1, 0),
					TransparencyColor,
					TransparencyDragHolder,

			local function Display()
				SatVibMap.BackgroundColor3 = Color3.fromHSV(Hue, 1, 1)
				HueDrag.Position = UDim2.new(0, -1, Hue, -6)
				SatCursor.Position = UDim2.new(Sat, 0, 1 - Vib, 0)
				DialogDisplayFrame.BackgroundColor3 = Color3.fromHSV(Hue, Sat, Vib)

				HexInput.Input.Text = "#" .. Color3.fromHSV(Hue, Sat, Vib):ToHex()
				RedInput.Input.Text = GetRGB()["R"]
				GreenInput.Input.Text = GetRGB()["G"]
				BlueInput.Input.Text = GetRGB()["B"]

				if Config.Transparency then
					TransparencyColor.BackgroundColor3 = Color3.fromHSV(Hue, Sat, Vib)
					DialogDisplayFrame.BackgroundTransparency = Transparency
					TransparencyDrag.Position = UDim2.new(0, -1, 1 - Transparency, -6)
					AlphaInput.Input.Text = Library:Round((1 - Transparency) * 100, 0) .. "%"

			Creator.AddSignal(HexInput.Input.FocusLost, function(Enter)
				if Enter then
					local Success, Result = pcall(Color3.fromHex, HexInput.Input.Text)
					if Success and typeof(Result) == "Color3" then
						Hue, Sat, Vib = Color3.toHSV(Result)
				Display()

			Creator.AddSignal(RedInput.Input.FocusLost, function(Enter)
					local CurrentColor = GetRGB()
					local Success, Result = pcall(Color3.fromRGB, RedInput.Input.Text, CurrentColor["G"], CurrentColor["B"])
						if tonumber(RedInput.Input.Text) <= 255 then
							Hue, Sat, Vib = Color3.toHSV(Result)

			Creator.AddSignal(GreenInput.Input.FocusLost, function(Enter)
					local Success, Result =
						pcall(Color3.fromRGB, CurrentColor["R"], GreenInput.Input.Text, CurrentColor["B"])
						if tonumber(GreenInput.Input.Text) <= 255 then

			Creator.AddSignal(BlueInput.Input.FocusLost, function(Enter)
						pcall(Color3.fromRGB, CurrentColor["R"], CurrentColor["G"], BlueInput.Input.Text)
						if tonumber(BlueInput.Input.Text) <= 255 then

				Creator.AddSignal(AlphaInput.Input.FocusLost, function(Enter)
					if Enter then
						pcall(function()
							local Value = tonumber(AlphaInput.Input.Text)
							if Value >= 0 and Value <= 100 then
								Transparency = 1 - Value * 0.01
						end)
					Display()

			Creator.AddSignal(SatVibMap.InputBegan, function(Input)
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
					while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local MinX = SatVibMap.AbsolutePosition.X
						local MaxX = MinX + SatVibMap.AbsoluteSize.X
						local MouseX = math.clamp(Mouse.X, MinX, MaxX)

						local MinY = SatVibMap.AbsolutePosition.Y
						local MaxY = MinY + SatVibMap.AbsoluteSize.Y
						local MouseY = math.clamp(Mouse.Y, MinY, MaxY)

						Sat = (MouseX - MinX) / (MaxX - MinX)
						Vib = 1 - ((MouseY - MinY) / (MaxY - MinY))
						Display()

						RenderStepped:Wait()

			Creator.AddSignal(HueSlider.InputBegan, function(Input)
						local MinY = HueSlider.AbsolutePosition.Y
						local MaxY = MinY + HueSlider.AbsoluteSize.Y

						Hue = ((MouseY - MinY) / (MaxY - MinY))


				Creator.AddSignal(TransparencySlider.InputBegan, function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 then
						while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local MinY = TransparencySlider.AbsolutePosition.Y
							local MaxY = MinY + TransparencySlider.AbsoluteSize.Y
							local MouseY = math.clamp(Mouse.Y, MinY, MaxY)

							Transparency = 1 - ((MouseY - MinY) / (MaxY - MinY))
							Display()

							RenderStepped:Wait()

			Display()

			Dialog:Button("Done", function()
				Colorpicker:SetValue({ Hue, Sat, Vib }, Transparency)
			Dialog:Button("Cancel")

		function Colorpicker:Display()
			Colorpicker.Value = Color3.fromHSV(Colorpicker.Hue, Colorpicker.Sat, Colorpicker.Vib)

			DisplayFrameColor.BackgroundColor3 = Colorpicker.Value
			DisplayFrameColor.BackgroundTransparency = Colorpicker.Transparency

			Element.Library:SafeCallback(Colorpicker.Callback, Colorpicker.Value)
			Element.Library:SafeCallback(Colorpicker.Changed, Colorpicker.Value)

		function Colorpicker:SetValue(HSV, Transparency)
			local Color = Color3.fromHSV(HSV[1], HSV[2], HSV[3])

			Colorpicker.Transparency = Transparency or 0
			Colorpicker:SetHSVFromRGB(Color)
			Colorpicker:Display()

		function Colorpicker:SetValueRGB(Color, Transparency)

		function Colorpicker:OnChanged(Func)
			Colorpicker.Changed = Func
			Func(Colorpicker.Value)

		function Colorpicker:Destroy()
			ColorpickerFrame:Destroy()

		Creator.AddSignal(ColorpickerFrame.Frame.MouseButton1Click, function()
			CreateColorDialog()

		Creator.AddSignal(ColorpickerFrame.Frame.InputBegan, function(Input)
				CreateColorDialog()

		Colorpicker:Display()

		Library.Options[Idx] = Colorpicker
		return Colorpicker

ElementsTable.Input = (function()
	Element.__type = "Input"

		assert(Config.Title, "Input - Missing Title")

		local Input = {
			Value = Config.Default or "",
			Numeric = Config.Numeric or false,
			Finished = Config.Finished or false,
			Type = "Input",

		local InputFrame = Components.Element(Config.Title, Config.Description, self.Container, false)

		Input.SetTitle = InputFrame.SetTitle
		Input.SetDesc = InputFrame.SetDesc
		Input.Visible = InputFrame.Visible
		Input.Elements = InputFrame

		local Textbox = Components.Textbox(InputFrame.Frame, true)
		Textbox.Frame.Position = UDim2.new(1, -10, 0.5, 0)
		Textbox.Frame.AnchorPoint = Vector2.new(1, 0.5)
		Textbox.Frame.Size = UDim2.fromOffset(160, 30)
		Textbox.Input.Text = Config.Default or ""
		Textbox.Input.PlaceholderText = Config.Placeholder or ""

		local Box = Textbox.Input

		function Input:SetValue(Text)
			if Config.MaxLength and #Text > Config.MaxLength then
				Text = Text:sub(1, Config.MaxLength)

			if Input.Numeric then
				if (not tonumber(Text)) and Text:len() > 0 then
					Text = Input.Value

			Input.Value = Text
			Box.Text = Text

			Library:SafeCallback(Input.Callback, Input.Value)
			Library:SafeCallback(Input.Changed, Input.Value)

		if Input.Finished then
			AddSignal(Box.FocusLost, function(enter)
				if not enter then
				Input:SetValue(Box.Text)
			AddSignal(Box:GetPropertyChangedSignal("Text"), function()

		function Input:OnChanged(Func)
			Input.Changed = Func
			Func(Input.Value)

		function Input:Destroy()
			InputFrame:Destroy()

		Library.Options[Idx] = Input
		return Input


local NotificationModule = Components.Notification
NotificationModule:Init(GUI)


local Icons = {
	["lucide-accessibility"] = "rbxassetid://10709751939",
	["lucide-activity"] = "rbxassetid://10709752035",
	["lucide-air-vent"] = "rbxassetid://10709752131",
	["lucide-airplay"] = "rbxassetid://10709752254",
	["lucide-alarm-check"] = "rbxassetid://10709752405",
	["lucide-alarm-clock"] = "rbxassetid://10709752630",
	["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
	["lucide-alarm-minus"] = "rbxassetid://10709752732",
	["lucide-alarm-plus"] = "rbxassetid://10709752825",
	["lucide-album"] = "rbxassetid://10709752906",
	["lucide-alert-circle"] = "rbxassetid://10709752996",
	["lucide-alert-octagon"] = "rbxassetid://10709753064",
	["lucide-alert-triangle"] = "rbxassetid://10709753149",
	["lucide-align-center"] = "rbxassetid://10709753570",
	["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
	["lucide-align-center-vertical"] = "rbxassetid://10709753421",
	["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
	["lucide-align-end-vertical"] = "rbxassetid://10709753808",
	["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
	["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
	["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
	["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
	["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
	["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
	["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
	["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
	["lucide-align-justify"] = "rbxassetid://10709759610",
	["lucide-align-left"] = "rbxassetid://10709759764",
	["lucide-align-right"] = "rbxassetid://10709759895",
	["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
	["lucide-align-start-vertical"] = "rbxassetid://10709760244",
	["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
	["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
	["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
	["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
	["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
	["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
	["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
	["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
	["lucide-anchor"] = "rbxassetid://10709761530",
	["lucide-angry"] = "rbxassetid://10709761629",
	["lucide-annoyed"] = "rbxassetid://10709761722",
	["lucide-aperture"] = "rbxassetid://10709761813",
	["lucide-apple"] = "rbxassetid://10709761889",
	["lucide-archive"] = "rbxassetid://10709762233",
	["lucide-archive-restore"] = "rbxassetid://10709762058",
	["lucide-armchair"] = "rbxassetid://10709762327",
	["lucide-anvil"] = "rbxassetid://77943964625400",
	["lucide-arrow-big-down"] = "rbxassetid://10747796644",
	["lucide-arrow-big-left"] = "rbxassetid://10709762574",
	["lucide-arrow-big-right"] = "rbxassetid://10709762727",
	["lucide-arrow-big-up"] = "rbxassetid://10709762879",
	["lucide-arrow-down"] = "rbxassetid://10709767827",
	["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
	["lucide-arrow-down-left"] = "rbxassetid://10709767656",
	["lucide-arrow-down-right"] = "rbxassetid://10709767750",
	["lucide-arrow-left"] = "rbxassetid://10709768114",
	["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
	["lucide-arrow-left-right"] = "rbxassetid://10709768019",
	["lucide-arrow-right"] = "rbxassetid://10709768347",
	["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
	["lucide-arrow-up"] = "rbxassetid://10709768939",
	["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
	["lucide-arrow-up-down"] = "rbxassetid://10709768538",
	["lucide-arrow-up-left"] = "rbxassetid://10709768661",
	["lucide-arrow-up-right"] = "rbxassetid://10709768787",
	["lucide-asterisk"] = "rbxassetid://10709769095",
	["lucide-at-sign"] = "rbxassetid://10709769286",
	["lucide-award"] = "rbxassetid://10709769406",
	["lucide-axe"] = "rbxassetid://10709769508",
	["lucide-axis-3d"] = "rbxassetid://10709769598",
	["lucide-baby"] = "rbxassetid://10709769732",
	["lucide-backpack"] = "rbxassetid://10709769841",
	["lucide-baggage-claim"] = "rbxassetid://10709769935",
	["lucide-banana"] = "rbxassetid://10709770005",
	["lucide-banknote"] = "rbxassetid://10709770178",
	["lucide-bar-chart"] = "rbxassetid://10709773755",
	["lucide-bar-chart-2"] = "rbxassetid://10709770317",
	["lucide-bar-chart-3"] = "rbxassetid://10709770431",
	["lucide-bar-chart-4"] = "rbxassetid://10709770560",
	["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
	["lucide-barcode"] = "rbxassetid://10747360675",
	["lucide-baseline"] = "rbxassetid://10709773863",
	["lucide-bath"] = "rbxassetid://10709773963",
	["lucide-battery"] = "rbxassetid://10709774640",
	["lucide-battery-charging"] = "rbxassetid://10709774068",
	["lucide-battery-full"] = "rbxassetid://10709774206",
	["lucide-battery-low"] = "rbxassetid://10709774370",
	["lucide-battery-medium"] = "rbxassetid://10709774513",
	["lucide-beaker"] = "rbxassetid://10709774756",
	["lucide-bed"] = "rbxassetid://10709775036",
	["lucide-bed-double"] = "rbxassetid://10709774864",
	["lucide-bed-single"] = "rbxassetid://10709774968",
	["lucide-beer"] = "rbxassetid://10709775167",
	["lucide-bell"] = "rbxassetid://10709775704",
	["lucide-bell-minus"] = "rbxassetid://10709775241",
	["lucide-bell-off"] = "rbxassetid://10709775320",
	["lucide-bell-plus"] = "rbxassetid://10709775448",
	["lucide-bell-ring"] = "rbxassetid://10709775560",
	["lucide-bike"] = "rbxassetid://10709775894",
	["lucide-binary"] = "rbxassetid://10709776050",
	["lucide-bitcoin"] = "rbxassetid://10709776126",
	["lucide-bluetooth"] = "rbxassetid://10709776655",
	["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
	["lucide-bluetooth-off"] = "rbxassetid://10709776344",
	["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
	["lucide-bold"] = "rbxassetid://10747813908",
	["lucide-bomb"] = "rbxassetid://10709781460",
	["lucide-bone"] = "rbxassetid://10709781605",
	["lucide-book"] = "rbxassetid://10709781824",
	["lucide-book-open"] = "rbxassetid://10709781717",
	["lucide-bookmark"] = "rbxassetid://10709782154",
	["lucide-bookmark-minus"] = "rbxassetid://10709781919",
	["lucide-bookmark-plus"] = "rbxassetid://10709782044",
	["lucide-bot"] = "rbxassetid://10709782230",
	["lucide-box"] = "rbxassetid://10709782497",
	["lucide-box-select"] = "rbxassetid://10709782342",
	["lucide-boxes"] = "rbxassetid://10709782582",
	["lucide-briefcase"] = "rbxassetid://10709782662",
	["lucide-brush"] = "rbxassetid://10709782758",
	["lucide-bug"] = "rbxassetid://10709782845",
	["lucide-building"] = "rbxassetid://10709783051",
	["lucide-building-2"] = "rbxassetid://10709782939",
	["lucide-bus"] = "rbxassetid://10709783137",
	["lucide-cake"] = "rbxassetid://10709783217",
	["lucide-calculator"] = "rbxassetid://10709783311",
	["lucide-calendar"] = "rbxassetid://10709789505",
	["lucide-calendar-check"] = "rbxassetid://10709783474",
	["lucide-calendar-check-2"] = "rbxassetid://10709783392",
	["lucide-calendar-clock"] = "rbxassetid://10709783577",
	["lucide-calendar-days"] = "rbxassetid://10709783673",
	["lucide-calendar-heart"] = "rbxassetid://10709783835",
	["lucide-calendar-minus"] = "rbxassetid://10709783959",
	["lucide-calendar-off"] = "rbxassetid://10709788784",
	["lucide-calendar-plus"] = "rbxassetid://10709788937",
	["lucide-calendar-range"] = "rbxassetid://10709789053",
	["lucide-calendar-search"] = "rbxassetid://10709789200",
	["lucide-calendar-x"] = "rbxassetid://10709789407",
	["lucide-calendar-x-2"] = "rbxassetid://10709789329",
	["lucide-camera"] = "rbxassetid://10709789686",
	["lucide-camera-off"] = "rbxassetid://10747822677",
	["lucide-car"] = "rbxassetid://10709789810",
	["lucide-carrot"] = "rbxassetid://10709789960",
	["lucide-cast"] = "rbxassetid://10709790097",
	["lucide-charge"] = "rbxassetid://10709790202",
	["lucide-check"] = "rbxassetid://10709790644",
	["lucide-check-circle"] = "rbxassetid://10709790387",
	["lucide-check-circle-2"] = "rbxassetid://10709790298",
	["lucide-check-square"] = "rbxassetid://10709790537",
	["lucide-chef-hat"] = "rbxassetid://10709790757",
	["lucide-cherry"] = "rbxassetid://10709790875",
	["lucide-chevron-down"] = "rbxassetid://10709790948",
	["lucide-chevron-first"] = "rbxassetid://10709791015",
	["lucide-chevron-last"] = "rbxassetid://10709791130",
	["lucide-chevron-left"] = "rbxassetid://10709791281",
	["lucide-chevron-right"] = "rbxassetid://10709791437",
	["lucide-chevron-up"] = "rbxassetid://10709791523",
	["lucide-chevrons-down"] = "rbxassetid://10709796864",
	["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
	["lucide-chevrons-left"] = "rbxassetid://10709797151",
	["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
	["lucide-chevrons-right"] = "rbxassetid://10709797382",
	["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
	["lucide-chevrons-up"] = "rbxassetid://10709797622",
	["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
	["lucide-chrome"] = "rbxassetid://10709797725",
	["lucide-circle"] = "rbxassetid://10709798174",
	["lucide-circle-dot"] = "rbxassetid://10709797837",
	["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
	["lucide-circle-slashed"] = "rbxassetid://10709798100",
	["lucide-citrus"] = "rbxassetid://10709798276",
	["lucide-clapperboard"] = "rbxassetid://10709798350",
	["lucide-clipboard"] = "rbxassetid://10709799288",
	["lucide-clipboard-check"] = "rbxassetid://10709798443",
	["lucide-clipboard-copy"] = "rbxassetid://10709798574",
	["lucide-clipboard-edit"] = "rbxassetid://10709798682",
	["lucide-clipboard-list"] = "rbxassetid://10709798792",
	["lucide-clipboard-signature"] = "rbxassetid://10709798890",
	["lucide-clipboard-type"] = "rbxassetid://10709798999",
	["lucide-clipboard-x"] = "rbxassetid://10709799124",
	["lucide-clock"] = "rbxassetid://10709805144",
	["lucide-clock-1"] = "rbxassetid://10709799535",
	["lucide-clock-10"] = "rbxassetid://10709799718",
	["lucide-clock-11"] = "rbxassetid://10709799818",
	["lucide-clock-12"] = "rbxassetid://10709799962",
	["lucide-clock-2"] = "rbxassetid://10709803876",
	["lucide-clock-3"] = "rbxassetid://10709803989",
	["lucide-clock-4"] = "rbxassetid://10709804164",
	["lucide-clock-5"] = "rbxassetid://10709804291",
	["lucide-clock-6"] = "rbxassetid://10709804435",
	["lucide-clock-7"] = "rbxassetid://10709804599",
	["lucide-clock-8"] = "rbxassetid://10709804784",
	["lucide-clock-9"] = "rbxassetid://10709804996",
	["lucide-cloud"] = "rbxassetid://10709806740",
	["lucide-cloud-cog"] = "rbxassetid://10709805262",
	["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
	["lucide-cloud-fog"] = "rbxassetid://10709805477",
	["lucide-cloud-hail"] = "rbxassetid://10709805596",
	["lucide-cloud-lightning"] = "rbxassetid://10709805727",
	["lucide-cloud-moon"] = "rbxassetid://10709805942",
	["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
	["lucide-cloud-off"] = "rbxassetid://10709806060",
	["lucide-cloud-rain"] = "rbxassetid://10709806277",
	["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
	["lucide-cloud-snow"] = "rbxassetid://10709806374",
	["lucide-cloud-sun"] = "rbxassetid://10709806631",
	["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
	["lucide-cloudy"] = "rbxassetid://10709806859",
	["lucide-clover"] = "rbxassetid://10709806995",
	["lucide-code"] = "rbxassetid://10709810463",
	["lucide-code-2"] = "rbxassetid://10709807111",
	["lucide-codepen"] = "rbxassetid://10709810534",
	["lucide-codesandbox"] = "rbxassetid://10709810676",
	["lucide-coffee"] = "rbxassetid://10709810814",
	["lucide-cog"] = "rbxassetid://10709810948",
	["lucide-coins"] = "rbxassetid://10709811110",
	["lucide-columns"] = "rbxassetid://10709811261",
	["lucide-command"] = "rbxassetid://10709811365",
	["lucide-compass"] = "rbxassetid://10709811445",
	["lucide-component"] = "rbxassetid://10709811595",
	["lucide-concierge-bell"] = "rbxassetid://10709811706",
	["lucide-connection"] = "rbxassetid://10747361219",
	["lucide-contact"] = "rbxassetid://10709811834",
	["lucide-contrast"] = "rbxassetid://10709811939",
	["lucide-cookie"] = "rbxassetid://10709812067",
	["lucide-copy"] = "rbxassetid://10709812159",
	["lucide-copyleft"] = "rbxassetid://10709812251",
	["lucide-copyright"] = "rbxassetid://10709812311",
	["lucide-corner-down-left"] = "rbxassetid://10709812396",
	["lucide-corner-down-right"] = "rbxassetid://10709812485",
	["lucide-corner-left-down"] = "rbxassetid://10709812632",
	["lucide-corner-left-up"] = "rbxassetid://10709812784",
	["lucide-corner-right-down"] = "rbxassetid://10709812939",
	["lucide-corner-right-up"] = "rbxassetid://10709813094",
	["lucide-corner-up-left"] = "rbxassetid://10709813185",
	["lucide-corner-up-right"] = "rbxassetid://10709813281",
	["lucide-cpu"] = "rbxassetid://10709813383",
	["lucide-croissant"] = "rbxassetid://10709818125",
	["lucide-crop"] = "rbxassetid://10709818245",
	["lucide-cross"] = "rbxassetid://10709818399",
	["lucide-crosshair"] = "rbxassetid://10709818534",
	["lucide-crown"] = "rbxassetid://10709818626",
	["lucide-cup-soda"] = "rbxassetid://10709818763",
	["lucide-curly-braces"] = "rbxassetid://10709818847",
	["lucide-currency"] = "rbxassetid://10709818931",
	["lucide-container"] = "rbxassetid://17466205552",
	["lucide-database"] = "rbxassetid://10709818996",
	["lucide-delete"] = "rbxassetid://10709819059",
	["lucide-diamond"] = "rbxassetid://10709819149",
	["lucide-dice-1"] = "rbxassetid://10709819266",
	["lucide-dice-2"] = "rbxassetid://10709819361",
	["lucide-dice-3"] = "rbxassetid://10709819508",
	["lucide-dice-4"] = "rbxassetid://10709819670",
	["lucide-dice-5"] = "rbxassetid://10709819801",
	["lucide-dice-6"] = "rbxassetid://10709819896",
	["lucide-dices"] = "rbxassetid://10723343321",
	["lucide-diff"] = "rbxassetid://10723343416",
	["lucide-disc"] = "rbxassetid://10723343537",
	["lucide-divide"] = "rbxassetid://10723343805",
	["lucide-divide-circle"] = "rbxassetid://10723343636",
	["lucide-divide-square"] = "rbxassetid://10723343737",
	["lucide-dollar-sign"] = "rbxassetid://10723343958",
	["lucide-download"] = "rbxassetid://10723344270",
	["lucide-download-cloud"] = "rbxassetid://10723344088",
	["lucide-door-open"] = "rbxassetid://124179241653522",
	["lucide-droplet"] = "rbxassetid://10723344432",
	["lucide-droplets"] = "rbxassetid://10734883356",
	["lucide-drumstick"] = "rbxassetid://10723344737",
	["lucide-edit"] = "rbxassetid://10734883598",
	["lucide-edit-2"] = "rbxassetid://10723344885",
	["lucide-edit-3"] = "rbxassetid://10723345088",
	["lucide-egg"] = "rbxassetid://10723345518",
	["lucide-egg-fried"] = "rbxassetid://10723345347",
	["lucide-electricity"] = "rbxassetid://10723345749",
	["lucide-electricity-off"] = "rbxassetid://10723345643",
	["lucide-equal"] = "rbxassetid://10723345990",
	["lucide-equal-not"] = "rbxassetid://10723345866",
	["lucide-eraser"] = "rbxassetid://10723346158",
	["lucide-euro"] = "rbxassetid://10723346372",
	["lucide-expand"] = "rbxassetid://10723346553",
	["lucide-external-link"] = "rbxassetid://10723346684",
	["lucide-eye"] = "rbxassetid://10723346959",
	["lucide-eye-off"] = "rbxassetid://10723346871",
	["lucide-factory"] = "rbxassetid://10723347051",
	["lucide-fan"] = "rbxassetid://10723354359",
	["lucide-fast-forward"] = "rbxassetid://10723354521",
	["lucide-feather"] = "rbxassetid://10723354671",
	["lucide-figma"] = "rbxassetid://10723354801",
	["lucide-file"] = "rbxassetid://10723374641",
	["lucide-file-archive"] = "rbxassetid://10723354921",
	["lucide-file-audio"] = "rbxassetid://10723355148",
	["lucide-file-audio-2"] = "rbxassetid://10723355026",
	["lucide-file-axis-3d"] = "rbxassetid://10723355272",
	["lucide-file-badge"] = "rbxassetid://10723355622",
	["lucide-file-badge-2"] = "rbxassetid://10723355451",
	["lucide-file-bar-chart"] = "rbxassetid://10723355887",
	["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
	["lucide-file-box"] = "rbxassetid://10723355989",
	["lucide-file-check"] = "rbxassetid://10723356210",
	["lucide-file-check-2"] = "rbxassetid://10723356100",
	["lucide-file-clock"] = "rbxassetid://10723356329",
	["lucide-file-code"] = "rbxassetid://10723356507",
	["lucide-file-cog"] = "rbxassetid://10723356830",
	["lucide-file-cog-2"] = "rbxassetid://10723356676",
	["lucide-file-diff"] = "rbxassetid://10723357039",
	["lucide-file-digit"] = "rbxassetid://10723357151",
	["lucide-file-down"] = "rbxassetid://10723357322",
	["lucide-file-edit"] = "rbxassetid://10723357495",
	["lucide-file-heart"] = "rbxassetid://10723357637",
	["lucide-file-image"] = "rbxassetid://10723357790",
	["lucide-file-input"] = "rbxassetid://10723357933",
	["lucide-file-json"] = "rbxassetid://10723364435",
	["lucide-file-json-2"] = "rbxassetid://10723364361",
	["lucide-file-key"] = "rbxassetid://10723364605",
	["lucide-file-key-2"] = "rbxassetid://10723364515",
	["lucide-file-line-chart"] = "rbxassetid://10723364725",
	["lucide-file-lock"] = "rbxassetid://10723364957",
	["lucide-file-lock-2"] = "rbxassetid://10723364861",
	["lucide-file-minus"] = "rbxassetid://10723365254",
	["lucide-file-minus-2"] = "rbxassetid://10723365086",
	["lucide-file-output"] = "rbxassetid://10723365457",
	["lucide-file-pie-chart"] = "rbxassetid://10723365598",
	["lucide-file-plus"] = "rbxassetid://10723365877",
	["lucide-file-plus-2"] = "rbxassetid://10723365766",
	["lucide-file-question"] = "rbxassetid://10723365987",
	["lucide-file-scan"] = "rbxassetid://10723366167",
	["lucide-file-search"] = "rbxassetid://10723366550",
	["lucide-file-search-2"] = "rbxassetid://10723366340",
	["lucide-file-signature"] = "rbxassetid://10723366741",
	["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
	["lucide-file-symlink"] = "rbxassetid://10723367098",
	["lucide-file-terminal"] = "rbxassetid://10723367244",
	["lucide-file-text"] = "rbxassetid://10723367380",
	["lucide-file-type"] = "rbxassetid://10723367606",
	["lucide-file-type-2"] = "rbxassetid://10723367509",
	["lucide-file-up"] = "rbxassetid://10723367734",
	["lucide-file-video"] = "rbxassetid://10723373884",
	["lucide-file-video-2"] = "rbxassetid://10723367834",
	["lucide-file-volume"] = "rbxassetid://10723374172",
	["lucide-file-volume-2"] = "rbxassetid://10723374030",
	["lucide-file-warning"] = "rbxassetid://10723374276",
	["lucide-file-x"] = "rbxassetid://10723374544",
	["lucide-file-x-2"] = "rbxassetid://10723374378",
	["lucide-files"] = "rbxassetid://10723374759",
	["lucide-film"] = "rbxassetid://10723374981",
	["lucide-filter"] = "rbxassetid://10723375128",
	["lucide-fingerprint"] = "rbxassetid://10723375250",
	["lucide-flag"] = "rbxassetid://10723375890",
	["lucide-flag-off"] = "rbxassetid://10723375443",
	["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
	["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
	["lucide-flame"] = "rbxassetid://10723376114",
	["lucide-flashlight"] = "rbxassetid://10723376471",
	["lucide-flashlight-off"] = "rbxassetid://10723376365",
	["lucide-flask-conical"] = "rbxassetid://10734883986",
	["lucide-flask-round"] = "rbxassetid://10723376614",
	["lucide-flip-horizontal"] = "rbxassetid://10723376884",
	["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
	["lucide-flip-vertical"] = "rbxassetid://10723377138",
	["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
	["lucide-flower"] = "rbxassetid://10747830374",
	["lucide-flower-2"] = "rbxassetid://10723377305",
	["lucide-focus"] = "rbxassetid://10723377537",
	["lucide-folder"] = "rbxassetid://10723387563",
	["lucide-folder-archive"] = "rbxassetid://10723384478",
	["lucide-folder-check"] = "rbxassetid://10723384605",
	["lucide-folder-clock"] = "rbxassetid://10723384731",
	["lucide-folder-closed"] = "rbxassetid://10723384893",
	["lucide-folder-cog"] = "rbxassetid://10723385213",
	["lucide-folder-cog-2"] = "rbxassetid://10723385036",
	["lucide-folder-down"] = "rbxassetid://10723385338",
	["lucide-folder-edit"] = "rbxassetid://10723385445",
	["lucide-folder-heart"] = "rbxassetid://10723385545",
	["lucide-folder-input"] = "rbxassetid://10723385721",
	["lucide-folder-key"] = "rbxassetid://10723385848",
	["lucide-folder-lock"] = "rbxassetid://10723386005",
	["lucide-folder-minus"] = "rbxassetid://10723386127",
	["lucide-folder-open"] = "rbxassetid://10723386277",
	["lucide-folder-output"] = "rbxassetid://10723386386",
	["lucide-folder-plus"] = "rbxassetid://10723386531",
	["lucide-folder-search"] = "rbxassetid://10723386787",
	["lucide-folder-search-2"] = "rbxassetid://10723386674",
	["lucide-folder-symlink"] = "rbxassetid://10723386930",
	["lucide-folder-tree"] = "rbxassetid://10723387085",
	["lucide-folder-up"] = "rbxassetid://10723387265",
	["lucide-folder-x"] = "rbxassetid://10723387448",
	["lucide-folders"] = "rbxassetid://10723387721",
	["lucide-form-input"] = "rbxassetid://10723387841",
	["lucide-forward"] = "rbxassetid://10723388016",
	["lucide-frame"] = "rbxassetid://10723394389",
	["lucide-framer"] = "rbxassetid://10723394565",
	["lucide-frown"] = "rbxassetid://10723394681",
	["lucide-fuel"] = "rbxassetid://10723394846",
	["lucide-function-square"] = "rbxassetid://10723395041",
	["lucide-gamepad"] = "rbxassetid://10723395457",
	["lucide-gamepad-2"] = "rbxassetid://10723395215",
	["lucide-gauge"] = "rbxassetid://10723395708",
	["lucide-gavel"] = "rbxassetid://10723395896",
	["lucide-gem"] = "rbxassetid://10723396000",
	["lucide-ghost"] = "rbxassetid://10723396107",
	["lucide-gift"] = "rbxassetid://10723396402",
	["lucide-gift-card"] = "rbxassetid://10723396225",
	["lucide-git-branch"] = "rbxassetid://10723396676",
	["lucide-git-branch-plus"] = "rbxassetid://10723396542",
	["lucide-git-commit"] = "rbxassetid://10723396812",
	["lucide-git-compare"] = "rbxassetid://10723396954",
	["lucide-git-fork"] = "rbxassetid://10723397049",
	["lucide-git-merge"] = "rbxassetid://10723397165",
	["lucide-git-pull-request"] = "rbxassetid://10723397431",
	["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
	["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
	["lucide-glass"] = "rbxassetid://10723397788",
	["lucide-glass-2"] = "rbxassetid://10723397529",
	["lucide-glass-water"] = "rbxassetid://10723397678",
	["lucide-glasses"] = "rbxassetid://10723397895",
	["lucide-globe"] = "rbxassetid://10723404337",
	["lucide-globe-2"] = "rbxassetid://10723398002",
	["lucide-grab"] = "rbxassetid://10723404472",
	["lucide-graduation-cap"] = "rbxassetid://10723404691",
	["lucide-grape"] = "rbxassetid://10723404822",
	["lucide-grid"] = "rbxassetid://10723404936",
	["lucide-grip-horizontal"] = "rbxassetid://10723405089",
	["lucide-grip-vertical"] = "rbxassetid://10723405236",
	["lucide-hammer"] = "rbxassetid://10723405360",
	["lucide-hand"] = "rbxassetid://10723405649",
	["lucide-hand-metal"] = "rbxassetid://10723405508",
	["lucide-hard-drive"] = "rbxassetid://10723405749",
	["lucide-hard-hat"] = "rbxassetid://10723405859",
	["lucide-hash"] = "rbxassetid://10723405975",
	["lucide-haze"] = "rbxassetid://10723406078",
	["lucide-headphones"] = "rbxassetid://10723406165",
	["lucide-heart"] = "rbxassetid://10723406885",
	["lucide-heart-crack"] = "rbxassetid://10723406299",
	["lucide-heart-handshake"] = "rbxassetid://10723406480",
	["lucide-heart-off"] = "rbxassetid://10723406662",
	["lucide-heart-pulse"] = "rbxassetid://10723406795",
	["lucide-help-circle"] = "rbxassetid://10723406988",
	["lucide-hexagon"] = "rbxassetid://10723407092",
	["lucide-highlighter"] = "rbxassetid://10723407192",
	["lucide-history"] = "rbxassetid://10723407335",
	["lucide-home"] = "rbxassetid://10723407389",
	["lucide-hourglass"] = "rbxassetid://10723407498",
	["lucide-ice-cream"] = "rbxassetid://10723414308",
	["lucide-image"] = "rbxassetid://10723415040",
	["lucide-image-minus"] = "rbxassetid://10723414487",
	["lucide-image-off"] = "rbxassetid://10723414677",
	["lucide-image-plus"] = "rbxassetid://10723414827",
	["lucide-import"] = "rbxassetid://10723415205",
	["lucide-inbox"] = "rbxassetid://10723415335",
	["lucide-indent"] = "rbxassetid://10723415494",
	["lucide-indian-rupee"] = "rbxassetid://10723415642",
	["lucide-infinity"] = "rbxassetid://10723415766",
	["lucide-info"] = "rbxassetid://10723415903",
	["lucide-inspect"] = "rbxassetid://10723416057",
	["lucide-italic"] = "rbxassetid://10723416195",
	["lucide-japanese-yen"] = "rbxassetid://10723416363",
	["lucide-joystick"] = "rbxassetid://10723416527",
	["lucide-key"] = "rbxassetid://10723416652",
	["lucide-keyboard"] = "rbxassetid://10723416765",
	["lucide-lamp"] = "rbxassetid://10723417513",
	["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
	["lucide-lamp-desk"] = "rbxassetid://10723417016",
	["lucide-lamp-floor"] = "rbxassetid://10723417131",
	["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
	["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
	["lucide-landmark"] = "rbxassetid://10723417608",
	["lucide-languages"] = "rbxassetid://10723417703",
	["lucide-laptop"] = "rbxassetid://10723423881",
	["lucide-laptop-2"] = "rbxassetid://10723417797",
	["lucide-lasso"] = "rbxassetid://10723424235",
	["lucide-lasso-select"] = "rbxassetid://10723424058",
	["lucide-laugh"] = "rbxassetid://10723424372",
	["lucide-layers"] = "rbxassetid://10723424505",
	["lucide-layout"] = "rbxassetid://10723425376",
	["lucide-layout-dashboard"] = "rbxassetid://10723424646",
	["lucide-layout-grid"] = "rbxassetid://10723424838",
	["lucide-layout-list"] = "rbxassetid://10723424963",
	["lucide-layout-template"] = "rbxassetid://10723425187",
	["lucide-leaf"] = "rbxassetid://10723425539",
	["lucide-library"] = "rbxassetid://10723425615",
	["lucide-life-buoy"] = "rbxassetid://10723425685",
	["lucide-lightbulb"] = "rbxassetid://10723425852",
	["lucide-lightbulb-off"] = "rbxassetid://10723425762",
	["lucide-line-chart"] = "rbxassetid://10723426393",
	["lucide-link"] = "rbxassetid://10723426722",
	["lucide-link-2"] = "rbxassetid://10723426595",
	["lucide-link-2-off"] = "rbxassetid://10723426513",
	["lucide-list"] = "rbxassetid://10723433811",
	["lucide-list-checks"] = "rbxassetid://10734884548",
	["lucide-list-end"] = "rbxassetid://10723426886",
	["lucide-list-minus"] = "rbxassetid://10723426986",
	["lucide-list-music"] = "rbxassetid://10723427081",
	["lucide-list-ordered"] = "rbxassetid://10723427199",
	["lucide-list-plus"] = "rbxassetid://10723427334",
	["lucide-list-start"] = "rbxassetid://10723427494",
	["lucide-list-video"] = "rbxassetid://10723427619",
	["lucide-list-todo"] = "rbxassetid://17376008003",
	["lucide-list-x"] = "rbxassetid://10723433655",
	["lucide-loader"] = "rbxassetid://10723434070",
	["lucide-loader-2"] = "rbxassetid://10723433935",
	["lucide-locate"] = "rbxassetid://10723434557",
	["lucide-locate-fixed"] = "rbxassetid://10723434236",
	["lucide-locate-off"] = "rbxassetid://10723434379",
	["lucide-lock"] = "rbxassetid://10723434711",
	["lucide-log-in"] = "rbxassetid://10723434830",
	["lucide-log-out"] = "rbxassetid://10723434906",
	["lucide-luggage"] = "rbxassetid://10723434993",
	["lucide-magnet"] = "rbxassetid://10723435069",
	["lucide-mail"] = "rbxassetid://10734885430",
	["lucide-mail-check"] = "rbxassetid://10723435182",
	["lucide-mail-minus"] = "rbxassetid://10723435261",
	["lucide-mail-open"] = "rbxassetid://10723435342",
	["lucide-mail-plus"] = "rbxassetid://10723435443",
	["lucide-mail-question"] = "rbxassetid://10723435515",
	["lucide-mail-search"] = "rbxassetid://10734884739",
	["lucide-mail-warning"] = "rbxassetid://10734885015",
	["lucide-mail-x"] = "rbxassetid://10734885247",
	["lucide-mails"] = "rbxassetid://10734885614",
	["lucide-map"] = "rbxassetid://10734886202",
	["lucide-map-pin"] = "rbxassetid://10734886004",
	["lucide-map-pin-off"] = "rbxassetid://10734885803",
	["lucide-maximize"] = "rbxassetid://10734886735",
	["lucide-maximize-2"] = "rbxassetid://10734886496",
	["lucide-medal"] = "rbxassetid://10734887072",
	["lucide-megaphone"] = "rbxassetid://10734887454",
	["lucide-megaphone-off"] = "rbxassetid://10734887311",
	["lucide-meh"] = "rbxassetid://10734887603",
	["lucide-menu"] = "rbxassetid://10734887784",
	["lucide-message-circle"] = "rbxassetid://10734888000",
	["lucide-message-square"] = "rbxassetid://10734888228",
	["lucide-mic"] = "rbxassetid://10734888864",
	["lucide-mic-2"] = "rbxassetid://10734888430",
	["lucide-mic-off"] = "rbxassetid://10734888646",
	["lucide-microscope"] = "rbxassetid://10734889106",
	["lucide-microwave"] = "rbxassetid://10734895076",
	["lucide-milestone"] = "rbxassetid://10734895310",
	["lucide-minimize"] = "rbxassetid://10734895698",
	["lucide-minimize-2"] = "rbxassetid://10734895530",
	["lucide-minus"] = "rbxassetid://10734896206",
	["lucide-minus-circle"] = "rbxassetid://10734895856",
	["lucide-minus-square"] = "rbxassetid://10734896029",
	["lucide-monitor"] = "rbxassetid://10734896881",
	["lucide-monitor-off"] = "rbxassetid://10734896360",
	["lucide-monitor-speaker"] = "rbxassetid://10734896512",
	["lucide-moon"] = "rbxassetid://10734897102",
	["lucide-more-horizontal"] = "rbxassetid://10734897250",
	["lucide-more-vertical"] = "rbxassetid://10734897387",
	["lucide-mountain"] = "rbxassetid://10734897956",
	["lucide-mountain-snow"] = "rbxassetid://10734897665",
	["lucide-mouse"] = "rbxassetid://10734898592",
	["lucide-mouse-pointer"] = "rbxassetid://10734898476",
	["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
	["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
	["lucide-move"] = "rbxassetid://10734900011",
	["lucide-move-3d"] = "rbxassetid://10734898756",
	["lucide-move-diagonal"] = "rbxassetid://10734899164",
	["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
	["lucide-move-horizontal"] = "rbxassetid://10734899414",
	["lucide-move-vertical"] = "rbxassetid://10734899821",
	["lucide-music"] = "rbxassetid://10734905958",
	["lucide-music-2"] = "rbxassetid://10734900215",
	["lucide-music-3"] = "rbxassetid://10734905665",
	["lucide-music-4"] = "rbxassetid://10734905823",
	["lucide-navigation"] = "rbxassetid://10734906744",
	["lucide-navigation-2"] = "rbxassetid://10734906332",
	["lucide-navigation-2-off"] = "rbxassetid://10734906144",
	["lucide-navigation-off"] = "rbxassetid://10734906580",
	["lucide-network"] = "rbxassetid://10734906975",
	["lucide-newspaper"] = "rbxassetid://10734907168",
	["lucide-octagon"] = "rbxassetid://10734907361",
	["lucide-option"] = "rbxassetid://10734907649",
	["lucide-outdent"] = "rbxassetid://10734907933",
	["lucide-package"] = "rbxassetid://10734909540",
	["lucide-package-2"] = "rbxassetid://10734908151",
	["lucide-package-check"] = "rbxassetid://10734908384",
	["lucide-package-minus"] = "rbxassetid://10734908626",
	["lucide-package-open"] = "rbxassetid://10734908793",
	["lucide-package-plus"] = "rbxassetid://10734909016",
	["lucide-package-search"] = "rbxassetid://10734909196",
	["lucide-package-x"] = "rbxassetid://10734909375",
	["lucide-paint-bucket"] = "rbxassetid://10734909847",
	["lucide-paintbrush"] = "rbxassetid://10734910187",
	["lucide-paintbrush-2"] = "rbxassetid://10734910030",
	["lucide-palette"] = "rbxassetid://10734910430",
	["lucide-palmtree"] = "rbxassetid://10734910680",
	["lucide-paperclip"] = "rbxassetid://10734910927",
	["lucide-party-popper"] = "rbxassetid://10734918735",
	["lucide-pause"] = "rbxassetid://10734919336",
	["lucide-pause-circle"] = "rbxassetid://10735024209",
	["lucide-pause-octagon"] = "rbxassetid://10734919143",
	["lucide-pen-tool"] = "rbxassetid://10734919503",
	["lucide-pencil"] = "rbxassetid://10734919691",
	["lucide-percent"] = "rbxassetid://10734919919",
	["lucide-person-standing"] = "rbxassetid://10734920149",
	["lucide-phone"] = "rbxassetid://10734921524",
	["lucide-phone-call"] = "rbxassetid://10734920305",
	["lucide-phone-forwarded"] = "rbxassetid://10734920508",
	["lucide-phone-incoming"] = "rbxassetid://10734920694",
	["lucide-phone-missed"] = "rbxassetid://10734920845",
	["lucide-phone-off"] = "rbxassetid://10734921077",
	["lucide-phone-outgoing"] = "rbxassetid://10734921288",
	["lucide-pie-chart"] = "rbxassetid://10734921727",
	["lucide-piggy-bank"] = "rbxassetid://10734921935",
	["lucide-pin"] = "rbxassetid://10734922324",
	["lucide-pin-off"] = "rbxassetid://10734922180",
	["lucide-pipette"] = "rbxassetid://10734922497",
	["lucide-pizza"] = "rbxassetid://10734922774",
	["lucide-plane"] = "rbxassetid://10734922971",
	["lucide-plane-landing"] = "rbxassetid://17376029914",
	["lucide-play"] = "rbxassetid://10734923549",
	["lucide-play-circle"] = "rbxassetid://10734923214",
	["lucide-plus"] = "rbxassetid://10734924532",
	["lucide-plus-circle"] = "rbxassetid://10734923868",
	["lucide-plus-square"] = "rbxassetid://10734924219",
	["lucide-podcast"] = "rbxassetid://10734929553",
	["lucide-pointer"] = "rbxassetid://10734929723",
	["lucide-pound-sterling"] = "rbxassetid://10734929981",
	["lucide-power"] = "rbxassetid://10734930466",
	["lucide-power-off"] = "rbxassetid://10734930257",
	["lucide-printer"] = "rbxassetid://10734930632",
	["lucide-puzzle"] = "rbxassetid://10734930886",
	["lucide-quote"] = "rbxassetid://10734931234",
	["lucide-radio"] = "rbxassetid://10734931596",
	["lucide-radio-receiver"] = "rbxassetid://10734931402",
	["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
	["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
	["lucide-recycle"] = "rbxassetid://10734932295",
	["lucide-redo"] = "rbxassetid://10734932822",
	["lucide-redo-2"] = "rbxassetid://10734932586",
	["lucide-refresh-ccw"] = "rbxassetid://10734933056",
	["lucide-refresh-cw"] = "rbxassetid://10734933222",
	["lucide-refrigerator"] = "rbxassetid://10734933465",
	["lucide-regex"] = "rbxassetid://10734933655",
	["lucide-repeat"] = "rbxassetid://10734933966",
	["lucide-repeat-1"] = "rbxassetid://10734933826",
	["lucide-reply"] = "rbxassetid://10734934252",
	["lucide-reply-all"] = "rbxassetid://10734934132",
	["lucide-rewind"] = "rbxassetid://10734934347",
	["lucide-rocket"] = "rbxassetid://10734934585",
	["lucide-rocking-chair"] = "rbxassetid://10734939942",
	["lucide-rotate-3d"] = "rbxassetid://10734940107",
	["lucide-rotate-ccw"] = "rbxassetid://10734940376",
	["lucide-rotate-cw"] = "rbxassetid://10734940654",
	["lucide-rss"] = "rbxassetid://10734940825",
	["lucide-ruler"] = "rbxassetid://10734941018",
	["lucide-russian-ruble"] = "rbxassetid://10734941199",
	["lucide-sailboat"] = "rbxassetid://10734941354",
	["lucide-save"] = "rbxassetid://10734941499",
	["lucide-scale"] = "rbxassetid://10734941912",
	["lucide-scale-3d"] = "rbxassetid://10734941739",
	["lucide-scaling"] = "rbxassetid://10734942072",
	["lucide-scan"] = "rbxassetid://10734942565",
	["lucide-scan-face"] = "rbxassetid://10734942198",
	["lucide-scan-line"] = "rbxassetid://10734942351",
	["lucide-scissors"] = "rbxassetid://10734942778",
	["lucide-screen-share"] = "rbxassetid://10734943193",
	["lucide-screen-share-off"] = "rbxassetid://10734942967",
	["lucide-scroll"] = "rbxassetid://10734943448",
	["lucide-search"] = "rbxassetid://10734943674",
	["lucide-send"] = "rbxassetid://10734943902",
	["lucide-separator-horizontal"] = "rbxassetid://10734944115",
	["lucide-separator-vertical"] = "rbxassetid://10734944326",
	["lucide-server"] = "rbxassetid://10734949856",
	["lucide-server-cog"] = "rbxassetid://10734944444",
	["lucide-server-crash"] = "rbxassetid://10734944554",
	["lucide-server-off"] = "rbxassetid://10734944668",
	["lucide-settings"] = "rbxassetid://10734950309",
	["lucide-settings-2"] = "rbxassetid://10734950020",
	["lucide-share"] = "rbxassetid://10734950813",
	["lucide-share-2"] = "rbxassetid://10734950553",
	["lucide-sheet"] = "rbxassetid://10734951038",
	["lucide-shield"] = "rbxassetid://10734951847",
	["lucide-shield-alert"] = "rbxassetid://10734951173",
	["lucide-shield-check"] = "rbxassetid://10734951367",
	["lucide-shield-close"] = "rbxassetid://10734951535",
	["lucide-shield-off"] = "rbxassetid://10734951684",
	["lucide-shirt"] = "rbxassetid://10734952036",
	["lucide-shopping-bag"] = "rbxassetid://10734952273",
	["lucide-shopping-cart"] = "rbxassetid://10734952479",
	["lucide-shovel"] = "rbxassetid://10734952773",
	["lucide-shower-head"] = "rbxassetid://10734952942",
	["lucide-shrink"] = "rbxassetid://10734953073",
	["lucide-shrub"] = "rbxassetid://10734953241",
	["lucide-shuffle"] = "rbxassetid://10734953451",
	["lucide-sidebar"] = "rbxassetid://10734954301",
	["lucide-sidebar-close"] = "rbxassetid://10734953715",
	["lucide-sidebar-open"] = "rbxassetid://10734954000",
	["lucide-sigma"] = "rbxassetid://10734954538",
	["lucide-signal"] = "rbxassetid://10734961133",
	["lucide-signal-high"] = "rbxassetid://10734954807",
	["lucide-signal-low"] = "rbxassetid://10734955080",
	["lucide-signal-medium"] = "rbxassetid://10734955336",
	["lucide-signal-zero"] = "rbxassetid://10734960878",
	["lucide-siren"] = "rbxassetid://10734961284",
	["lucide-skip-back"] = "rbxassetid://10734961526",
	["lucide-skip-forward"] = "rbxassetid://10734961809",
	["lucide-skull"] = "rbxassetid://10734962068",
	["lucide-slack"] = "rbxassetid://10734962339",
	["lucide-slash"] = "rbxassetid://10734962600",
	["lucide-slice"] = "rbxassetid://10734963024",
	["lucide-sliders"] = "rbxassetid://10734963400",
	["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
	["lucide-smartphone"] = "rbxassetid://10734963940",
	["lucide-smartphone-charging"] = "rbxassetid://10734963671",
	["lucide-smile"] = "rbxassetid://10734964441",
	["lucide-smile-plus"] = "rbxassetid://10734964188",
	["lucide-snowflake"] = "rbxassetid://10734964600",
	["lucide-sofa"] = "rbxassetid://10734964852",
	["lucide-sort-asc"] = "rbxassetid://10734965115",
	["lucide-sort-desc"] = "rbxassetid://10734965287",
	["lucide-speaker"] = "rbxassetid://10734965419",
	["lucide-sprout"] = "rbxassetid://10734965572",
	["lucide-square"] = "rbxassetid://10734965702",
	["lucide-star"] = "rbxassetid://10734966248",
	["lucide-star-half"] = "rbxassetid://10734965897",
	["lucide-star-off"] = "rbxassetid://10734966097",
	["lucide-stethoscope"] = "rbxassetid://10734966384",
	["lucide-sticker"] = "rbxassetid://10734972234",
	["lucide-sticky-note"] = "rbxassetid://10734972463",
	["lucide-stop-circle"] = "rbxassetid://10734972621",
	["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
	["lucide-stretch-vertical"] = "rbxassetid://10734973130",
	["lucide-strikethrough"] = "rbxassetid://10734973290",
	["lucide-subscript"] = "rbxassetid://10734973457",
	["lucide-sun"] = "rbxassetid://10734974297",
	["lucide-sun-dim"] = "rbxassetid://10734973645",
	["lucide-sun-medium"] = "rbxassetid://10734973778",
	["lucide-sun-moon"] = "rbxassetid://10734973999",
	["lucide-sun-snow"] = "rbxassetid://10734974130",
	["lucide-sunrise"] = "rbxassetid://10734974522",
	["lucide-sunset"] = "rbxassetid://10734974689",
	["lucide-superscript"] = "rbxassetid://10734974850",
	["lucide-swiss-franc"] = "rbxassetid://10734975024",
	["lucide-switch-camera"] = "rbxassetid://10734975214",
	["lucide-sword"] = "rbxassetid://10734975486",
	["lucide-swords"] = "rbxassetid://10734975692",
	["lucide-syringe"] = "rbxassetid://10734975932",
	["lucide-table"] = "rbxassetid://10734976230",
	["lucide-table-2"] = "rbxassetid://10734976097",
	["lucide-tablet"] = "rbxassetid://10734976394",
	["lucide-tag"] = "rbxassetid://10734976528",
	["lucide-tags"] = "rbxassetid://10734976739",
	["lucide-target"] = "rbxassetid://10734977012",
	["lucide-tent"] = "rbxassetid://10734981750",
	["lucide-terminal"] = "rbxassetid://10734982144",
	["lucide-terminal-square"] = "rbxassetid://10734981995",
	["lucide-text-cursor"] = "rbxassetid://10734982395",
	["lucide-text-cursor-input"] = "rbxassetid://10734982297",
	["lucide-thermometer"] = "rbxassetid://10734983134",
	["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
	["lucide-thermometer-sun"] = "rbxassetid://10734982771",
	["lucide-thumbs-down"] = "rbxassetid://10734983359",
	["lucide-thumbs-up"] = "rbxassetid://10734983629",
	["lucide-ticket"] = "rbxassetid://10734983868",
	["lucide-timer"] = "rbxassetid://10734984606",
	["lucide-timer-off"] = "rbxassetid://10734984138",
	["lucide-timer-reset"] = "rbxassetid://10734984355",
	["lucide-toggle-left"] = "rbxassetid://10734984834",
	["lucide-toggle-right"] = "rbxassetid://10734985040",
	["lucide-tornado"] = "rbxassetid://10734985247",
	["lucide-toy-brick"] = "rbxassetid://10747361919",
	["lucide-train"] = "rbxassetid://10747362105",
	["lucide-trash"] = "rbxassetid://10747362393",
	["lucide-trash-2"] = "rbxassetid://10747362241",
	["lucide-tree-deciduous"] = "rbxassetid://10747362534",
	["lucide-tree-pine"] = "rbxassetid://10747362748",
	["lucide-trees"] = "rbxassetid://10747363016",
	["lucide-trending-down"] = "rbxassetid://10747363205",
	["lucide-trending-up"] = "rbxassetid://10747363465",
	["lucide-triangle"] = "rbxassetid://10747363621",
	["lucide-trophy"] = "rbxassetid://10747363809",
	["lucide-truck"] = "rbxassetid://10747364031",
	["lucide-tv"] = "rbxassetid://10747364593",
	["lucide-tv-2"] = "rbxassetid://10747364302",
	["lucide-type"] = "rbxassetid://10747364761",
	["lucide-umbrella"] = "rbxassetid://10747364971",
	["lucide-underline"] = "rbxassetid://10747365191",
	["lucide-undo"] = "rbxassetid://10747365484",
	["lucide-undo-2"] = "rbxassetid://10747365359",
	["lucide-unlink"] = "rbxassetid://10747365771",
	["lucide-unlink-2"] = "rbxassetid://10747397871",
	["lucide-unlock"] = "rbxassetid://10747366027",
	["lucide-upload"] = "rbxassetid://10747366434",
	["lucide-upload-cloud"] = "rbxassetid://10747366266",
	["lucide-usb"] = "rbxassetid://10747366606",
	["lucide-user"] = "rbxassetid://10747373176",
	["lucide-user-check"] = "rbxassetid://10747371901",
	["lucide-user-cog"] = "rbxassetid://10747372167",
	["lucide-user-minus"] = "rbxassetid://10747372346",
	["lucide-user-plus"] = "rbxassetid://10747372702",
	["lucide-user-x"] = "rbxassetid://10747372992",
	["lucide-users"] = "rbxassetid://10747373426",
	["lucide-utensils"] = "rbxassetid://10747373821",
	["lucide-utensils-crossed"] = "rbxassetid://10747373629",
	["lucide-venetian-mask"] = "rbxassetid://10747374003",
	["lucide-verified"] = "rbxassetid://10747374131",
	["lucide-vibrate"] = "rbxassetid://10747374489",
	["lucide-vibrate-off"] = "rbxassetid://10747374269",
	["lucide-video"] = "rbxassetid://10747374938",
	["lucide-video-off"] = "rbxassetid://10747374721",
	["lucide-view"] = "rbxassetid://10747375132",
	["lucide-voicemail"] = "rbxassetid://10747375281",
	["lucide-volume"] = "rbxassetid://10747376008",
	["lucide-volume-1"] = "rbxassetid://10747375450",
	["lucide-volume-2"] = "rbxassetid://10747375679",
	["lucide-volume-x"] = "rbxassetid://10747375880",
	["lucide-wheat"] = "rbxassetid://80877624162595",
	["lucide-wallet"] = "rbxassetid://10747376205",
	["lucide-wand"] = "rbxassetid://10747376565",
	["lucide-wand-2"] = "rbxassetid://10747376349",
	["lucide-watch"] = "rbxassetid://10747376722",
	["lucide-waves"] = "rbxassetid://10747376931",
	["lucide-webcam"] = "rbxassetid://10747381992",
	["lucide-wifi"] = "rbxassetid://10747382504",
	["lucide-wifi-off"] = "rbxassetid://10747382268",
	["lucide-wind"] = "rbxassetid://10747382750",
	["lucide-wrap-text"] = "rbxassetid://10747383065",
	["lucide-wrench"] = "rbxassetid://10747383470",
	["lucide-x"] = "rbxassetid://10747384394",
	["lucide-x-circle"] = "rbxassetid://10747383819",
	["lucide-x-octagon"] = "rbxassetid://10747384037",
	["lucide-x-square"] = "rbxassetid://10747384217",
	["lucide-zoom-in"] = "rbxassetid://10747384552",
	["lucide-zoom-out"] = "rbxassetid://10747384679",
	["lucide-cat"] = "rbxassetid://16935650691",
	["lucide-message-circle-question"] = "rbxassetid://16970049192",
	["lucide-webhook"] = "rbxassetid://17320556264",
	["lucide-dumbbell"] = "rbxassetid://18273453053"
function Library:GetIcon(Name)
	if Name ~= nil and Icons["lucide-" .. Name] then
		return Icons["lucide-" .. Name]
	return nil

local Elements = {}
Elements.__index = Elements
Elements.__namecall = function(Table, Key, ...)
	return Elements[Key](...)

for _, ElementComponent in pairs(ElementsTable) do
	Elements["Add" .. ElementComponent.__type] = function(self, Idx, Config)
		ElementComponent.Container = self.Container
		ElementComponent.Type = self.Type
		ElementComponent.ScrollFrame = self.ScrollFrame
		ElementComponent.Library = Library

		return ElementComponent:New(Idx, Config)

Library.Elements = Elements

	makefolder = function(...) return ... end;
	makefile = function(...) return ... end;
	isfile = function(...) return ... end;
	isfolder = function(...) return ... end;
	readfile = function(...) return ... end;
	writefile = function(...) return ... end;
	listfiles = function (...) return {...} end;

local SaveManager = {} do
	SaveManager.Folder = "FluentSettings"
	SaveManager.Ignore = {}
	SaveManager.Parser = {
		Toggle = {
			Save = function(idx, object) 
				return { type = "Toggle", idx = idx, value = object.Value } 
			end,
			Load = function(idx, data)
				if SaveManager.Options[idx] then 
					SaveManager.Options[idx]:SetValue(data.value)
		Slider = {
			Save = function(idx, object)
				return { type = "Slider", idx = idx, value = tostring(object.Value) }
		Dropdown = {
				return { type = "Dropdown", idx = idx, value = object.Value, mutli = object.Multi }
		Colorpicker = {
				return { type = "Colorpicker", idx = idx, value = object.Value:ToHex(), transparency = object.Transparency }
					SaveManager.Options[idx]:SetValueRGB(Color3.fromHex(data.value), data.transparency)
		Keybind = {
				return { type = "Keybind", idx = idx, mode = object.Mode, key = object.Value }
					SaveManager.Options[idx]:SetValue(data.key, data.mode)

		Input = {
				return { type = "Input", idx = idx, text = object.Value }
				if SaveManager.Options[idx] and type(data.text) == "string" then
					SaveManager.Options[idx]:SetValue(data.text)

	function SaveManager:SetIgnoreIndexes(list)
		for _, key in next, list do
			self.Ignore[key] = true

	function SaveManager:SetFolder(folder)
		self.Folder = folder;
		self:BuildFolderTree()

	function SaveManager:Save(name)
		if (not name) then
			return false, "no config file is selected"

		local fullPath = self.Folder .. "/" .. name .. ".json"

		local data = {
			objects = {}


		for idx, option in next, SaveManager.Options do
			if self.Parser[option.Type] and not self.Ignore[idx] then
				table.insert(data.objects, self.Parser[option.Type].Save(idx, option))
		end	

		local success, encoded = pcall(httpService.JSONEncode, httpService, data)
		if not success then
			return false, "failed to encode data"

		writefile(fullPath, encoded)

	if not RunService:IsStudio() then
		function SaveManager:Load(name)
			if (not name) then
				return false, "no config file is selected"

			local file = self.Folder .. "/" .. name .. ".json"
			if not isfile(file) then return false, "Create Config Save File" end

			local success, decoded = pcall(httpService.JSONDecode, httpService, readfile(file))
			if not success then return false, "decode error" end

			for _, option in next, decoded.objects do
				if self.Parser[option.type] and not self.Ignore[option.idx] then
					task.spawn(function() self.Parser[option.type].Load(option.idx, option) end)

			Fluent.SettingLoaded = true

			return true, decoded

	function SaveManager:IgnoreThemeSettings()
		self:SetIgnoreIndexes({ 
			"InterfaceTheme", "AcrylicToggle", "TransparentToggle", "MenuKeybind"

	function SaveManager:BuildFolderTree()
		local paths = {
			self.Folder,
			self.Folder .. "/"

		for i = 1, #paths do
			local str = paths[i]
			if not isfolder(str) then
				makefolder(str)

	function SaveManager:RefreshConfigList()
		local list = listfiles(self.Folder .. "/")

		local out = {}
		for i = 1, #list do
			local file = list[i]
			if file:sub(-5) == ".json" then
				local pos = file:find(".json", 1, true)
				local start = pos

				local char = file:sub(pos, pos)
				while char ~= "/" and char ~= "\\" and char ~= "" do
					pos = pos - 1
					char = file:sub(pos, pos)

				if char == "/" or char == "\\" then
					local name = file:sub(pos + 1, start - 1)
					if name ~= "options" then
						table.insert(out, name)

		return out

	function SaveManager:SetLibrary(library)
		self.Library = library
		self.Options = library.Options

		function SaveManager:LoadAutoloadConfig()
			if isfile(self.Folder .. "/autoload.txt") then
				local name = readfile(self.Folder .. "/autoload.txt")

				local success, err = self:Load(name)
				if not success then
					return self.Library:Notify({
						Content = "Config loader",
						SubContent = "Failed to load autoload config: " .. err,
						Duration = 7

				self.Library:Notify({
					Content = "Config loader",
					SubContent = string.format("Auto loaded config %q", name),
					Duration = 7

	function SaveManager:BuildConfigSection(tab)
		assert(self.Library, "Must set SaveManager.Library")

		local section = tab:AddSection("Configuration", "settings")

		section:AddInput("SaveManager_ConfigName",    { Title = "Config name" })
		section:AddDropdown("SaveManager_ConfigList", { Title = "Config list", Values = self:RefreshConfigList(), AllowNull = true })

		section:AddButton({
			Title = "Create config",
			Callback = function()
				local name = SaveManager.Options.SaveManager_ConfigName.Value

				if name:gsub(" ", "") == "" then 
						SubContent = "Invalid config name (empty)",

				local success, err = self:Save(name)
						SubContent = "Failed to save config: " .. err,

					SubContent = string.format("Created config %q", name),

				SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
				SaveManager.Options.SaveManager_ConfigList:SetValue(nil)

		section:AddButton({Title = "Load config", Callback = function()
			local name = SaveManager.Options.SaveManager_ConfigList.Value

			local success, err = self:Load(name)
			if not success then
				return self.Library:Notify({
					SubContent = "Failed to load config: " .. err,

			self.Library:Notify({
				Content = "Config loader",
				SubContent = string.format("Loaded config %q", name),
				Duration = 7
		end})

		section:AddButton({Title = "Save config", Callback = function()

			local success, err = self:Save(name)
					SubContent = "Failed to overwrite config: " .. err,

				SubContent = string.format("Overwrote config %q", name),

		section:AddButton({Title = "Refresh list", Callback = function()
			SaveManager.Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
			SaveManager.Options.SaveManager_ConfigList:SetValue(nil)

		local AutoloadButton
		AutoloadButton = section:AddButton({Title = "Set as autoload", Description = "Current autoload config: none", Callback = function()
			writefile(self.Folder .. "/autoload.txt", name)
			AutoloadButton:SetDesc("Current autoload config: " .. name)
				SubContent = string.format("Set %q to auto load", name),

		if isfile(self.Folder .. "/autoload.txt") then
			local name = readfile(self.Folder .. "/autoload.txt")

		SaveManager:SetIgnoreIndexes({ "SaveManager_ConfigList", "SaveManager_ConfigName" })

		SaveManager:BuildFolderTree()

local InterfaceManager = {} do
	InterfaceManager.Folder = "FluentSettings"
	InterfaceManager.Settings = {
		Acrylic = true,
		Transparency = true,
		MenuKeybind = "M"

	function InterfaceManager:SetTheme(name)
		InterfaceManager.Settings.Theme = name

	function InterfaceManager:SetFolder(folder)

	function InterfaceManager:SetLibrary(library)

	function InterfaceManager:BuildFolderTree()
		local paths = {}

		local parts = self.Folder:split("/")
		for idx = 1, #parts do
			paths[#paths + 1] = table.concat(parts, "/", 1, idx)

		table.insert(paths, self.Folder)
		table.insert(paths, self.Folder .. "/")


	function InterfaceManager:SaveSettings()
		writefile(self.Folder .. "/options.json", httpService:JSONEncode(InterfaceManager.Settings))

	function InterfaceManager:LoadSettings()
		local path = self.Folder .. "/options.json"
		if isfile(path) then
			local data = readfile(path)

			if not RunService:IsStudio() then local success, decoded = pcall(httpService.JSONDecode, httpService, data) end

			if success then
				for i, v in next, decoded do
					InterfaceManager.Settings[i] = v

	function InterfaceManager:BuildInterfaceSection(tab)
		assert(self.Library, "Must set InterfaceManager.Library")
		local Library = self.Library
		local Settings = InterfaceManager.Settings

		InterfaceManager:LoadSettings()

		local section = tab:AddSection("Interface", "monitor")
		local InterfaceTheme = section:AddDropdown("InterfaceTheme", {
			Title = "Theme",
			Description = "Changes the interface theme.",
			Values = Library.Themes,
			Default = self.Library.Theme,
			Callback = function(Value)
				Library:SetTheme(Value)
				Settings.Theme = Value
				InterfaceManager:SaveSettings()

		InterfaceTheme:SetValue(Settings.Theme)

		if Library.UseAcrylic and not Mobile then
			section:AddToggle("AcrylicToggle", {
				Title = "Acrylic",
				Description = "The blurred background requires graphic quality 8+",
				Default = Settings.Acrylic,
				Callback = function(Value)
					Library:ToggleAcrylic(Value)
					Settings.Acrylic = Value
					InterfaceManager:SaveSettings()
		elseif Mobile then
			Settings.Acrylic = false

		section:AddSlider("WindowTransparency", {
			Title = "Window Transparency",
			Description = "Adjusts the window transparency.",
			Default = 1,
			Min = 0,
			Max = 3,
			Rounding = 1,
				Library:SetWindowTransparency(Value)


		local MenuKeybind = section:AddKeybind("MenuKeybind", { Title = "Minimize Bind", Default = Library.MinimizeKey.Name or Settings.MenuKeybind })
		MenuKeybind:OnChanged(function()
			Settings.MenuKeybind = MenuKeybind.Value
			InterfaceManager:SaveSettings()
		Library.MinimizeKeybind = MenuKeybind

function Library:CreateWindow(Config)
	assert(Config.Title, "Window - Missing Title")

	if Library.Window then
		print("You cannot create more than one window.")

	Library.MinimizeKey = Config.MinimizeKey or Enum.KeyCode.LeftControl
	Library.UseAcrylic = Config.Acrylic or false
	Library.Acrylic = Config.Acrylic or false
	Library.Theme = Config.Theme or "Dark"
	if Config.Acrylic then
		Acrylic.init()

	local Icon = Config.Icon
	if not fischbypass then 
		if Library:GetIcon(Icon) then
			Icon = Library:GetIcon(Icon)

		if Icon == "" or Icon == nil then
			Icon = nil

	local Window = Components.Window({
		Parent = GUI,
		Size = Config.Size,
		Title = Config.Title,
		Icon = Icon,
		SubTitle = Config.SubTitle,
		TabWidth = Config.TabWidth,

	Library.Window = Window
	table.insert(Library.Windows, Window)
	InterfaceManager:SetTheme(Config.Theme)
	Library:SetTheme(Config.Theme)

	return Window

function Library:SetTheme(Value)
	if Library.Window and table.find(Library.Themes, Value) then
		Library.Theme = Value
		Creator.UpdateTheme()

		if Value == "Glass" then
			Library:SetWindowTransparency(0.9)

function Library:Destroy()
		Library.Unloaded = true
			Library.Window.AcrylicPaint.Model:Destroy()
		Creator.Disconnect()
		Library.GUI:Destroy()

function Library:ToggleAcrylic(Value)
			Library.Acrylic = Value
			Library.Window.AcrylicPaint.Model.Transparency = Value and 0.98 or 1
				Acrylic.Enable()
				Acrylic.Disable()

function Library:ToggleTransparency(Value)
		Library.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = Value and 0.35 or 0

function Library:SetWindowTransparency(Value)
	if Library.Window and Library.UseAcrylic then
		Value = math.clamp(Value, 0, 3)

		if Library.Theme == "Glass" then
			local glassTransparency = 0.8 + (Value * 0.05)
			if Value > 1 then
				glassTransparency = 0.85 + ((Value - 1) * 0.04)
			if Value > 2 then
				glassTransparency = 0.93 + ((Value - 2) * 0.04)
			Library.Window.AcrylicPaint.Model.Transparency = math.min(glassTransparency, 0.99)

			local backgroundTransparency = 0.7 + (Value * 0.08)
				backgroundTransparency = 0.78 + ((Value - 1) * 0.07)
				backgroundTransparency = 0.85 + ((Value - 2) * 0.1)
			Library.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = math.min(backgroundTransparency, 0.99)

			Library.NotificationTransparency = Value

			for _, notification in pairs(Library.ActiveNotifications or {}) do
				if notification and notification.ApplyTransparency then
					notification:ApplyTransparency()
			Library.Window.AcrylicPaint.Model.Transparency = 0.98
			Library.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = Value * 0.3

function Library:Notify(Config)
	return NotificationModule:New(Config)

if getgenv then
	getgenv().Fluent = Library
	Fluent = Library

local MinimizeButton = New("TextButton", {
	BackgroundColor3 = Color3.fromRGB(25, 25, 25),
	Size = UDim2.new(1, 0, 1, 0),
	BorderSizePixel = 2,
	BorderColor3 = Color3.fromRGB(0, 170, 255),
	AutoButtonColor = false
}, {
	New("UICorner", {
		CornerRadius = UDim.new(0.3, 0)
	}),
	New("UIPadding", {
		PaddingBottom = UDim.new(0, 4),
		PaddingLeft = UDim.new(0, 4),
		PaddingRight = UDim.new(0, 4),
		PaddingTop = UDim.new(0, 4),
	New("ImageLabel", {
		Image = Mobile and (Button_Icon ~= "" and Button_Icon or "rbxassetid://93647888056248") or "rbxassetid://93647888056248",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ScaleType = Enum.ScaleType.Fit
		New("UIAspectRatioConstraint", {
			AspectRatio = 1,
			AspectType = Enum.AspectType.FitWithinMaxSize,
		New("UICorner", {
			CornerRadius = UDim.new(1, 0)

local Minimizer

if Mobile then
	Minimizer = New("Frame", {
		Size = UDim2.new(0.08, 1, 0.1642, 1),
		Position = UDim2.new(0.45, 0, 0.025, 0),
		ZIndex = 999999999,
	{
		New("Frame", {
			BackgroundTransparency = 0.5,
			BorderSizePixel = 0
				CornerRadius = UDim.new(0.25, 0),
			MinimizeButton
		Size = UDim2.new(0, 0, 0, 0),
		Visible = false
			Size = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 0,

Creator.AddSignal(Minimizer.InputBegan, function(Input)
	if
		Input.UserInputType == Enum.UserInputType.MouseButton1
		or Input.UserInputType == Enum.UserInputType.Touch
	then
		Dragging = true
		MousePos = Input.Position
		StartPos = Minimizer.Position

		Input.Changed:Connect(function()
			if Input.UserInputState == Enum.UserInputState.End then
end)

Creator.AddSignal(MinimizeButton.InputChanged, function(Input)
		Input.UserInputType == Enum.UserInputType.MouseMovement
		DragInput = Input

Creator.AddSignal(Minimizer.InputChanged, function(Input)

Creator.AddSignal(UserInputService.InputChanged, function(Input)
	if Input == DragInput and Dragging then
		local GuiInset = game:GetService("GuiService"):GetGuiInset()
		local Delta = Input.Position - MousePos
		local ViewportSize = workspace.Camera and workspace.Camera.ViewportSize or Vector2.new(800, 600)
		local CurrentX = StartPos.X.Scale + (Delta.X/ViewportSize.X)
		local CurrentY = StartPos.Y.Scale + (Delta.Y/ViewportSize.Y)

		CurrentX = math.clamp(CurrentX, 0, (ViewportSize.X - Minimizer.AbsoluteSize.X)/ViewportSize.X)
		CurrentY = math.clamp(CurrentY, 0, ((ViewportSize.Y + GuiInset.Y) - Minimizer.AbsoluteSize.Y)/(ViewportSize.Y + GuiInset.Y))

		Minimizer.Position = UDim2.fromScale(CurrentX, CurrentY)

Creator.AddSignal(MinimizeButton.MouseButton1Click, function()

task.wait(0.1)





	if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then


	if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then


		local CurrentX = StartPos.X.Scale + (Delta.X / ViewportSize.X)
		local CurrentY = StartPos.Y.Scale + (Delta.Y / ViewportSize.Y)

		CurrentX = math.clamp(CurrentX, 0, (ViewportSize.X - Minimizer.AbsoluteSize.X) / ViewportSize.X)
		CurrentY = math.clamp(CurrentY, 0, ((ViewportSize.Y + GuiInset.Y) - Minimizer.AbsoluteSize.Y) / (ViewportSize.Y + GuiInset.Y))


AddSignal(MinimizeButton.MouseButton1Click, function()


return Library, SaveManager, InterfaceManager, Mobile

