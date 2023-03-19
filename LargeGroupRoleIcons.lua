LargeGroupRoleIcons = LargeGroupRoleIcons or {}
local LGRI = LargeGroupRoleIcons
LGRI.name = "LargeGroupRoleIcons"
LGRI.version = "1"

local EM = GetEventManager()
local LAM2 = LibAddonMenu2

local defaults = {
    visible = true,
}

function LGRI.UpdateMyRace(raceId)
	local my = LGRI.my

	local function ShowTooltip(LGRIRaceIcon)					-- X  Y
		InitializeTooltip(InformationTooltip, LGRIRaceIcon, RIGHT, 0, 0, LEFT)
		SetTooltipText(InformationTooltip, my.race)
	end

	local function HideTooltip(LGRIRaceIcon)
		ClearTooltip(InformationTooltip)
	end

	-- Race
	if raceId == 1 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_bretonicon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Breton"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 2 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_redguardicon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Redguard"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 3 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_orcicon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Orc"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 4 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_dunmericon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Dark elf"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 5 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_nordicon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Nord"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 6 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_argonianicon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Argonian"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 7 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_altmericon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "High elf"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 8 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_bosmericon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Wood elf"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 9 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_khajiiticon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Khajit"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 10 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_imperialicon_down.dds"
		LGRI.UI.MyRaceIcon:SetTexture(my.raceIcon)
		my.race = "Imperial"
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRI.UI.MyRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)
	end
end

function LGRI.UpdateMyClass(classId)
	--local unitTag = self:GetUnitTag()
	local my = LGRI.my

	-- Class
	if classId == 1 then
		my.classIcon = "esoui/art/icons/class/class_dragonknight.dds"
		LGRI.UI.MyClassIcon:SetTexture(my.classIcon)

	elseif classId == 2 then
		my.classIcon = "esoui/art/icons/class/class_sorcerer.dds"
		LGRI.UI.MyClassIcon:SetTexture(my.classIcon)

	elseif classId == 3 then
		my.classIcon = "esoui/art/icons/class/class_nightblade.dds"
		LGRI.UI.MyClassIcon:SetTexture(my.classIcon)

	elseif classId == 6 then
		my.classIcon = "esoui/art/icons/class/class_templar.dds"
		LGRI.UI.MyClassIcon:SetTexture(my.classIcon)

	elseif classId == 4 then
		my.classIcon = "esoui/art/icons/class/class_warden.dds"
		LGRI.UI.MyClassIcon:SetTexture(my.classIcon)

	elseif classId == 5 then
		my.classIcon = "esoui/art/icons/class/class_necromancer.dds"
		LGRI.UI.MyClassIcon:SetTexture(my.classIcon)
	end
end

function LGRI.UpdateMyRole(eventId, unitTag)
	if unitTag ~= nil then
		local index = GetGroupIndexByUnitTag("player")
		local myUnitTag = GetGroupUnitTagByIndex(index)
		if unitTag ~= myUnitTag then return end
	end

	local my = LGRI.my
	local roleId = GetGroupMemberSelectedRole("player")

	-- Role
	if roleId == 1 then
		my.roleIcon = "esoui/art/lfg/lfg_icon_dps.dds"
		LGRI.UI.MyRoleIcon:SetTexture(my.roleIcon)

	elseif roleId == 2 then
		my.roleIcon = "esoui/art/lfg/lfg_icon_tank.dds"
		LGRI.UI.MyRoleIcon:SetTexture(my.roleIcon)
	elseif roleId == 4 then
		my.roleIcon = "esoui/art/lfg/lfg_icon_healer.dds"
		LGRI.UI.MyRoleIcon:SetTexture(my.roleIcon)
	else
		my.roleIcon = "esoui/art/armory/builditem_icon.dds"
		LGRI.UI.MyRoleIcon:SetTexture(my.roleIcon)
	end
end

function LGRI.CreateMy()
	LGRI.my = {
		raceId = nil,
		race = "",
		raceIcon = "",
		classId = nil,
		classIcon = "",
		roleId = LFG_ROLE_INVALID,
		roleIcon = "",
	}
	LGRI.my.raceId = GetUnitRaceId("player")
	LGRI.my.classId = GetUnitClassId("player")

	LGRI.UpdateMyRace(LGRI.my.raceId)
	LGRI.UpdateMyClass(LGRI.my.classId)
	LGRI.UpdateMyRole()

end

function LGRI.HudToggle(value)
	if value == true then
		HUD_SCENE:AddFragment(LGRI.UI.MyFrag)
		HUD_UI_SCENE:AddFragment(LGRI.UI.MyFrag)
		SCENE_MANAGER:GetScene("groupMenuKeyboard"):AddFragment(LGRI.UI.MyFrag)
	else
		HUD_SCENE:RemoveFragment(LGRI.UI.MyFrag)
		HUD_UI_SCENE:RemoveFragment(LGRI.UI.MyFrag)
		SCENE_MANAGER:GetScene("groupMenuKeyboard"):RemoveFragment(LGRI.UI.MyFrag)
	end
end

function LGRI.CreateSettingsWindow()

	local panelName = "LGRISettings"
    local panelData = {
        type = "panel",
        name = LGRI.name,
        author = "@SlLva",
		version = LGRI.version
    }

	local optionsData = {
		[1] = {
			type = "checkbox",
			name = "Show",
			tooltip = "Show or Hide the LGRI icons.",
			getFunc = function () return LGRI.savedVars.visible end,
			setFunc = function (value)
				LGRI.savedVars.visible = value
				if value == false then
					LGRI.UI.MyFrame:SetHidden(true)
					LGRI.HudToggle(false)
				else
					LGRI.UI.MyFrame:SetHidden(false)
					LGRI.HudToggle(true)
				end
		    end
		}
	}
    local panel = LAM2:RegisterAddonPanel(panelName, panelData)
    LAM2:RegisterOptionControls(panelName, optionsData)
end

function LGRI.HideAndShowIcons()
	if LGRI.savedVars.visible == true then
		LGRI.UI.MyFrame:SetHidden(true)
		d("LGRI: Hiding icons.")
		LGRI.savedVars.visible = false
	else
		LGRI.UI.MyFrame:SetHidden(false)
		d("LGRI: Showing icons.")
		LGRI.savedVars.visible = true
	end
end

function LargeGroupRoleIcons.Initialize()
	LGRI.savedVars = ZO_SavedVars:NewAccountWide("LargeGroupRoleIconsVars", 1, nil, defaults)

	LGRI.UI.BuildUI()
    LGRI.CreateSettingsWindow()
	LGRI.CreateMy()
	LGRI.HudToggle(LGRI.savedVars.visible)
end

function LGRI.OnAddOnLoaded(event, addonName)
    if addonName ~= LGRI.name then return end
	EM:UnregisterForEvent(LGRI.name, EVENT_ADD_ON_LOADED)

    LargeGroupRoleIcons.Initialize()

	--[[
	EM:RegisterForEvent(LGRI.name .. "IJoinedGroup", EVENT_GROUP_MEMBER_JOINED,
	function(eventId, memberCharacterName, isLocalPlayer, memberDisplayName)
   		if not isLocalPlayer then return end
   		LGRI.UpdateMyRole()
	end)]]
	EM:RegisterForEvent(LGRI.name .. "MyRoleChanged", EVENT_GROUP_MEMBER_ROLE_CHANGED, LGRI.UpdateMyRole)
    EM:RegisterForEvent(LGRI.name .. "ILeftGroup", EVENT_GROUP_MEMBER_LEFT,
	function(eventId, memberCharacterName, groupLeaveReason , isLocalPlayer, isLeader, memberDisplayName, actionRequiredVote)
   		if not isLocalPlayer then return end
   		LGRI.UpdateMyRole()
	end)

end

SLASH_COMMANDS["/lgri"] = LGRI.HideAndShowIcons

EM:RegisterForEvent(LGRI.name, EVENT_ADD_ON_LOADED, LGRI.OnAddOnLoaded)