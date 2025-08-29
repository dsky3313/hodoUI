local media = LibStub:GetLibrary("LibSharedMedia-3.0", true);

local bgColors = {
  ["default"] = {.6,.5,.1}, --"default"
  ["Cursor GatherHerbs"] = {.04,.36,.04}, --herbs
  ["Cursor UnableGatherHerbs"] = {.04,.36,.04},
  ["Cursor Skin"] = {.51,.32,.25}, --skinning
  ["Cursor UnableSkin"] = {.51,.32,.25},
  ["Cursor Mine"] = {.54,.45,.23}, --mining
  ["Cursor UnableMine"] = {.54,.45,.23},
  ["4675732"] = {.01,.60,.18}, --green pet battle pawprint
  ["4675731"] = {.67,.47,0}, --yellow pet battle pawprint
  ["Cursor Speak"] = {.4,.39,.38}, --speech bubble
  ["Cursor UnableSpeak"] = {.4,.39,.38},
  ["Cursor LootAll"] = {.36,.3,.2}, --loot corpse
  ["Cursor UnableLootAll"] = {.36,.3,.2}, --loot corpse unable
  ["Cursor Pickup"] = {.43,.32,.23}, --vendor
  ["Cursor UnablePickup"] = {.43,.32,.23},
  ["Cursor Buy"] = {.43,.32,.23}, --bank
  ["Cursor UnableBuy"] = {.43,.32,.23},
  ["Cursor Mail"] = {.68,.11,.02}, --mail
  ["Cursor UnableMail"] = {.68,.11,.02},
  ["Cursor Innkeeper"] = {.29,.58,.71}, --hearthstone
  ["Cursor UnableInnkeeper"] = {.29,.58,.71},
  ["Cursor Interact"] = {.61,.48,.23}, --cogwheel
  ["Cursor UnableInteract"] = {.61,.48,.23},
  ["Cursor Taxi"] = {.49,.4,.16}, --flight point
  ["Cursor UnableTaxi"] = {.49,.4,.16},
  ["Cursor RepairNPC"] = {.4,.4,.4}, --repair anvil
  ["Cursor UnableRepairNPC"] = {.4,.4,.4},
  ["Cursor Quest"] = {.64,.55,0}, --normal yellow !
  ["Cursor UnableQuest"] = {.61,.53,0},
  ["Cursor QuestRepeatable"] = {0,.42,.87}, --blue ?
  ["Cursor UnableQuestRepeatable"] = {0,.42,.87},
  ["Cursor Cursor_UnableCampaignQuest_32"] = {.34,.14,0}, -- campaign !
  ["Cursor Cursor_CampaignQuest_32"] = {.34,.14,0},
  ["Cursor Cursor_UnableCampaignQuestTurnIn_32"] = {.34,.14,0}, -- campaign ?
  ["Cursor Cursor_CampaignQuestTurnIn_32"] = {.34,.14,0},
  ["Cursor Trainer"] = {.48,.32,.2}, --trainer (book)
  ["Cursor UnableTrainer"] = {.48,.32,.2},
  ["4675624"] = {.60,.26,.23}, --guard directions
  ["4675677"] = {.60,.26,.23}, --guard directions unable
  ["4675730"] = {.64,.29,.52}, --void storage
  ["4675725"] = {.64,.29,.52}, --void storage unable
  ["4675665"] = {.48,.35,.82}, --transmog
  ["4675720"] = {.48,.35,.82}, --transmog unable
  ["4675650"] = {.4,.4,.4}, --hand (loot chest/petting animal) --old?
  ["4675702"] = {.4,.4,.4}, --hand (loot chest/petting animal) unable --old?
  ["4675642"] = {.4,.4,.4}, --hand (loot chest/petting animal)
  ["4675694"] = {.4,.4,.4}, --hand (loot chest/petting animal) unable
  ["4675643"] = {.4,.47,.49}, --hand glow (loot chest/petting animal)
  ["4675695"] = {.4,.47,.49}, --hand glow (loot chest/petting animal) unable
  ["4675641"] = {.48,.27,.25}, --crossed swords
  ["4675693"] = {.48,.27,.25}, --crossed swords unable
  ["4675653"] = {0,.49,.49}, --upgrade equipment npc
  ["4675705"] = {0,.49,.49}, --upgrade equipment npc unable
  ["Cursor Inspect"] = {.34,.4,.42}, --inspect (magnifying glass)
  ["Cursor UnableInspect"] = {.34,.4,.42},
};

local unable = {
  ["4675695"] = true, --hand glow
  ["4675705"] = true, --upgrade equip npc
  ["4675693"] = true, --crossed swords
  ["4675702"] = true, --hand --old?
  ["4675694"] = true, --hand
  ["4675720"] = true, --transmog
  ["4675725"] = true, --void storage
  ["4675677"] = true, --guard directions
};

local fontObjs = {};

local optionsFrame;

local frame = CreateFrame("button", "SoftInteractHUD", UIParent);
frame:SetSize(200,40);
frame:SetPoint("CENTER", UIParent, "CENTER", 200, -100);
frame:SetMovable(true);
frame:RegisterForClicks("AnyUp", "AnyDown");
frame:SetScript("OnMouseDown", function(self, button)
      frame:StartMoving()
  end);
frame:SetScript("OnMouseUp", function(self, button)
      frame:StopMovingOrSizing();
      SoftInteractOptions.anchor = {frame:GetPoint(1)};
  end);
frame.bg = frame:CreateTexture(nil, "BACKGROUND");
frame.bg:SetColorTexture(.6,.5,.1,0.8);
frame.bgMask = frame:CreateMaskTexture(nil, "BACKGROUND");
frame.bgMask:SetTexture([[Interface\Addons\SoftInteractHUD\animaWoosh.tga]]);
frame.bg:AddMaskTexture(frame.bgMask);

frame.icon = frame:CreateTexture(nil,"ARTWORK");
frame.name = frame:CreateFontString(nil, "ARTWORK", "Game17Font_Shadow");
frame:Hide();

local function SetGrowthDir()
  if SoftInteractOptions.growth == 1 then
    frame.bg:ClearAllPoints();
    frame.bg:SetPoint("LEFT");
    frame.bgMask:ClearAllPoints();
    frame.bgMask:SetPoint("LEFT");
  elseif SoftInteractOptions.growth == 2 then
    frame.bg:ClearAllPoints();
    frame.bg:SetPoint("CENTER");
    frame.bgMask:ClearAllPoints();
    frame.bgMask:SetPoint("CENTER");
  else
    frame.bg:ClearAllPoints();
    frame.bg:SetPoint("RIGHT");
    frame.bgMask:ClearAllPoints();
    frame.bgMask:SetPoint("RIGHT");
  end
end

local function SetIconSide()
  if not SoftInteractOptions.flipIconSide then
    frame.icon:ClearAllPoints();
    frame.icon:SetPoint("LEFT", frame.bg, "LEFT", 7,0);
    frame.name:ClearAllPoints();
    frame.name:SetPoint("LEFT", frame.icon, "RIGHT", 7,0);
  else
    frame.icon:ClearAllPoints();
    frame.icon:SetPoint("RIGHT", frame.bg, "RIGHT", -7,0);
    frame.name:ClearAllPoints();
    frame.name:SetPoint("RIGHT", frame.icon, "LEFT", -7,0);
  end
end

local function UpdateBGWidth()
  local nameWidth = frame.name:GetWidth();
  if nameWidth <= SoftInteractOptions.bgMinWidth - 45 then
    frame.bg:SetWidth(SoftInteractOptions.bgMinWidth);
    frame.bgMask:SetWidth(SoftInteractOptions.bgMinWidth);
  else
    frame.bg:SetWidth(nameWidth + SoftInteractOptions.iconSize +10+20);
    frame.bgMask:SetWidth(nameWidth + SoftInteractOptions.iconSize +10+20);
  end
end

local function UpdateFont()
  frame.name:SetFont(media:Fetch("font", SoftInteractOptions.font), SoftInteractOptions.fontSize);

  local name = UnitName("softInteract");
  frame.name:SetText(name);
  
  UpdateBGWidth();
end

local function UpdateBGHeight()
  frame.bg:SetHeight(SoftInteractOptions.bgHeight);
  frame.bgMask:SetHeight(SoftInteractOptions.bgHeight);
end

--local function SetUpOptions()
--  local category, layout = Settings.RegisterVerticalLayoutCategory("Soft Interact HUD");
--  category.ID = "Soft Interact HUD";
--
--  Settings.SetupCVarCheckBox(category, "SoftTargetInteract", "enable key", "test")
--  
--  --SoftTargetInteractArc
--  local enableMoveCheck = Settings.RegisterProxySetting(category, "enableMove", SoftInteractOptions, Settings.VarType.Boolean, "Enable Move", Settings.Default.True);
--  Settings.CreateCheckBox(category, enableMoveCheck, "Enable the ability to move the HUD by clicking and dragging it. Disable to allow clicking through the HUD.");
--  Settings.SetOnValueChangedCallback("enableMove", function() frame:EnableMouse(SoftInteractOptions.enableMove); end, frame);
--  
--  Settings.RegisterAddOnCategory(category);
--end

local function optionsFrameToggle()
  if not SettingsPanel:IsShown() then
    Settings.OpenToCategory("Soft Interact HUD");    
  else
    SettingsPanel:Close(true);
  end
end

frame:RegisterEvent("PLAYER_SOFT_INTERACT_CHANGED");
frame:SetScript("OnEvent", function(pSelf, pEvent, pUnit, newTarget)
  if pEvent == "PLAYER_SOFT_INTERACT_CHANGED" then
    if (newTarget) then
      frame:Show();
      local name = UnitName("softInteract");
      frame.name:SetText(name);
      
      UpdateBGWidth();
      
      if not SetUnitCursorTexture(frame.icon, "softInteract") then
        frame.icon:SetAtlas("mechagon-projects");
      end
      
      local filePath = frame.icon:GetTextureFilePath();
      if type(frame.icon:GetTextureFilePath()) ~= "string" or string.find(filePath,"FileData") then
        filePath = tostring(frame.icon:GetTextureFileID())
      end
      
      local alpha = 0.9;
      local outOfRange = unable[filePath] or string.find(filePath,"Unable");
      if outOfRange then alpha = 0.5 end
      frame:SetAlpha(alpha);
      
      local color = bgColors[filePath] or bgColors["default"];
      frame.bg:SetColorTexture(color[1],color[2],color[3]);
      
      local nameplate = C_NamePlate.GetNamePlateForUnit("softinteract");
      --if nameplate then
      --  nameplate.UnitFrame.SoftTargetFrame:SetShown(SoftInteractOptions.showNPIcon);
      --  nameplate.UnitFrame.SoftTargetFrame:SetSize(SoftInteractOptions.npIconSize,SoftInteractOptions.npIconSize);
      --end
    else
      frame:Hide();
    end
  end
end)

--local SliceDemo = CreateFrame("Frame", nil, UIParent);
--SliceDemo:SetPoint("CENTER");
--SliceDemo:SetSize(256, 256);
--SliceDemo:SetResizable(true);
--
--SliceDemo.Texture = SliceDemo:CreateTexture();
--SliceDemo.Texture:SetTexture([[interface/soulbinds/soulbindsconduitpendinganimationmask]])
--SliceDemo.Texture:SetTextureSliceMargins(24, 24, 24, 24);
--SliceDemo.Texture:SetTextureSliceMode(Enum.UITextureSliceMode.Tiled);
--SliceDemo.Texture:SetAllPoints(SliceDemo);
--SliceDemo.Texture:SetVertexColor(0, 1, 0);
--
--SliceDemo.ResizeButton = CreateFrame("Button", nil, SliceDemo, "PanelResizeButtonTemplate");
--SliceDemo.ResizeButton:SetPoint("BOTTOMRIGHT");
--SliceDemo.ResizeButton:Init(SliceDemo, 64, 64, 512, 512);


optionsFrame = CreateFrame("Frame", "SoftInteractHUDOptionsFrame", UIParent);
local cat = Settings.RegisterCanvasLayoutCategory(optionsFrame, "Soft Interact HUD");
cat.ID = "Soft Interact HUD";
Settings.RegisterAddOnCategory(cat);


SLASH_SOFTINTHUD1 = '/softint';
function SlashCmdList.SOFTINTHUD(msg, editbox)
  optionsFrameToggle();
end
  
----
--  Helper Function to create a checkbox option.
----
local function CreateOptionCheckbox(clickFunc, checked, label, tooltipText)
  local checkbox = CreateFrame("CheckButton", nil, optionsFrame, "SettingsCheckBoxControlTemplate");
  checkbox.Checkbox:SetChecked(checked);
  checkbox.Checkbox:SetScript("OnClick", clickFunc);
  checkbox.Text:SetText(label);
  checkbox:SetWidth(500);
  checkbox.Checkbox:SetTooltipFunc(function()
        GameTooltip_AddDisabledLine(SettingsTooltip, HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(label))
        GameTooltip_AddDisabledLine(SettingsTooltip, NORMAL_FONT_COLOR:WrapTextInColorCode(tooltipText))
    end);
  checkbox:SetTooltipFunc(function()
        GameTooltip_AddDisabledLine(SettingsTooltip, HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(label))
        GameTooltip_AddDisabledLine(SettingsTooltip, NORMAL_FONT_COLOR:WrapTextInColorCode(tooltipText))
    end);
  return checkbox;
end

----
--  Helper Function to create a checkbox and slider combo option.
----
local function CreateOptionSliderCheckbox(label, tooltipText, checked, clickFunc, checkTooltipText, sliderDefaultVal, sliderMin, sliderMax, sliderStepSize, sliderFunc, sliderTooltipText)
  local slider = CreateFrame("slider", nil, optionsFrame, "SettingsCheckBoxSliderControlTemplate");
  slider.Text:SetText(label);
  slider:SetWidth(500)
  slider:SetTooltipFunc(function()
        GameTooltip_AddDisabledLine(SettingsTooltip, HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(label))
        GameTooltip_AddDisabledLine(SettingsTooltip, NORMAL_FONT_COLOR:WrapTextInColorCode(tooltipText))
    end);
    
  slider.Checkbox:SetChecked(checked);
  slider.Checkbox:SetScript("OnClick", clickFunc);
  slider.Checkbox:SetTooltipFunc(function()
        GameTooltip_AddDisabledLine(SettingsTooltip, HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(label))
        GameTooltip_AddDisabledLine(SettingsTooltip, NORMAL_FONT_COLOR:WrapTextInColorCode(checkTooltipText))
    end);
  slider.SliderWithSteppers:Init(sliderDefaultVal, sliderMin, sliderMax, (sliderMax - sliderMin) / sliderStepSize, {[2] = function(value) return value; end})
  slider.SliderWithSteppers:RegisterCallback("OnValueChanged", sliderFunc)
  local function RecursiveSliderTooltipInit(obj)
    obj:SetScript("OnEnter", function(self)
        SettingsTooltip:SetOwner(slider.SliderWithSteppers, "ANCHOR_TOPRIGHT");
        GameTooltip_AddDisabledLine(SettingsTooltip, HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(label))
        GameTooltip_AddDisabledLine(SettingsTooltip, NORMAL_FONT_COLOR:WrapTextInColorCode(sliderTooltipText))
        SettingsTooltip:Show();
      end)
    obj:SetScript("OnLeave", function(self)
        SettingsTooltip:Hide();
      end)
    for a,b in pairs({obj:GetChildren()}) do
      RecursiveSliderTooltipInit(b);
    end
  end
  RecursiveSliderTooltipInit(slider.SliderWithSteppers)
  return slider;
end

----
--  Helper Function to create a checkbox and slider combo option.
----
local function CreateOptionSlider(label, tooltipText,  sliderDefaultVal, sliderMin, sliderMax, sliderStepSize, sliderFunc)
  local slider = CreateFrame("slider", nil, optionsFrame, "SettingsSliderControlTemplate");
  slider.Text:SetText(label);
  slider:SetWidth(500)
  slider:SetTooltipFunc(function()
        GameTooltip_AddDisabledLine(SettingsTooltip, HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(label))
        GameTooltip_AddDisabledLine(SettingsTooltip, NORMAL_FONT_COLOR:WrapTextInColorCode(tooltipText))
    end);
    
  slider.SliderWithSteppers:Init(sliderDefaultVal, sliderMin, sliderMax, (sliderMax - sliderMin) / sliderStepSize, {[2] = function(value) return value; end})
  slider.SliderWithSteppers:RegisterCallback("OnValueChanged", sliderFunc)
  local function RecursiveSliderTooltipInit(obj)
    obj:SetScript("OnEnter", function(self)
        SettingsTooltip:SetOwner(slider.SliderWithSteppers, "ANCHOR_TOPRIGHT");
        GameTooltip_AddDisabledLine(SettingsTooltip, HIGHLIGHT_FONT_COLOR:WrapTextInColorCode(label))
        GameTooltip_AddDisabledLine(SettingsTooltip, NORMAL_FONT_COLOR:WrapTextInColorCode(tooltipText))
        SettingsTooltip:Show();
      end)
    obj:SetScript("OnLeave", function(self)
        SettingsTooltip:Hide();
      end)
    for a,b in pairs({obj:GetChildren()}) do
      RecursiveSliderTooltipInit(b);
    end
  end
  RecursiveSliderTooltipInit(slider.SliderWithSteppers)
  return slider;
end

local optionsFrameInit = false;
local function SoftInteractHUD_SetupOptionsMenu()
  if optionsFrameInit then return; end
  optionsFrameInit = true;
  ----Explanation
  local explainText = optionsFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
  explainText:SetWidth(optionsFrame:GetWidth() - 20)
  explainText:SetJustifyH("LEFT")
  explainText:SetWordWrap(true)
  explainText:SetPoint("TOPLEFT", optionsFrame, "TOPLEFT", 10, -20)
  explainText:SetText("For Soft Interact HUD to function, the Interact Key option must be enabled.\nNote: Due to an issue with this option, this addon currently forces this during login/reload.")
  
  ----Enable Interact Key
  --local function getSoftIntCVar() return tonumber(GetCVar("softTargetInteract")) == Enum.SoftTargetEnableFlags.Any end
  --local function setSoftIntCVar() SetCVar("softTargetInteract", (not getSoftIntCVar()) and Enum.SoftTargetEnableFlags.Any or Enum.SoftTargetEnableFlags.Gamepad); end
  --local checkbox = CreateOptionCheckbox(setSoftIntCVar, getSoftIntCVar(), ENABLE_INTERACT_TEXT, OPTION_TOOLTIP_ENABLE_INTERACT);
  --checkbox:SetPoint("TOPLEFT", explainText, "TOPLEFT", 16, -20)
  
  ----Explanation
  local explainText2 = optionsFrame:CreateFontString(nil, "ARTWORK", "GameFontHighlight");
  explainText2:SetWidth(optionsFrame:GetWidth() - 20)
  explainText2:SetJustifyH("LEFT")
  explainText2:SetWordWrap(true)
  explainText2:SetPoint("TOPLEFT", explainText, "BOTTOMLEFT", -16, -25)
  explainText2:SetText("The addon works best when Interact Key Icons (found under Accessibility > General in the game options) is set to Show All. If not set to Show All, the icon will be the default cog and dimming when out of range will not work when targeting a quest NPC. All non-quest NPCs seem to work with any Interact Key Icons option.")
  
  ----Show HUD Icon and Icon Size option
  local showIconBoxFunc = function(self, button, value)
      SoftInteractOptions.showIcon = not SoftInteractOptions.showIcon;
      self:GetParent().SliderWithSteppers:SetEnabled(SoftInteractOptions.showIcon)
      frame.icon:SetShown(SoftInteractOptions.showIcon);
    end
  local showIconSliderFunc = function(_, value) SoftInteractOptions.iconSize = value; frame.icon:SetSize(value, value) end
  local slider = CreateOptionSliderCheckbox("HUD Icon Visibility", "Adjust the visibility and size of the icon shown on the Soft Interact HUD.",
          SoftInteractOptions.showIcon, showIconBoxFunc, "Enable to show the interact's icon in the HUD.",
          SoftInteractOptions.iconSize, 15, 50, 1, showIconSliderFunc, "Adjust the size of the interact's icon in the HUD.\nDefault: 35")
  slider:SetPoint("TOPLEFT", explainText2, "BOTTOMLEFT", 16, -5)
  if not SoftInteractOptions.showIcon then
    slider.SliderWithSteppers:SetEnabled(false);
    frame.icon:Hide();
  end
    
  ----Enable Mouse Move
  frame:EnableMouse(SoftInteractOptions.enableMove);
  local function EnableMove() SoftInteractOptions.enableMove = not SoftInteractOptions.enableMove; frame:EnableMouse(SoftInteractOptions.enableMove); end
  local checkbox = CreateOptionCheckbox(EnableMove, SoftInteractOptions.enableMove, "Allow HUD Movement", "Enable the ability to move the HUD by clicking and dragging it. Disable to allow clicking through the HUD.");
  checkbox:SetPoint("TOPLEFT", slider, "BOTTOMLEFT", 0, -5)
  
  ----Show Nameplate Icon and Icon Size option
  --local showNPIconBoxFunc = function(self)
  --    SoftInteractOptions.showNPIcon = not SoftInteractOptions.showNPIcon;
  --    self:GetParent().SliderWithSteppers:SetEnabled(SoftInteractOptions.showNPIcon)
  --    if SoftInteractOptions.showNPIcon then
  --      SetCVar("SoftTargetNameplateSize",SoftInteractOptions.npIconSize)
  --    else
  --      SetCVar("SoftTargetNameplateSize",0)
  --    end
  --    if C_NamePlate.GetNamePlateForUnit("softinteract") then
  --      C_NamePlate.GetNamePlateForUnit("softinteract").UnitFrame.SoftTargetFrame:SetShown(SoftInteractOptions.showNPIcon);
  --      if SoftInteractOptions.showNPIcon then
  --        C_NamePlate.GetNamePlateForUnit("softinteract").UnitFrame.SoftTargetFrame:SetSize(SoftInteractOptions.npIconSize, SoftInteractOptions.npIconSize);
  --      end
  --    end
  --  end
  --local showNPIconSliderFunc = function(_, value)
  --    SoftInteractOptions.npIconSize = value;
  --    if C_NamePlate.GetNamePlateForUnit("softinteract") then
  --      C_NamePlate.GetNamePlateForUnit("softinteract").UnitFrame.SoftTargetFrame:SetSize(value, value);
  --    end
  --  end
  --local sliderNameplate = CreateOptionSliderCheckbox("Nameplate Icon Visibility", "Adjust the visibility and size of the icon shown on nameplates shown by certain Interact Key Icons settings.",
  --        SoftInteractOptions.showNPIcon, showNPIconBoxFunc, "Enable to show the interact's icon in on the target's nameplate.",
  --        GetCVar("SoftTargetNameplateSize"), 12, 40, 1, showNPIconSliderFunc, "Adjust the size of the interact's icon on the target's nameplate.")
  --sliderNameplate:SetPoint("TOPLEFT", checkbox, "BOTTOMLEFT", 0, -5)
  --if not SoftInteractOptions.showNPIcon then
  --  sliderNameplate.SliderWithSteppers:SetEnabled(false);
  --end
  
  --Set how the HUD grows for longer names
  local growthLabels = { "Left (Default)", "Center", "Right" }
  
  local anchorDropDownLabel = optionsFrame:CreateFontString("anchorDropDownLabel", "OVERLAY", "GameFontNormal");
  anchorDropDownLabel:SetPoint("TOPLEFT", checkbox, "BOTTOMLEFT", 0,-20);
  anchorDropDownLabel:SetText("Set Growth Anchor")
  local anchorDropDown = CreateFrame("FRAME", nil, optionsFrame, "UIDropDownMenuTemplate");
  anchorDropDown:SetPoint("LEFT",anchorDropDownLabel,"RIGHT",5,-1);
  UIDropDownMenu_SetWidth(anchorDropDown, 200);
  UIDropDownMenu_SetText(anchorDropDown, growthLabels[SoftInteractOptions.growth]);
  UIDropDownMenu_Initialize(anchorDropDown, function(self, level, menuList)
    local info = UIDropDownMenu_CreateInfo()
    for i=1,3 do
      info.text = growthLabels[i];
      info.checked = SoftInteractOptions.growth == i;
      info.func = function()
        if SoftInteractOptions.growth ~= i then
          SoftInteractOptions.growth = i;
          UIDropDownMenu_SetText(anchorDropDown, growthLabels[i]);
          SetGrowthDir();
        end
      end;
      UIDropDownMenu_AddButton(info);
    end
  end)
  anchorDropDown:SetScript("OnEnter", function()
    GameTooltip:SetOwner(anchorDropDown,"ANCHOR_TOP");
    GameTooltip_SetTitle(GameTooltip, "Changes which direction the HUD grows in for longer names.");
    GameTooltip:Show();
  end)
  anchorDropDown:SetScript("OnLeave", function()
    GameTooltip:Hide();
  end)
  
  ----Flip Icon Side
  local function FlipIcon() SoftInteractOptions.flipIconSide = not SoftInteractOptions.flipIconSide; SetIconSide(); end
  local flipIconCheckbox = CreateOptionCheckbox(FlipIcon, SoftInteractOptions.flipIconSide, "Flip Icon Side", "Flips the HUD so the Icon appears on the right side instead of the left.");
  flipIconCheckbox:SetPoint("TOPLEFT", anchorDropDownLabel, "BOTTOMLEFT", 0, -15)
  
  --font drop down
  local fontDropDownLabel = optionsFrame:CreateFontString("fontDropDownLabel", "OVERLAY", "GameFontNormal");
  fontDropDownLabel:SetPoint("TOPLEFT", flipIconCheckbox, "BOTTOMLEFT", 0,-20);
  fontDropDownLabel:SetText("Set Font")
  local fontDropDown = CreateFrame("FRAME", nil, optionsFrame, "UIDropDownMenuTemplate");
  fontDropDown:SetPoint("LEFT",fontDropDownLabel,"RIGHT",5,-1);
  UIDropDownMenu_SetWidth(fontDropDown, 200);
  UIDropDownMenu_SetText(fontDropDown, SoftInteractOptions.font);
  UIDropDownMenu_Initialize(fontDropDown, function(self, level, menuList)
    local info = UIDropDownMenu_CreateInfo()
    local list = media:List("font");
    for i=1,#list do
      info.text = list[i];
      info.checked = list[i] == SoftInteractOptions.font;
      if not fontObjs[list[i]] then
        fontObjs[list[i]] = CreateFont("siHUD"..i);
        fontObjs[list[i]]:SetFont(media:Fetch("font", list[i]), 12, "");
      end
      info.fontObject = fontObjs[list[i]];
      info.func = function()
        if SoftInteractOptions.font ~= list[i] then
          SoftInteractOptions.font = list[i];
          UIDropDownMenu_SetText(fontDropDown, list[i]);
          UpdateFont();
        end
      end;
      UIDropDownMenu_AddButton(info);
    end
  end)
  fontDropDown:SetScript("OnEnter", function()
    GameTooltip:SetOwner(fontDropDown,"ANCHOR_TOP");
    GameTooltip_SetTitle(GameTooltip, "Changes the font used in the HUD.");
    GameTooltip:Show();
  end)
  fontDropDown:SetScript("OnLeave", function()
    GameTooltip:Hide();
  end)
  
  --font size slider
  local function FontSizeFunc(_, value) SoftInteractOptions.fontSize = value; UpdateFont(); end
  local fontSizeSlider = CreateOptionSlider("Font Size:", "Change the size of the font in the HUD.\nDefault: 17", SoftInteractOptions.fontSize, 8, 35, 1, FontSizeFunc);
  fontSizeSlider:SetPoint("TOPLEFT", fontDropDownLabel, "BOTTOMLEFT", 0, -25)
  
  --bg height slider
  local function BGHeightFunc(_, value) SoftInteractOptions.bgHeight = value; UpdateBGHeight(); end
  local bgHeightSlider = CreateOptionSlider("Background Height:", "Change the height of the Background.\nDefault: 40", SoftInteractOptions.bgHeight, 15, 75, 2.5, BGHeightFunc);
  bgHeightSlider:SetPoint("TOPLEFT", fontSizeSlider, "BOTTOMLEFT", 0, -15)
  
  --bg min width slider
  local function BGWidthFunc(_, value) SoftInteractOptions.bgMinWidth = value; end
  local bgWidthSlider = CreateOptionSlider("Background Min Width:", "Change the minimum width the Background is with shorter names.\nDefault: 200", SoftInteractOptions.bgMinWidth, 50, 350, 15, BGWidthFunc);
  bgWidthSlider:SetPoint("TOPLEFT", bgHeightSlider, "BOTTOMLEFT", 0, -15)
end
optionsFrame:SetScript("OnShow", function()
  SoftInteractHUD_SetupOptionsMenu();
end);

optionsFrame:RegisterEvent("ADDON_LOADED");
optionsFrame:SetScript("OnEvent", function(pSelf, pEvent, pUnit)
  if C_CVar.GetCVar("SoftTargetInteract") == "0" then
    C_CVar.SetCVar("SoftTargetInteract", "3");
  end
  if pEvent == "ADDON_LOADED" and pUnit == "SoftInteractHUD" then
    local info = UIDropDownMenu_CreateInfo();
    info.text = "Soft Interact HUD (Options Toggle)"
    info.notCheckable = true
    info.func = optionsFrameToggle;
    AddonCompartmentFrame:RegisterAddon(info);
  
    if (SoftInteractOptions == nil) then
      SoftInteractOptions = {};
      SoftInteractOptions.useOnlyDefaultColor = false;
      SoftInteractOptions.showIcon = true;
      SoftInteractOptions.iconSize = 35;
      SoftInteractOptions.enableMove = false;
      SoftInteractOptions.showNPIcon = GetCVar("SoftTargetNameplateSize") ~= 0;
      --SoftInteractOptions.npIconSize = 22;
    end
    frame:EnableMouse(SoftInteractOptions.enableMove);
    if not SoftInteractOptions.iconSize then SoftInteractOptions.iconSize = 35; end
    --if not SoftInteractOptions.npIconSize then SoftInteractOptions.npIconSize = 22; end
    if not SoftInteractOptions.anchor then SoftInteractOptions.anchor = {frame:GetPoint(1)}; end
    if not SoftInteractOptions.growth then SoftInteractOptions.growth = 1; end
    if not SoftInteractOptions.flipIconSide then SoftInteractOptions.flipIconSide = false; end
    if not SoftInteractOptions.fontSize then SoftInteractOptions.fontSize = 17; end
    if not SoftInteractOptions.bgHeight then SoftInteractOptions.bgHeight = 40; end
    if not SoftInteractOptions.bgMinWidth then SoftInteractOptions.bgMinWidth = 200; end

    SetGrowthDir();
    SetIconSide();
    frame.icon:SetSize(SoftInteractOptions.iconSize,SoftInteractOptions.iconSize);
    UpdateFont();
    UpdateBGHeight();

    frame:ClearAllPoints();
    frame:SetPoint(SoftInteractOptions.anchor[1],"UIParent",SoftInteractOptions.anchor[3],SoftInteractOptions.anchor[4],SoftInteractOptions.anchor[5]);
  end
end)
