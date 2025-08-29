-- inspired by https://wago.io/Cx_wsXks4/6


local GuildButton
local GuildButtonTexture
local GuildButtonText
local GuildMembers = {}
local PlayerName = UnitName("player") ..  "-" .. GetRealmName()

local function SetGuildMembers() 
    wipe(GuildMembers)
    for i = 1, GetNumGuildMembers() do
        local memberName, _, _, memberLevel, _, memberZone, memberNote, _, isMemberConnected, _, memberClass, _, _, _, _, _, memberGuid = GetGuildRosterInfo(i)
        if not memberName then return end
        if isMemberConnected then
			table.insert(GuildMembers, { name = memberName, level = memberLevel, zone = memberZone, note = memberNote, class = memberClass, guid = memberGuid })
        end
    end
end

local function EscapeMemberNote(note) 
	return note == nil and "" or "(" .. note .. ")"
end

local function SetGuildButtonText() 
	local numTotalMembers, numOnlineMembers = GetNumGuildMembers();
	if GuildButtonText == nil then
		GuildButtonText = GuildButton:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		GuildButtonText:SetPoint("BOTTOM", 0, 0)
	end
	GuildButtonText:SetText(numOnlineMembers)
	GuildButtonText:SetHeight(9)
	
end

local function Invite(guid, name) 
    local invite = GetDisplayedInviteType(guid)
    if invite == 'INVITE' or invite == 'SUGGEST_INVITE' then         
        C_PartyInfo.InviteUnit(name)
    elseif invite == 'REQUEST_INVITE' then 
        C_PartyInfo.RequestInviteFromUnit(name)
    end
end

local function WhisperTo(guid, name) 
    SetItemRef( 'player:'..name, format('|Hplayer:%1$s|h[%1$s]|h',name), 'LeftButton' )
end

local function SpawnContextMenu() 
	MenuUtil.CreateContextMenu(UIParent, function(owner, menu)
		local inviteMenu = menu:CreateButton(CHAT_INVITE_SEND, nil)
        local whisperMenu = menu:CreateButton(CHAT_MSG_WHISPER_INFORM, nil)
		for _, member in ipairs(GuildMembers) do
			if not (member.name == PlayerName) then
				--local _,_,_,memberClassColorHex = GetClassColor(Member.class)
				if not UnitInParty(member.name) and not UnitInRaid(member.name) then
					inviteMenu:CreateButton(member.name .. " " .. EscapeMemberNote(member.note), function() Invite(member.guid, member.name) end)
				end
				whisperMenu:CreateButton(member.name .. " " .. EscapeMemberNote(member.note), function() WhisperTo(member.guid, member.name) end)
			end
		end
	end)
end

local function HideTooltip() 
	GameTooltip:Hide()
	
end

local function ShowTooltip()
	local guildName, _ = GetGuildInfo('player')
	local total, online = GetNumGuildMembers()
	local textColorR, textColorG, textColorB, textColorA = 1, 1, 1, 1
	GameTooltip:SetOwner(GuildButton, "ANCHOR_RIGHT")
        
    -- Title
    GameTooltip:AddDoubleLine(guildName, online..'/'..total, textColorR, textColorG, textColorB, textColorR, textColorG, textColorB)
	GameTooltip:AddLine(' ')
        
	-- Guild Message of the Day
	local guildMessage = GetGuildRosterMOTD()
	if guildMessage ~= '' then
		GameTooltip:AddLine(guildMessage, textColorR, textColorG, textColorB, textColorA)
		GameTooltip:AddLine(' ')
    end
        
	--  Member List
	for i, member in ipairs(GuildMembers) do
		if i > 50 then -- More then displayed online message                
			GameTooltip:AddLine('...', #GuildMembers - 50, textColorR, textColorG, textColorB, textColorA)
			break
		end
		
		-- class rgb
		local cr,cg,cb,_ = GetClassColor(member.class)	
		GameTooltip:AddDoubleLine(member.name .. " " .. EscapeMemberNote(member.note), member.zone,  cr,cg,cb,  textColorR, textColorG, textColorB)
	end
	
	GameTooltip:Show()
end


local function OnGuildButtonClick(self, button)
	if button == 'RightButton' then
		SpawnContextMenu()
	else
		ToggleGuildFrame() 
	end
end

local function OnGuildRosterUpdate() 	
	SetGuildMembers()
	SetGuildButtonText()
end

GuildButton = CreateFrame("Button", "SmartMicroMenuGuildButton", UIParent)
GuildButton:SetPoint("TOP", "QuickJoinToastButton", "BOTTOM", 0, 0)

GuildButton:SetWidth(32)
GuildButton:SetHeight(32)

GuildButtonTexture = GuildButton:CreateTexture(nil, "BACKGROUND")
GuildButtonTexture:SetAtlas("quickjoin-button-friendslist-up")
GuildButtonTexture:SetAllPoints(GuildButton)
GuildButtonTexture:SetVertexColor(0,1,0)
GuildButton.texture = GuildButtonTexture

GuildButton:RegisterEvent("GUILD_ROSTER_UPDATE");
GuildButton:SetScript("OnEvent", OnGuildRosterUpdate)
GuildButton:SetScript("OnEnter",  ShowTooltip)
GuildButton:SetScript("OnLeave",  HideTooltip)
GuildButton:SetScript("OnMouseUp", OnGuildButtonClick) 

SetGuildMembers()
SetGuildButtonText()

GuildButton:Show()
