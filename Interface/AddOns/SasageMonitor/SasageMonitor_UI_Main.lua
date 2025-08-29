MainFrame					= nil
SM_SyncOK					= false
CurrentTabID				= 0
WINDOW_WIDTH        		= 700
WINDOW_HEIGHT				= 400
WINDOW_OFFSET				= 113
BUTTON_WIDTH				= WINDOW_WIDTH - 44
BUTTON_HEIGHT				= 20
BUTTON_TOTAL				= math.floor((WINDOW_HEIGHT - WINDOW_OFFSET) / BUTTON_HEIGHT)
COL_NAME					= 150
COL_SERVER					= 150
COL_NOTES					= 250
COL_ADDED_AT				= 150
COL_INFOTEXT				= 400

local function SyncIgnoreList()
	if SM_SyncOK == false then
		local ignores = C_FriendList.GetNumIgnores()

		for count = 1, ignores do

			local nameIgnored = C_FriendList.GetIgnoreName(count)
			local name, server = FetchUserNameWithServer(nameIgnored, CurrentServer)

			local isInList = CheckCustomList(name, server, CustomBlackList)
			if isInList == true then return end

			local playerInfo = {
				name		= name,
				server		= server,
				memo		= '',
				added_at	= date("%Y-%m-%d")
			}

			table.insert(CustomBlackList, playerInfo)
		end
		SM_SyncOK = true
	end
end

function CreateUIFrames()
	if OptionVariables.hideAddedAt == true then
		WINDOW_WIDTH = WINDOW_WIDTH - 150
		BUTTON_WIDTH = BUTTON_WIDTH - 150
	end

	if MainFrame ~= nil then
		MainFrame:Show()
		return
	end

	MainFrame = CreateFrame("Frame", "SM", UIParent, "PortraitFrameTemplate")
	MainFrame:Hide()

	MainFrame:SetFrameStrata("DIALOG")
	MainFrame:SetWidth(WINDOW_WIDTH)
	MainFrame:SetHeight(WINDOW_HEIGHT)
	MainFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	MainFrame:SetMovable(true)
	MainFrame:EnableMouse(true)
	MainFrame:RegisterForDrag("LeftButton", "RightButton")

    MainFrame.title = _G["SMTitleText"]
	MainFrame.title:SetText("사사게 모니터 커스텀 리스트")

	local icon = MainFrame:CreateTexture("$parentIcon", "OVERLAY", nil, -8)
	icon:SetSize(60, 60)
	icon:SetPoint("TOPLEFT", -5, 7)
	icon:SetTexture("Interface\\FriendsFrame\\Battlenet-Portrait")

	MainFrame:SetScript("OnMouseDown", function(self)
        self:StartMoving()
            self.isMoving = true
    end)

	MainFrame:SetScript("OnMouseUp", function(self)
        if self.isMoving then
            self:StopMovingOrSizing()
            self.isMoving = false
        end
    end)

	MainFrame:SetScript("OnShow", function (self)
		SyncIgnoreList()
	end)

    tinsert(UISpecialFrames, "SM")


	local Tab1Button = CreateFrame("Button", "SMTab1", MainFrame, C_EditMode and "CharacterFrameTabTemplate" or "CharacterFrameTabButtonTemplate")

	Tab1Button:SetPoint("TOPLEFT", MainFrame, "BOTTOMLEFT", 20, 1)
	Tab1Button:SetText("블랙리스트")
	Tab1Button:SetID("1")

	Tab1Button:SetScript("OnClick", function(self)
        Tab2Frame:Hide()
        Tab3Frame:Hide()
        Tab4Frame:Hide()
        Tab1Frame:Show()
        PanelTemplates_SetTab(MainFrame, 1)
    end)

	local Tab2Button = CreateFrame("Button", "SMTab2", MainFrame, C_EditMode and "CharacterFrameTabTemplate" or "CharacterFrameTabButtonTemplate")

	Tab2Button:SetPoint("LEFT", "SMTab1", "RIGHT", 5, 0)
	Tab2Button:SetText("화이트리스트")
	Tab2Button:SetID("2")

	Tab2Button:SetScript("OnClick", function(self)
        Tab1Frame:Hide()
        Tab3Frame:Hide()
        Tab4Frame:Hide()
        Tab2Frame:Show()
        PanelTemplates_SetTab(MainFrame, 2)
    end)

	local Tab3Button = CreateFrame("Button", "SMTab3", MainFrame, C_EditMode and "CharacterFrameTabTemplate" or "CharacterFrameTabButtonTemplate")

	Tab3Button:SetPoint("LEFT", "SMTab2", "RIGHT", 5, 0)
	Tab3Button:SetText("그린리스트")
	Tab3Button:SetID("3")

	Tab3Button:SetScript("OnClick", function(self)
        Tab1Frame:Hide()
        Tab2Frame:Hide()
        Tab4Frame:Hide()
        Tab3Frame:Show()
        PanelTemplates_SetTab(MainFrame, 3)
    end)

	local Tab4Button = CreateFrame("Button", "SMTab4", MainFrame, C_EditMode and "CharacterFrameTabTemplate" or "CharacterFrameTabButtonTemplate")

	Tab4Button:SetPoint("LEFT", "SMTab3", "RIGHT", 5, 0)
	Tab4Button:SetText("옵션")
	Tab4Button:SetID("4")

	Tab4Button:SetScript("OnClick", function(self)
        Tab1Frame:Hide()
        Tab2Frame:Hide()
        Tab3Frame:Hide()
        Tab4Frame:Show()
        PanelTemplates_SetTab(MainFrame, 4)
    end)

	CreateTab1Frames()
	CreateTab2Frames()
	CreateTab3Frames()
	CreateTab4Frames()

	PanelTemplates_SetNumTabs(MainFrame, 4)
	PanelTemplates_SetTab(MainFrame, 1)
	CurrentTabID = PanelTemplates_GetSelectedTab(MainFrame)

    MainFrame:Show()
end