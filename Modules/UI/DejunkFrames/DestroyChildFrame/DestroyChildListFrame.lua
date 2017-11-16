-- Dejunk_DestroyChildListFrame: displays options for automatically destroying items.

local AddonName, DJ = ...

-- Libs
local L = LibStub('AceLocale-3.0'):GetLocale(AddonName)

-- Dejunk
local DestroyChildListFrame = DJ.DejunkFrames.DestroyChildListFrame

local Colors = DJ.Colors
local Tools = DJ.Tools
local FrameFactory = DJ.FrameFactory
local ListManager = DJ.ListManager

--[[
//*******************************************************************
//                       General Frame Functions
//*******************************************************************
--]]

function DestroyChildListFrame:OnInitialize()
  self:CreateListFrame()
end

function DestroyChildListFrame:OnResize()
  local ui = self.UI

  ui.DestroyablesFrame:Resize()

  local newWidth = ui.DestroyablesFrame:GetMinWidth() + Tools:Padding(2)
  local newHeight = ui.DestroyablesFrame:GetHeight()

  self:SetWidth(newWidth)
  self:SetHeight(newHeight)
end

--[[
//*******************************************************************
//                       UI Creation Functions
//*******************************************************************
--]]

-- Creates the Destroyables list frame.
function DestroyChildListFrame:CreateListFrame()
  local ui = self.UI
  local buttonCount = 5

  local listName = ListManager.Destroyables
  local baseTooltip = format("%s|n|n%s|n|n%s", L.LIST_FRAME_ADD_TOOLTIP,
    L.LIST_FRAME_REM_TOOLTIP, L.LIST_FRAME_REM_ALL_TOOLTIP)
  local tooltip = format("%s|n|n%s", L.DESTROYABLES_TOOLTIP, baseTooltip)

  ui.DestroyablesFrame = FrameFactory:CreateListFrame(self.Frame, listName,
    buttonCount, L.DESTROYABLES_TEXT, Colors.Destroyables, Colors.DestroyablesHi, tooltip)
  ui.DestroyablesFrame:SetPoint("TOPLEFT", Tools:Padding(), 0)
  ui.DestroyablesFrame:SetPoint("TOPRIGHT", self.Frame, "TOPRIGHT", -Tools:Padding(), 0)
end
