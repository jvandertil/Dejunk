-- Dejunk_CurrencyInputFrame: contains FrameFactory functions to create a CheckButton & EditBox combo frame.

local AddonName, DJ = ...

-- Libs
local L = LibStub('AceLocale-3.0'):GetLocale(AddonName)

-- Upvalues
local abs, tonumber = abs, tonumber

-- Dejunk
local FrameFactory = DJ.FrameFactory

local DejunkDB = DJ.DejunkDB
local Tools = DJ.Tools
local FrameCreator = DJ.FrameCreator

--[[
//*******************************************************************
//                  CurrencyInputFrame Functions
//*******************************************************************
--]]

local moneyIconsTexture = "Interface\\MoneyFrame\\UI-MoneyIcons"

function FrameFactory:CreateCurrencyInputFrame(parent, font, svKey)
  assert(svKey and type(DejunkDB.SV[svKey]) == "table")

  local frame = FrameCreator:CreateFrame(parent)
  frame.FF_ObjectType = "CurrencyInputFrame"

  -- Gold
  local goldEditBoxFrame = self:CreateEditBoxFrame(frame, font, 5, true)
  goldEditBoxFrame.EditBox:SetJustifyH("CENTER")
  frame.GoldEditBoxFrame = goldEditBoxFrame

  local goldTexture = self:CreateTexture(frame)
  goldTexture:ClearAllPoints()
  goldTexture:SetTexture(moneyIconsTexture)
  goldTexture:SetTexCoord(0, 0.25, 0, 1)
  frame.GoldTexture = goldTexture

  -- Silver
  local silverEditBoxFrame = self:CreateEditBoxFrame(frame, font, 2, true)
  silverEditBoxFrame.EditBox:SetJustifyH("CENTER")
  frame.SilverEditBoxFrame = silverEditBoxFrame

  local silverTexture = self:CreateTexture(frame)
  silverTexture:ClearAllPoints()
  silverTexture:SetTexture(moneyIconsTexture)
  silverTexture:SetTexCoord(0.25, 0.5, 0, 1)
  frame.SilverTexture = silverTexture

  -- Copper
  local copperEditBoxFrame = self:CreateEditBoxFrame(frame, font, 2, true)
  copperEditBoxFrame.EditBox:SetJustifyH("CENTER")
  frame.CopperEditBoxFrame = copperEditBoxFrame

  local copperTexture = self:CreateTexture(frame)
  copperTexture:ClearAllPoints()
  copperTexture:SetTexture(moneyIconsTexture)
  copperTexture:SetTexCoord(0.5, 0.75, 0, 1)
  frame.CopperTexture = copperTexture

  -- Initialize points
  goldEditBoxFrame:SetPoint("TOPLEFT", frame)
  goldTexture:SetPoint("LEFT", goldEditBoxFrame, "RIGHT", 0, 0)

  silverEditBoxFrame:SetPoint("LEFT", goldTexture, "RIGHT", 0, 0)
  silverTexture:SetPoint("LEFT", silverEditBoxFrame, "RIGHT", 0, 0)

  copperEditBoxFrame:SetPoint("LEFT", silverTexture, "RIGHT", 0, 0)
  copperTexture:SetPoint("LEFT", copperEditBoxFrame, "RIGHT", 0, 0)

  -- Reduce duplicate code
  local onEditFocusLost = function(self, name)
    local value = tonumber(self:GetText()) or 0
    if value then DejunkDB.SV[svKey][name] = floor(abs(value)) end
    self:SetText(DejunkDB.SV[svKey][name])
  end

  -- Gold scripts
  goldEditBoxFrame.EditBox:SetScript("OnEditFocusGained", function(self)
    self:HighlightText() end)
  goldEditBoxFrame.EditBox:SetScript("OnEditFocusLost", function(self)
    onEditFocusLost(self, "Gold")
  end)

  -- Silver scripts
  silverEditBoxFrame.EditBox:SetScript("OnEditFocusGained", function(self)
    self:HighlightText() end)
  silverEditBoxFrame.EditBox:SetScript("OnEditFocusLost", function(self)
    onEditFocusLost(self, "Silver") end)

  -- Copper scripts
  copperEditBoxFrame.EditBox:SetScript("OnEditFocusGained", function(self)
    self:HighlightText() end)
  copperEditBoxFrame.EditBox:SetScript("OnEditFocusLost", function(self)
    onEditFocusLost(self, "Copper") end)

  -- Gets the minimum width of the frame.
  function frame:GetMinWidth()
    local boxWidth = goldEditBoxFrame:GetWidth() +
      silverEditBoxFrame:GetWidth() + copperEditBoxFrame:GetWidth()
    local texWidth = (goldTexture:GetWidth() * 3)

    return boxWidth + texWidth
  end

  -- Gets the minimum height of the frame.
  function frame:GetMinHeight()
    return goldEditBoxFrame:GetHeight()
  end

  -- Resizes the frame.
  function frame:Resize()
    goldEditBoxFrame:Resize()
    silverEditBoxFrame:Resize()
    copperEditBoxFrame:Resize()

    local texSize = goldEditBoxFrame:GetHeight() * 0.7

    for _, tex in pairs({goldTexture, silverTexture, copperTexture}) do
      tex:SetWidth(texSize)
      tex:SetHeight(texSize)
    end

    self:SetWidth(self:GetMinWidth())
    self:SetHeight(self:GetMinHeight())
  end

  function frame:Refresh()
    goldEditBoxFrame:Refresh()
    silverEditBoxFrame:Refresh()
    copperEditBoxFrame:Refresh()

    -- SV
    goldEditBoxFrame.EditBox:SetText(DejunkDB.SV[svKey].Gold)
    silverEditBoxFrame.EditBox:SetText(DejunkDB.SV[svKey].Silver)
    copperEditBoxFrame.EditBox:SetText(DejunkDB.SV[svKey].Copper)
  end

  frame:Refresh()

  return frame
end

function FrameFactory:EnableCurrencyInputFrame(frame)
  frame.GoldEditBoxFrame.EditBox:SetEnabled(true)
  frame.SilverEditBoxFrame.EditBox:SetEnabled(true)
  frame.CopperEditBoxFrame.EditBox:SetEnabled(true)
end

function FrameFactory:DisableCurrencyInputFrame(frame)
  frame.GoldEditBoxFrame.EditBox:SetEnabled(false)
  frame.SilverEditBoxFrame.EditBox:SetEnabled(false)
  frame.CopperEditBoxFrame.EditBox:SetEnabled(false)
end
