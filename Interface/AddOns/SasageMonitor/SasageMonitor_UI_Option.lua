OptionVariables = OptionVariables or {}

function CreateTab4Frames()
	Tab4Frame = CreateFrame("Frame", "Tab4Frame", MainFrame, "InsetFrameTemplate")

	Tab4Frame:SetWidth(WINDOW_WIDTH - 17)
	Tab4Frame:SetHeight(WINDOW_HEIGHT - WINDOW_OFFSET + 22)
	Tab4Frame:SetPoint("TOPLEFT", MainFrame, "TOPLEFT", 8, -62)



	local titleText = Tab4Frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
	titleText:SetPoint("TOP", Tab4Frame, "TOP", 0, -15)

	local title = "Sasage Monitor"
	local coloredTitle = ""

	for i = 1, #title do
		local char = title:sub(i, i)
		local charColor

		charColor = { 0.7, 0.6, 0.7 }
		if char == "S" or char == "M" then charColor = { 0.7, 0.2, 0.7 } end

		coloredTitle = coloredTitle ..
			"|cff" .. string.format("%02x%02x%02x", charColor[1] * 255, charColor[2] * 255, charColor[3] * 255) .. char
	end

	titleText:SetText(coloredTitle)
	titleText:SetFont("Fonts\\FRIZQT__.TTF", 20)

	local versionText = Tab4Frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	versionText:SetPoint("TOP", titleText, "BOTTOM", 0, -10)
	versionText:SetText("Version " .. DB.version)


	local yOffset = -70

	local checkButton = CreateFrame("CheckButton", nil, Tab4Frame, "UICheckButtonTemplate")
	checkButton:SetPoint("TOPLEFT", 10, yOffset)
	checkButton:SetSize(35, 35)

	checkButton:SetScript("OnShow", function(self)
		checkButton:SetChecked(OptionVariables.disableSasageData)
	end)

	checkButton:SetScript("OnClick", function(self)
		OptionVariables.disableSasageData = not OptionVariables.disableSasageData
	end)

	local buttonTitle = Tab4Frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	buttonTitle:SetPoint("LEFT", checkButton, "RIGHT", 0, 0)
	buttonTitle:SetText("체크시 사사게 데이터를 이용하지 않습니다.")


	yOffset = yOffset - 35

	local checkButton2 = CreateFrame("CheckButton", nil, Tab4Frame, "UICheckButtonTemplate")
	checkButton2:SetPoint("TOPLEFT", 10, yOffset)
	checkButton2:SetSize(35, 35)

	checkButton2:SetScript("OnShow", function(self)
		checkButton2:SetChecked(OptionVariables.hideAddedAt)
	end)

	checkButton2:SetScript("OnClick", function(self)
		OptionVariables.hideAddedAt = not OptionVariables.hideAddedAt
	end)

	local buttonTitle2 = Tab4Frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	buttonTitle2:SetPoint("LEFT", checkButton2, "RIGHT", 0, 0)
	buttonTitle2:SetText("체크시 리스트에서 날짜를 표시하지 않습니다. (reload 필요)")

	local toggleButton = CreateFrame("Button", nil, Tab4Frame, "UIPanelButtonTemplate")
	toggleButton:SetText("Reload")
	toggleButton:SetPoint("LEFT", buttonTitle2, "RIGHT", 5, 0)
	toggleButton:SetSize(80, 22)
	toggleButton:SetScript("OnClick", function(self)
		ReloadUI()
	end)

	local changeLogText = Tab4Frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	changeLogText:SetPoint("CENTER", Tab4Frame, "CENTER", 0, -60)
	changeLogText:SetText("Change Log:\n\n- 문의/제보는 와우 인벤 사사게로 부탁드립니다.\n\n- 리스트 추가 에러와 URL 미표시 에러가 수정되었습니다.")

	Tab4Frame:Hide()
end
