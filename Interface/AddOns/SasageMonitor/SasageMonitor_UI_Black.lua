-- ListColor, TabFrameNum, HideIfNotTab1
CustomBlackList       = CustomBlackList or {}
local listColor       = "블랙"
local infotext        = "다시 만나고 싶지 않은 유저를 등록하면 툴팁에 표시됩니다. (%d명 등록됨)"
local SMScrollButtons = {}
local SMScrollFrame   = nil
local SelectedRowId   = 0
local currnetOffset   = 0
local columnCount     = 0
local isSortAscending = true

local function CustomDataUpdate(self)
	FauxScrollFrame_Update(self, #CustomBlackList, BUTTON_TOTAL, BUTTON_HEIGHT)

	Tab1Frame.infotext:SetText(format(infotext, #CustomBlackList))

	if SelectedRowId > #CustomBlackList then
		SelectedRowId = #CustomBlackList
	end

	currnetOffset  = FauxScrollFrame_GetOffset(self)
	local name     = ""
	local server   = ""
	local memo     = ""
	local added_at = ""
	local index    = 0

	for count = 1, BUTTON_TOTAL do
		index = count + currnetOffset

		if index <= #CustomBlackList then
			name = CustomBlackList[index].name
			server = CustomBlackList[index].server
			memo = CustomBlackList[index].memo or ""
			added_at = CustomBlackList[index].added_at

			if name == nil or server == nil or name:match("^%s*$") then
				table.remove(CustomBlackList, count)
			end
			if added_at == nil then
				CustomBlackList[index].added_at = date("%Y-%m-%d")
			end

			if CustomBlackList[index].star == true then
				SMScrollButtons[count].name:SetText(name .. "|cFFFF4000★")
			else
				SMScrollButtons[count].name:SetText(name)
			end
			SMScrollButtons[count].server:SetText(server)
			SMScrollButtons[count].memo:SetText(memo)
			if OptionVariables.hideAddedAt ~= true then
				SMScrollButtons[count].added_at:SetText(added_at)
			end
			SMScrollButtons[count]:SetID(count)
			SMScrollButtons[count]:Show()
		else
			SMScrollButtons[count]:Hide()
		end
	end
end

local function RemoveFromList(name, server)
	for i, playerInfo in ipairs(CustomBlackList) do
		if playerInfo.name == name and playerInfo.server == server then
			table.remove(CustomBlackList, i)
			break
		end
	end

	SelectedRowId = 0
	CustomDataUpdate(SMScrollFrame)
end

local function markPlayerStar(name, server)
	for i, playerInfo in ipairs(CustomBlackList) do
		if playerInfo.name == name and playerInfo.server == server then
			playerInfo.star = not playerInfo.star
		end
	end

	CustomDataUpdate(SMScrollFrame)
end


local function SMScrollButtonClick(self, button, down)
	if down == true then return end
	local index = FauxScrollFrame_GetOffset(SMScrollFrame) + self:GetID()

	if SelectedRowId ~= self:GetID() then
		SelectedRowId = self:GetID()
		CustomDataUpdate(SMScrollFrame)
	end

	if button == "RightButton" then
		local name = CustomBlackList[index].name
		local server = CustomBlackList[index].server

		MenuUtil.CreateContextMenu(UIParent, function(ownerRegion, root)
			nameUI = name .. "-" .. server
			root:CreateTitle(nameUI)
			root:CreateDivider()
			root:CreateButton("메모 수정",
				function()
					StaticPopup_Show("SMEditMemo_Black", name .. "-" .. server)
				end)
			root:CreateButton("강조 표시",
				function()
					markPlayerStar(name, server)
				end)
			root:CreateDivider()
			root:CreateButton("리스트에서 삭제",
				function()
					RemoveFromList(name, server)
				end)
			root:CreateButton("취소",
				function()
				end)
		end)
	end
end

local function CreateSingleRowButton(count)
	SMScrollButtons[count] = CreateFrame("Button", nil, SMScrollFrame:GetParent(), "IgnoreListButtonTemplate")
	if count == 1 then
		SMScrollButtons[count]:SetPoint("TOPLEFT", SMScrollFrame, -1, 0)
	else
		SMScrollButtons[count]:SetPoint("TOP", SMScrollButtons[count - 1], "BOTTOM")
	end

	SMScrollButtons[count]:SetSize(BUTTON_WIDTH, BUTTON_HEIGHT)
	SMScrollButtons[count]:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	SMScrollButtons[count]:SetScript("OnClick", SMScrollButtonClick)

	SMScrollButtons[count].name:SetWidth(COL_NAME - 11)

	SMScrollButtons[count].server = SMScrollButtons[count]:CreateFontString("FontString", "OVERLAY", "GameFontHighlight")
	SMScrollButtons[count].server:SetPoint("LEFT", SMScrollButtons[count].name, "RIGHT", 0, 0)
	SMScrollButtons[count].server:SetWidth(COL_SERVER - 11)
	SMScrollButtons[count].server:SetJustifyH("LEFT")

	SMScrollButtons[count].memo = SMScrollButtons[count]:CreateFontString("FontString", "OVERLAY", "GameFontHighlight")
	SMScrollButtons[count].memo:SetPoint("LEFT", SMScrollButtons[count].server, "RIGHT", 0, 0)
	SMScrollButtons[count].memo:SetWidth(COL_NOTES - 11)
	SMScrollButtons[count].memo:SetJustifyH("LEFT")
	SMScrollButtons[count].memo:SetWordWrap(false)

	SMScrollButtons[count].added_at = SMScrollButtons[count]:CreateFontString("FontString", "OVERLAY",
		"GameFontHighlight")
	SMScrollButtons[count].added_at:SetPoint("LEFT", SMScrollButtons[count].memo, "RIGHT", 0, 0)
	SMScrollButtons[count].added_at:SetWidth(COL_ADDED_AT - 11)
	SMScrollButtons[count].added_at:SetJustifyH("LEFT")
end

local function CreateRowButtons()
	SMScrollButtons = {}

	for count = 1, BUTTON_TOTAL do
		CreateSingleRowButton(count)
	end

	CustomDataUpdate(SMScrollFrame)
end

local function CompareByField(player1, player2, id)
	if id == 1 then
		if isSortAscending then
			return player1.name < player2.name
		else
			return player1.name > player2.name
		end
	elseif id == 2 then
		if isSortAscending then
			return player1.server < player2.server
		else
			return player1.server > player2.server
		end
	elseif id == 3 then
		if isSortAscending then
			return player1.memo < player2.memo
		else
			return player1.memo > player2.memo
		end
	elseif id == 4 then
		if isSortAscending then
			return player1.added_at < player2.added_at
		else
			return player1.added_at > player2.added_at
		end
	end
end

local function columnClick(self)
	local id = self:GetID()
	isSortAscending = not isSortAscending
	table.sort(CustomBlackList, function(player1, player2)
		return CompareByField(player1, player2, id)
	end)
	CustomDataUpdate(SMScrollFrame)
end

local function CreateColumn(text, width, parent)
	columnCount = columnCount + 1

	local Header = CreateFrame("Button", parent:GetName() .. "Header" .. columnCount, parent,
		"WhoFrameColumnHeaderTemplate")
	Header:SetWidth(width - 11)
	_G[parent:GetName() .. "Header" .. columnCount .. "Middle"]:SetWidth(width - 18)
	Header:SetText(text)
	Header:SetNormalFontObject("GameFontHighlight")
	Header:SetID(columnCount)

	if columnCount == 1 then
		Header:SetPoint("TOPLEFT", parent, "TOPLEFT", 1, 22)
	else
		Header:SetPoint("LEFT", parent:GetName() .. "Header" .. columnCount - 1, "RIGHT", 0, 0)
	end

	Header:SetScript("OnClick", columnClick)
end

local function AddToList(name, server)
	local isInList = CheckCustomList(name, server, CustomBlackList)
	if isInList == true then return end

	local playerInfo = {
		name     = name,
		server   = server,
		memo     = '',
		added_at = date("%Y-%m-%d")
	}

	table.insert(CustomBlackList, playerInfo)
	CustomDataUpdate(SMScrollFrame)
end

StaticPopupDialogs["SMAddToList_Black"] = {
	text                   = listColor .. "리스트에 등록합니다 (아이디-서버)",
	maxLetters             = 128,
	hasEditBox             = 1,
	whileDead              = 1,
	button1                = "추가",
	button2                = "취소",

	OnAccept               = function(self)
		local targetName = self.EditBox:GetText()
		local name, server = FetchUserNameWithServer(targetName, CurrentServer)
		AddToList(name, server)
		self:Hide()
	end,
	EditBoxOnEnterPressed  = function(self)
		local targetName = self:GetParent().EditBox:GetText()
		local name, server = FetchUserNameWithServer(targetName, CurrentServer)
		AddToList(name, server)
		self:GetParent():Hide()
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide()
	end
}

StaticPopupDialogs["SMEditMemo_Black"] = {
	text                   = "|cffffff00%s |cffffffff메모 수정",
	maxLetters             = 128,
	hasEditBox             = 1,
	whileDead              = 1,
	button1                = "수정",
	button2                = "취소",

	OnAccept               = function(self)
		CustomBlackList[SelectedRowId + currnetOffset].memo = self.EditBox:GetText()
		CustomDataUpdate(SMScrollFrame)
		self:Hide()
	end,
	EditBoxOnEnterPressed  = function(self)
		CustomBlackList[SelectedRowId + currnetOffset].memo = self:GetParent().EditBox:GetText()
		CustomDataUpdate(SMScrollFrame)
		self:GetParent():Hide()
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide()
	end
}

function CreateTab1Frames()
	Tab1Frame = CreateFrame("Frame", "Tab1Frame", MainFrame, "InsetFrameTemplate")

	Tab1Frame:SetWidth(WINDOW_WIDTH - 17)
	Tab1Frame:SetHeight(WINDOW_HEIGHT - WINDOW_OFFSET)
	Tab1Frame:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 8, -84)

	Tab1Frame:SetScript("OnShow", function(self)
		CustomDataUpdate(SMScrollFrame)
	end)

	CreateColumn("이름", COL_NAME, Tab1Frame)
	CreateColumn("서버", COL_SERVER, Tab1Frame)
	CreateColumn("메모", COL_NOTES, Tab1Frame)
	if OptionVariables.hideAddedAt ~= true then
		CreateColumn("날짜", COL_ADDED_AT, Tab1Frame)
	end

	SMScrollFrame = CreateFrame("ScrollFrame", "SMScrollFrame", Tab1Frame, "FauxScrollFrameTemplate")

	SMScrollFrame:SetWidth(WINDOW_WIDTH - 46)
	SMScrollFrame:SetHeight(BUTTON_TOTAL * BUTTON_HEIGHT)
	SMScrollFrame:SetPoint("TOPLEFT", 0, -4)

	SMScrollFrame:SetScript("OnVerticalScroll", function(self, offset)
		FauxScrollFrame_OnVerticalScroll(self, offset, BUTTON_HEIGHT, CustomDataUpdate)
	end)

	Tab1Frame.infotext = Tab1Frame:CreateFontString("FontString", "OVERLAY", "GameFontHighlight")
	Tab1Frame.infotext:SetWidth(COL_INFOTEXT)
	Tab1Frame.infotext:SetJustifyH("CENTER")
	Tab1Frame.infotext:SetPoint("TOP", 0, 46)

	local button = CreateFrame("Button", nil, Tab1Frame, "UIPanelButtonTemplate")

	CreateRowButtons()

	button:SetSize(110, 22)
	button:SetText(listColor .. "리스트 추가")
	button:SetPoint("BOTTOMRIGHT", -1, -24)
	button:SetScript("OnClick", function(self) StaticPopup_Show("SMAddToList_Black") end)
end
