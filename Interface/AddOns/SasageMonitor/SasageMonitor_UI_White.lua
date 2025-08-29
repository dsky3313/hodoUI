CustomWhiteList       = CustomWhiteList or {}
local listColor       = "화이트"
local infotext        = "아래 등록된 유저는 더 이상 사사게 전적이 표시되지 않습니다. (%d명 등록됨)"
local SMScrollButtons = {}
local SMScrollFrame   = nil
local SelectedRowId   = 0
local currnetOffset   = 0
local columnCount     = 0
local isSortAscending = true

local function GetButtonID(scrollFrame, index)
	return FauxScrollFrame_GetOffset(scrollFrame) + index
end

local function CustomDataUpdate(self)
	FauxScrollFrame_Update(self, #CustomWhiteList, BUTTON_TOTAL, BUTTON_HEIGHT)

	Tab2Frame.infotext:SetText(format(infotext, #CustomWhiteList))

	if SelectedRowId > #CustomWhiteList then
		SelectedRowId = #CustomWhiteList
	end

	currnetOffset  = FauxScrollFrame_GetOffset(self)
	local name     = ""
	local server   = ""
	local memo     = ""
	local added_at = ""
	local index    = 0

	for count = 1, BUTTON_TOTAL do
		index = count + currnetOffset

		if index <= #CustomWhiteList then
			name = CustomWhiteList[index].name
			server = CustomWhiteList[index].server
			memo = CustomWhiteList[index].memo or ""
			added_at = CustomWhiteList[index].added_at

			if name == nil or server == nil or name:match("^%s*$") then
				table.remove(CustomWhiteList, count)
			end
			if added_at == nil then
				CustomWhiteList[index].added_at = date("%Y-%m-%d")
			end

			SMScrollButtons[count].name:SetText(name)
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
	for i, playerInfo in ipairs(CustomWhiteList) do
		if playerInfo.name == name and playerInfo.server == server then
			table.remove(CustomWhiteList, i)
			break
		end
	end

	SelectedRowId = 0
	CustomDataUpdate(SMScrollFrame)
end

local function SMScrollButtonClick(self, button, down)
	if down == true then return end
	local index = GetButtonID(SMScrollFrame, self:GetID())

	if SelectedRowId ~= self:GetID() then
		SelectedRowId = self:GetID()
		CustomDataUpdate(SMScrollFrame)
	end

	if button == "RightButton" then
		local name = CustomWhiteList[index].name
		local server = CustomWhiteList[index].server

		MenuUtil.CreateContextMenu(UIParent, function(ownerRegion, root)
			nameUI = name .. "-" .. server
			root:CreateTitle(nameUI)
			root:CreateDivider()
			root:CreateButton("메모 수정",
				function()
					StaticPopup_Show("SMEditMemo_White", name .. "-" .. server)
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
	table.sort(CustomWhiteList, function(player1, player2)
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
	local isInList = CheckCustomList(name, server, CustomWhiteList)
	if isInList == true then return end

	local playerInfo = {
		name     = name,
		server   = server,
		memo     = '',
		added_at = date("%Y-%m-%d")
	}

	table.insert(CustomWhiteList, playerInfo)
	CustomDataUpdate(SMScrollFrame)
end

StaticPopupDialogs["SMAddToList_White"] = {
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

StaticPopupDialogs["SMEditMemo_White"] = {
	text                   = "|cffffff00%s |cffffffff메모 수정",
	maxLetters             = 128,
	hasEditBox             = 1,
	whileDead              = 1,
	button1                = "수정",
	button2                = "취소",

	OnAccept               = function(self)
		CustomWhiteList[SelectedRowId + currnetOffset].memo = self.EditBox:GetText()
		CustomDataUpdate(SMScrollFrame)
		self:Hide()
	end,
	EditBoxOnEnterPressed  = function(self)
		CustomWhiteList[SelectedRowId + currnetOffset].memo = self:GetParent().EditBox:GetText()
		CustomDataUpdate(SMScrollFrame)
		self:GetParent():Hide()
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide()
	end
}

function CreateTab2Frames()
	Tab2Frame = CreateFrame("Frame", "Tab2Frame", MainFrame, "InsetFrameTemplate")

	Tab2Frame:SetWidth(WINDOW_WIDTH - 17)
	Tab2Frame:SetHeight(WINDOW_HEIGHT - WINDOW_OFFSET)
	Tab2Frame:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 8, -84)

	Tab2Frame:SetScript("OnShow", function(self)
		CustomDataUpdate(SMScrollFrame)
	end)

	CreateColumn("이름", COL_NAME, Tab2Frame)
	CreateColumn("서버", COL_SERVER, Tab2Frame)
	CreateColumn("메모", COL_NOTES, Tab2Frame)
	if OptionVariables.hideAddedAt ~= true then
		CreateColumn("날짜", COL_ADDED_AT, Tab2Frame)
	end

	SMScrollFrame = CreateFrame("ScrollFrame", "SMScrollFrame", Tab2Frame, "FauxScrollFrameTemplate")

	SMScrollFrame:SetWidth(WINDOW_WIDTH - 46)
	SMScrollFrame:SetHeight(BUTTON_TOTAL * BUTTON_HEIGHT)
	SMScrollFrame:SetPoint("TOPLEFT", 0, -4)

	SMScrollFrame:SetScript("OnVerticalScroll", function(self, offset)
		FauxScrollFrame_OnVerticalScroll(self, offset, BUTTON_HEIGHT, CustomDataUpdate)
	end)

	Tab2Frame.infotext = Tab2Frame:CreateFontString("FontString", "OVERLAY", "GameFontHighlight")
	Tab2Frame.infotext:SetWidth(COL_INFOTEXT)
	Tab2Frame.infotext:SetJustifyH("CENTER")
	Tab2Frame.infotext:SetPoint("TOP", 0, 46)

	local button = CreateFrame("Button", nil, Tab2Frame, "UIPanelButtonTemplate")

	CreateRowButtons()

	button:SetSize(110, 22)
	button:SetText(listColor .. "리스트 추가")
	button:SetPoint("BOTTOMRIGHT", -1, -24)
	button:SetScript("OnClick", function(self) StaticPopup_Show("SMAddToList_White") end)

	Tab2Frame:Hide()
end
