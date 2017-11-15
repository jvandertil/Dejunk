local AddonName, DJ = ...
local Colors = DJ.Colors

local schemeName = LibStub('AceLocale-3.0'):GetLocale(AddonName).SCHEME_NAME_GRAYSCALE

Colors.SchemeNames[#Colors.SchemeNames+1] = schemeName
Colors.Schemes[schemeName] = function()
  return
  {
    ParentFrame = {0.05, 0.05, 0.05, 0.95},

    Title = {0.5, 0.5, 0.5, 1},
    TitleShadow = {0.2, 0.2, 0.2, 1},

    Button   = {0.15, 0.15, 0.15, 1},
    ButtonHi = {0.3, 0.3, 0.3, 1},
    ButtonText = {0.90, 0.90, 0.90, 1},
    ButtonTextHi = {1, 1, 1, 1},

    LabelText = {0.6, 0.6, 0.6, 1},

    Area = {0.2, 0.2, 0.2, 0.5},

    ScrollFrame = {0.2, 0.2, 0.2, 0.5},
    Slider = {0.2, 0.2, 0.2, 0.5},
    SliderThumb = {0.2, 0.2, 0.2, 1},
    SliderThumbHi = {0.3, 0.3, 0.3, 1},
    ListButton = {0.2, 0.2, 0.2, 1},
    ListButtonHi = {0.3, 0.3, 0.3, 1},
  }
end