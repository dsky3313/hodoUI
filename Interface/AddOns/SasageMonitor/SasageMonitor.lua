-- SasageMonitor, Copyright 2023, Max

CurrentServer = GetRealmName()

function CheckCustomList(name, server, customList)
    for _, playerInfo in ipairs(customList) do
        if playerInfo.name == name and playerInfo.server == server then
            return true
        end
    end
    return false
end

local function HandleTooltip(playerInGreenList, playerInBlackList, playerInWhiteList, url)
    if playerInGreenList then
        GameTooltip:AddLine(' ')
        GameTooltip:AddDoubleLine('사사게 모니터', '그린리스트', 0.7, 0.2, 0.7, 0, 1, 0)
    elseif playerInBlackList then
        GameTooltip:AddLine(' ')
        GameTooltip:AddDoubleLine('사사게 모니터', '블랙리스트', 0.7, 0.2, 0.7, 1, 0, 0)
    elseif not playerInWhiteList and url and not OptionVariables.disableSasageData then
        GameTooltip:AddLine(' ')
        GameTooltip:AddDoubleLine('사사게 모니터', '사사게 확인', 0.7, 0.2, 0.7, 1, 0, 0)
    end
end

local function OnTooltipHook(name, server)
    local playerInWhiteList = CheckCustomList(name, server, CustomWhiteList)
    local playerInBlackList = CheckCustomList(name, server, CustomBlackList)
    local playerInGreenList = CheckCustomList(name, server, CustomGreenList)
    local url = SearchUser(name, server)

    HandleTooltip(playerInGreenList, playerInBlackList, playerInWhiteList, url)
end

local function OnUserModelHook()
    if UnitIsPlayer('mouseover') then
        local name, server = UnitName('mouseover')
        if server == nil then server = CurrentServer end
        OnTooltipHook(name, server)
    end
end

local function OnLFGSearchEntryHook(tooltip, resultID)
    local searchResultInfo = C_LFGList.GetSearchResultInfo(resultID)
    local targetName = tostring(searchResultInfo.leaderName)
    local name, server = FetchUserNameWithServer(targetName, CurrentServer)
    OnTooltipHook(name, server)
end

local function OnLFGApplicantViewerHook(self)
    local applicantID = self:GetParent().applicantID;
    local memberIdx = self.memberIdx;
    local targetName = C_LFGList.GetApplicantMemberInfo(applicantID, memberIdx);
    local name, server = FetchUserNameWithServer(targetName, CurrentServer)
    OnTooltipHook(name, server)
end

function SSG_LFG_LeaderMenu(owner, root, contextData)
	if not owner or not owner.resultID then return end
	local searchResultInfo = C_LFGList.GetSearchResultInfo(owner.resultID)
	local targetName = tostring(searchResultInfo.leaderName)
	local name, server = FetchUserNameWithServer(targetName, CurrentServer)
    if server == nil then
        server = CurrentServer
    end
	local url = SearchUser(name, server)

    if url ~= nil then
        root:CreateDivider()
        root:CreateTitle('SasageMonitor')
        root:CreateButton('사사게 URL 복사',
        function()
            ShowUrlPopup('ssg', name, server, url)
        end)
    end
end

function SSG_LFG_ApplicantMenu(owner, root, contextData)
    local memberIdx = owner.memberIdx
    local parent = owner:GetParent()
    local applicantID = parent.applicantID
    local name = C_LFGList.GetApplicantMemberInfo(applicantID, memberIdx)
	local name, server = FetchUserNameWithServer(name, CurrentServer)
    if server == nil then
        server = CurrentServer
    end
	local url = SearchUser(name, server)

    if url ~= nil then
        root:CreateDivider()
        root:CreateTitle('SasageMonitor')
        root:CreateButton('사사게 URL 복사',
        function()
            ShowUrlPopup('ssg', name, server, url)
        end)
    end
end

function SSG_UnitMenuPlayer (owner, root, contextData)
	local playerName, server = UnitName(contextData.unit)

    if server == nil then
        server = CurrentServer
    end
    local name, server = FetchUserNameWithServer(playerName, server)
	local url = SearchUser(name, server)

	local text = '사사게 URL 복사'
    if url ~= nil then
        root:CreateDivider()
        root:CreateTitle('SasageMonitor')
        root:CreateButton(text,
        function()
            ShowUrlPopup('ssg', name, server, url)
        end)
    end
end

function SSG_HookFunctions()
    TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Unit, OnUserModelHook)
    hooksecurefunc('LFGListUtil_SetSearchEntryTooltip', OnLFGSearchEntryHook)
    hooksecurefunc('LFGListApplicantMember_OnEnter', OnLFGApplicantViewerHook);
    Menu.ModifyMenu("MENU_LFG_FRAME_SEARCH_ENTRY", SSG_LFG_LeaderMenu)
    Menu.ModifyMenu("MENU_LFG_FRAME_MEMBER_APPLY", SSG_LFG_ApplicantMenu)

    Menu.ModifyMenu("MENU_UNIT_ENEMY_PLAYER", SSG_UnitMenuPlayer)
    Menu.ModifyMenu("MENU_UNIT_PLAYER", SSG_UnitMenuPlayer)
    Menu.ModifyMenu("MENU_UNIT_PARTY", SSG_UnitMenuPlayer)
    Menu.ModifyMenu("MENU_UNIT_RAID_PLAYER", SSG_UnitMenuPlayer)
end

SSG_HookFunctions()

------------------------------------------------------------------------

local LibStub = LibStub
local LibDBIcon = LibStub("LibDBIcon-1.0")
local addonName = "SasageMonitor"
local addonIcon = "Interface\\AddOns\\SasageMonitor\\logo.tga"

SasageMonitorLDB = LibStub("LibDataBroker-1.1"):NewDataObject("SasageMonitor", {
    text = addonName,
    label = addonName,
    icon = addonIcon,
    OnClick = function()
		if not MainFrame then
			CreateUIFrames()
		elseif MainFrame:IsShown() then
			MainFrame:Hide()
		else
			MainFrame:Show()
		end
    end,
    OnTooltipShow = function(tooltip)
        tooltip:AddDoubleLine('SasageMonitor', DB.version, 0.7, 0.2, 0.7, 1, 1, 1)
        tooltip:AddLine('/ssg 또는 /ㅅㅅㄱ 명령어를 사용할 수 있습니다.')
        tooltip:AddLine("/sm minimap 명령어로 미니맵 아이콘을 끄고 켤 수 있습니다.")
    end
})

local _, SasageMonitor = ...
SasageMonitor = LibStub("AceAddon-3.0"):NewAddon(SasageMonitor, addonName, "AceConsole-3.0", "AceEvent-3.0")

function SasageMonitor:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New("SasageMonitorDB", {
        profile = {
            minimap = { hide = false },
        },
    })
    LibDBIcon:Register(addonName, SasageMonitorLDB, self.db.profile.minimap)
    SasageMonitor:UpdateMinimapButton()
    SasageMonitor:RegisterChatCommand('sm', 'HandleChatCommand')
end

function SasageMonitor:UpdateMinimapButton()
    LibDBIcon[self.db.profile.minimap.hide and "Hide" or "Show"](LibDBIcon, addonName)
end

function SasageMonitor:HandleChatCommand(input)
    if strfind(input, 'minimap') then
        self.db.profile.minimap.hide = not self.db.profile.minimap.hide
        self:UpdateMinimapButton()
    end
end

------------------------------------------------------------------------

SLASH_SASAGEMONITOR1 = "/ssg"
SLASH_SASAGEMONITOR2 = "/ㄴㄶ"
SLASH_SASAGEMONITOR3 = "/ttr"
SLASH_SASAGEMONITOR4 = "/ㅅㅅㄱ"

SlashCmdList["SASAGEMONITOR"] = function(msg)
    CreateUIFrames()
end
