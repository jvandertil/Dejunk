local AddonName, DJ = ...
local Colors = DJ.Colors

local schemeName = LibStub('AceLocale-3.0'):GetLocale(AddonName).SCHEME_NAME_GREENSCALE

Colors.SchemeNames[#Colors.SchemeNames+1] = schemeName
Colors.Schemes[schemeName] = function()
  return
  {
    ParentFrame = {0, 0.05, 0, 0.95},

    Title = {0.247, 0.5, 0.247, 1},
    TitleShadow = {0.05, 0.2, 0.05, 1},

    Button   = {0.05, 0.15, 0.05, 1},
    ButtonHi = {0.15, 0.3, 0.15, 1},
    ButtonText = {0.5, 1, 0.5, 1},
    ButtonTextHi = {1, 1, 1, 1},

    LabelText = {0.35, 0.6, 0.35, 1},

    Inclusions = {0.35, 0.6, 0.35, 1},
    InclusionsHi = {0.45, 0.7, 0.45, 1},

    Exclusions = {0.35, 0.6, 0.35, 1},
    ExclusionsHi = {0.45, 0.7, 0.45, 1},

    Area = {0.1, 0.2, 0.1, 0.5},

    ScrollFrame = {0.1, 0.2, 0.1, 0.5},
    Slider = {0.1, 0.2, 0.1, 0.5},
    SliderThumb = {0.1, 0.2, 0.1, 1},
    SliderThumbHi = {0.15, 0.3, 0.15, 1},
    ListButton = {0.1, 0.2, 0.1, 1},
    ListButtonHi = {0.15, 0.3, 0.15, 1},
  }
end
