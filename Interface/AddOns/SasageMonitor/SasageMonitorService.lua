local validServerNames = {
    '아즈샤라',
    '하이잘',
    '헬스크림',
    '데스윙',
    '윈드러너',
    '세나리우스',
    '줄진',
    '노르간논',
    '불타는군단',
    '듀로탄',
    '가로나',
    '굴단',
    '스톰레이지',
    '달라란',
    '말퓨리온',
    '렉사르',
    '와일드해머',
    '알렉스트라자',
}

function IsServerNameValid(name)
    for _, validName in ipairs(validServerNames) do
        if validName == name then
            return true
        end
    end
    return false
end

function FetchUserNameWithServer(targetName, currentServer)
    local name = ''
    local server = currentServer

    if string.find(targetName, '-') then
        local temp = {}
        for str in string.gmatch(targetName, '[^-]+') do
            table.insert(temp, str)
        end
        name = temp[1]
        server = temp[2] ~= "" and temp[2] or currentServer
    else
        name = targetName
    end

    if server == nil then return end
    if not IsServerNameValid(server) then
        UIErrorsFrame:AddMessage("서버 이름을 확인해주세요", 1.0, 0.1, 0.1, 1.0, 5)
        return
    end

    return name, server
end

function ShowUrlPopup(category, name, server, url)
    local urlencoding = function(str)
        return str:gsub('([^%w ])', function(c) return string.format('%%%02X', string.byte(c)); end):gsub(' ', '+')
    end

    if category == 'raider' then
        url = format('https://raider.io/characters/kr/%s/%s', urlencoding(server), urlencoding(name))
    elseif category == 'wcl' then
        url = format('https://ko.warcraftlogs.com/character/kr/%s/%s', urlencoding(server), urlencoding(name))
    elseif category == 'ssg' then
        url = url
    end

    StaticPopupDialogs['SasageLinkURL'] = {
        text = name .. '-' .. server,
        button1 = '닫기 (ESC)',
        --        button2 = 'Ok',
        OnShow = function(self, data)
            self.EditBox:SetScript('OnEscapePressed', function(self)
                self:GetParent():Hide()
            end)
            self.EditBox:SetMaxLetters(0)
            self.EditBox:SetText(url)
            self.EditBox:HighlightText(0, self.EditBox:GetNumLetters())
        end,
        OnAccept = function()
            --            local text = self.EditBox:GetText()
        end,
        hasEditBox = true,
        editBoxWidth = 400,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,
    }

    StaticPopup_Show('SasageLinkURL')
end
