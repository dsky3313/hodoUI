--------------------------------------------------
-- [ Slash ] --

-- DBM
local function dbm(x)
  ChatFrame1EditBox:SetText("/DBM");
  ChatEdit_SendText(ChatFrame1EditBox);
end

SLASH_DBM1 = "/유ㅡ";
SlashCmdList["DBM"] = function(x)
  dbm(x);
end

-- MDT
local function mdt(x)
  ChatFrame1EditBox:SetText("/MDT");
  ChatEdit_SendText(ChatFrame1EditBox);
end
SLASH_MDT = "/ㅡㅇㅅ";
SlashCmdList["MDT"] = function(x)
  mdt(x);
end

-- plater
local function pp(x)
  ChatFrame1EditBox:SetText("/plater");
  ChatEdit_SendText(ChatFrame1EditBox);
end
SLASH_plater1 = "/pp";
SLASH_plater2 = "/ㅔㅔ";
SlashCmdList["plater"] = function(x)
  pp(x);
end

-- 리로드
SlashCmdList.RELOAD = ReloadUI
SLASH_RELOAD1 = "/re"
SLASH_RELOAD2 = "/ㄱㄷ"

-- 매크로
SlashCmdList.MACRO = function() ShowMacroFrame()	end
SLASH_MACRO1 = "/ㅡ"   

-- 위크오라
local function wa(x)
  ChatFrame1EditBox:SetText("/wa");
  ChatEdit_SendText(ChatFrame1EditBox);
end
SLASH_WEAK_AURA1 = "/ㅈㅁ";
SLASH_WEAK_AURA2 = "/ㅁㅈ";
SLASH_WEAK_AURA3 = "/aw";
SlashCmdList["WEAK_AURA"] = function(x)
  wa(x);
end

-- 전투준비
SlashCmdList.RCSLASH = function() DoReadyCheck() end
SLASH_RCSLASH1 = "/ㅈㅈ"
SLASH_RCSLASH2 = "/ww"

-- 파탈
SLASH_LEAVEPARTY1 = "/ㅍㅌ"
SLASH_LEAVEPARTY2 = "/vx"
SlashCmdList["LEAVEPARTY"] = function() C_PartyInfo.LeaveParty() end

-- 프레임스택
SlashCmdList.FSTACK = function()
	SlashCmdList.FRAMESTACK(0)	end
SLASH_FSTACK1 = "/fs"
SLASH_FSTACK2 = "/ㄹㄴ"