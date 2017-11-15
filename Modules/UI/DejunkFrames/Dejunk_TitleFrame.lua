-- Dejunk_TitleFrame: displays a menu title, character specific settings button, and close button.

local AddonName, DJ = ...

-- Libs
local L = LibStub('AceLocale-3.0'):GetLocale(AddonName)

-- Dejunk
local TitleFrame = DJ.DejunkFrames.TitleFrame

local Colors = DJ.Colors
local Tools = DJ.Tools
local FrameFactory = DJ.FrameFactory
local ParentFrame = DJ.DejunkFrames.ParentFrame

-- Variables
local Scales = {1, 0.75, 0.5}
local scaleIndex = 1

--[[
//*******************************************************************
//                       General Frame Functions
//*******************************************************************
--]]

-- @Override
function TitleFrame:OnInitialize()
  local frame = self.Frame
  local ui = self.UI

  -- Character Specific Settings check button
  ui.CharSpecCheckButton = FrameFactory:CreateCheckButton(frame,
    "Small", L.CHARACTER_SPECIFIC_TEXT, nil, L.CHARACTER_SPECIFIC_TOOLTIP)
  ui.CharSpecCheckButton:SetPoint("TOPLEFT", frame, "TOPLEFT", Tools:Padding(), -Tools:Padding())
  ui.CharSpecCheckButton:SetChecked(not DejunkPerChar.UseGlobal)
  ui.CharSpecCheckButton:SetScript("OnClick", function(self)
    DJ.Core:ToggleCharacterSpecificSettings() end)
  ui.CharSpecCheckButton:SetScript("OnUpdate", function(self)
    local enabled = (DJ.Core:CanDejunk() and DJ.Core:CanDestroy())
    self:SetEnabled(enabled)
  end)

  -- Minimap Icon check button
  ui.MinimapIconCheckButton = FrameFactory:CreateCheckButton(frame,
    "Small", L.MINIMAP_CHECKBUTTON_TEXT, nil, L.MINIMAP_CHECKBUTTON_TOOLTIP)
  ui.MinimapIconCheckButton:SetPoint("TOPLEFT", ui.CharSpecCheckButton, "BOTTOMLEFT", 0, 0)
  ui.MinimapIconCheckButton:SetChecked(not DejunkGlobal.Minimap.hide)
  ui.MinimapIconCheckButton:SetScript("OnClick", function(self) DJ.MinimapIcon:Toggle() end)

  -- Item tooltip check button
  ui.ItemTooltipCheckButton = FrameFactory:CreateCheckButton(frame,
    "Small", L.ITEM_TOOLTIP_TEXT, nil, L.ITEM_TOOLTIP_TOOLTIP)
  ui.ItemTooltipCheckButton:SetPoint("LEFT", ui.MinimapIconCheckButton.Text, "RIGHT", Tools:Padding(0.5), 0)
  ui.ItemTooltipCheckButton:SetChecked(DejunkGlobal.ItemTooltip)
  ui.ItemTooltipCheckButton:SetScript("OnClick", function(self)
    DejunkGlobal.ItemTooltip = not DejunkGlobal.ItemTooltip end)

  -- Title
  ui.TitleFontString = FrameFactory:CreateFontString(frame,
    "OVERLAY", "NumberFontNormalHuge", Colors.Title,
    {2, -1.5}, Colors.TitleShadow)
  ui.TitleFontString:SetPoint("TOP", 0, -Tools:Padding())
  ui.TitleFontString:SetText(L.DEJUNK_OPTIONS_TEXT)

  -- Close Button
  ui.CloseButton = FrameFactory:CreateButton(frame, "GameFontNormal", "X")
  ui.CloseButton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -1, -1)
  ui.CloseButton:SetScript("OnClick", function(self) ParentFrame:Hide() end)

  -- Scale button
  ui.ScaleButton = FrameFactory:CreateButton(frame, "GameFontNormal", L.SCALE_TEXT)
  ui.ScaleButton:SetPoint("TOPRIGHT", ui.CloseButton, "TOPLEFT", -Tools:Padding(0.25), 0)
  ui.ScaleButton:SetScript("OnClick", function(self, button, down)
    scaleIndex = ((scaleIndex + 1) % (#Scales + 1))
    if scaleIndex == 0 then scaleIndex = 1 end
    ParentFrame.Frame:SetScale(Scales[scaleIndex])
    ParentFrame:Resize()
  end)

  -- Scheme button
  ui.SchemeButton = FrameFactory:CreateButton(frame, "GameFontNormal", L.COLOR_SCHEME_TEXT)
  ui.SchemeButton:SetPoint("TOPRIGHT", ui.ScaleButton, "TOPLEFT", -Tools:Padding(0.25), 0)
  ui.SchemeButton:SetScript("OnClick", function(self, button, down)
    Colors:NextScheme()
  end)

  -- DejunkDestroy button
  ui.DejunkDestroyButton = FrameFactory:CreateButton(frame, "GameFontNormal", L.DESTROY_TEXT)
  ui.DejunkDestroyButton:SetPoint("TOPRIGHT", ui.SchemeButton, "TOPLEFT", -Tools:Padding(0.25), 0)
  ui.DejunkDestroyButton:SetScript("OnClick", function(self, button, down)
    DJ.Core:SwapDejunkDestroyChildFrames()
  end)
end

-- @Override
function TitleFrame:Resize()
  local ui = self.UI

  local titleWidth = ui.TitleFontString:GetStringWidth()
  local titleHeight = ui.TitleFontString:GetStringHeight()

  -- Left side
  local charSpecWidth = (ui.CharSpecCheckButton:GetMinWidth() + Tools:Padding())
  local charSpecHeight = (ui.CharSpecCheckButton:GetMinHeight() + Tools:Padding())

  local minimapWidth = (ui.MinimapIconCheckButton:GetMinWidth() + Tools:Padding())
  local minimapHeightHeight = ui.MinimapIconCheckButton:GetMinHeight()

  local tooltipWidth = ui.ItemTooltipCheckButton:GetMinWidth() + Tools:Padding(0.5)
  local tooltipHeight = ui.ItemTooltipCheckButton:GetMinHeight()

  -- Right side
  local buttons = {ui.CloseButton, ui.ScaleButton, ui.SchemeButton, ui.DejunkDestroyButton}
  local buttonsWidth = 0
  local buttonsHeight = 0

  -- Resize buttons and calculate their collective width and height
  for i, b in pairs(buttons) do
    -- 1px padding for the CloseButton, 25% normal padding for the rest
    -- These values are the X offsets used for SetPoint calls when initializing the buttons
    local padding = (b == ui.CloseButton) and 1 or Tools:Padding(0.25)
    b:Resize()
    buttonsWidth = buttonsWidth + (b:GetWidth() + padding)
    buttonsHeight = max(buttonsHeight, b:GetHeight())
  end

  -- Width
  local leftSideWidth = max(charSpecWidth, (minimapWidth + tooltipWidth))
  local rightSideWith = buttonsWidth

  local newWidth = (max(leftSideWidth, rightSideWith) * 2)
  newWidth = ((newWidth + titleWidth) + Tools:Padding(4))

  -- Height
  local leftSideHeight = (charSpecHeight + max(minimapHeightHeight, tooltipHeight))
  local rightSideHeight = buttonsHeight
  local titleHeight = (titleHeight + Tools:Padding())

  local newHeight = max(titleHeight, leftSideHeight, rightSideHeight)

  self.Frame:SetWidth(newWidth)
  self.Frame:SetHeight(newHeight)
end

-- Updates the title text and dejunk/destroy button.
function TitleFrame:SetTitleToDejunk()
  assert(self.Initialized)
  self.UI.TitleFontString:SetText(L.DEJUNK_OPTIONS_TEXT)
  self.UI.DejunkDestroyButton.Text:SetText(L.DESTROY_TEXT)
end

-- Updates the title text and dejunk/destroy button.
function TitleFrame:SetTitleToDestroy()
  assert(self.Initialized)
  self.UI.TitleFontString:SetText(L.DESTROY_OPTIONS_TEXT)
  self.UI.DejunkDestroyButton.Text:SetText(L.DEJUNK_TEXT)
end