LargeGroupRoleIcons = LargeGroupRoleIcons or {}
local LGRI = LargeGroupRoleIcons
LGRI.name = "LargeGroupRoleIcons"
LGRI.version = "1"

local evm = GetEventManager()
local wim = GetWindowManager()
local LAM2 = LibAddonMenu2

local defaults = {
    visible = true,
}

function LGRI.UpdateMyRace(raceId)
	local my = LGRI.my

	local function ShowTooltip(LGRIRaceIcon)					--  X  Y
		InitializeTooltip(InformationTooltip, LGRIRaceIcon, RIGHT, 0, 0, LEFT)
		SetTooltipText(InformationTooltip, my.race)
	end

	local function HideTooltip(LGRIRaceIcon)
		ClearTooltip(InformationTooltip)
	end

	-- Race
	if raceId == 1 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_bretonicon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Breton"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 2 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_redguardicon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Redguard"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 3 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_orcicon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Orc"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 4 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_dunmericon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Dark elf"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 5 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_nordicon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Nord"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 6 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_argonianicon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Argonian"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 7 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_altmericon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "High elf"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 8 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_bosmericon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Wood elf"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 9 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_khajiiticon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Khajit"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)

	elseif raceId == 10 then
		my.raceIcon = "esoui/art/charactercreate/charactercreate_imperialicon_down.dds"
		LGRIRaceIcon:SetTexture(my.raceIcon)
		my.race = "Imperial"
		LGRIRaceIcon:SetHandler("OnMouseEnter", function (LGRIRaceIcon) ShowTooltip(LGRIRaceIcon) end)
		LGRIRaceIcon:SetHandler("OnMouseExit", function (LGRIRaceIcon) HideTooltip(LGRIRaceIcon) end)
	end
end

function LGRI.UpdateMyClass(classId)
	--local unitTag = self:GetUnitTag()
	local my = LGRI.my

	-- Class
	if classId == 1 then
		my.classIcon = "esoui/art/icons/class/class_dragonknight.dds"
		LGRIClassIcon:SetTexture(my.classIcon)

	elseif classId == 2 then
		my.classIcon = "esoui/art/icons/class/class_sorcerer.dds"
		LGRIClassIcon:SetTexture(my.classIcon)

	elseif classId == 3 then
		my.classIcon = "esoui/art/icons/class/class_nightblade.dds"
		LGRIClassIcon:SetTexture(my.classIcon)

	elseif classId == 6 then
		my.classIcon = "esoui/art/icons/class/class_templar.dds"
		LGRIClassIcon:SetTexture(my.classIcon)

	elseif classId == 4 then
		my.classIcon = "esoui/art/icons/class/class_warden.dds"
		LGRIClassIcon:SetTexture(my.classIcon)

	elseif classId == 5 then
		my.classIcon = "esoui/art/icons/class/class_necromancer.dds"
		LGRIClassIcon:SetTexture(my.classIcon)
	end
end

function LGRI.UpdateMyRole(roleId)
	local my = LGRI.my

	-- Role
	if roleId == 1 then
		my.roleIcon = "esoui/art/lfg/lfg_icon_dps.dds"
		LGRIRoleIcon:SetTexture(my.roleIcon)

	elseif roleId == 2 then
		my.roleIcon = "esoui/art/lfg/lfg_icon_tank.dds"
		LGRIRoleIcon:SetTexture(my.roleIcon)
	elseif roleId == 4 then
		my.roleIcon = "esoui/art/lfg/lfg_icon_healer.dds"
		LGRIRoleIcon:SetTexture(my.roleIcon)
	else
		my.roleIcon = "esoui/art/armory/builditem_icon.dds"
		LGRIRoleIcon:SetTexture(my.roleIcon)
	end

	local myNewRole = GetGroupMemberSelectedRole("player")
	LGRI.my.roleId = myNewRole;

	--zo_callLater(function() LGRI.callbackForRoleChange(myNewRole) end, 100)
	evm:UnregisterForEvent(LGRI.name, EVENT_GROUP_MEMBER_ROLES_CHANGED)
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
	LGRI.my.roleId = GetGroupMemberSelectedRole("player")

	LGRI.UpdateMyRace(LGRI.my.raceId)
	LGRI.UpdateMyClass(LGRI.my.classId)
	LGRI.UpdateMyRole(LGRI.my.roleId)
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
					LGRITLW:SetHidden(true)
				else
					LGRITLW:SetHidden(false)
				end
		    end
		}
	}
    local panel = LAM2:RegisterAddonPanel(panelName, panelData)
    LAM2:RegisterOptionControls(panelName, optionsData)
end

function LGRI.HideANDShowIcons()
	if LGRI.savedVars.visible == true then
		LGRITLW:SetHidden(true)
		d("LGRI: Hiding icons.")
		LGRI.savedVars.visible = false
	else
		LGRITLW:SetHidden(false)
		d("LGRI: Showing icons.")
		LGRI.savedVars.visible = true
	end
end

function LargeGroupRoleIcons.Initialize()
	LGRI.savedVars = ZO_SavedVars:NewAccountWide("LargeGroupRoleIconsVars", 1, nil, defaults)

	LGRI.UI.BuildUI()
    LGRI.CreateSettingsWindow()
	LGRI.CreateMy()

end

function LGRI.OnAddOnLoaded(event, addonName)
    if addonName ~= LGRI.name then return end

    LargeGroupRoleIcons.Initialize()

	evm:RegisterForEvent(LGRI.name, EVENT_GROUP_MEMBER_ROLES_CHANGED, LGRI.UpdateMyRole(newRole))
	evm:UnregisterForEvent(LGRI.name, EVENT_ADD_ON_LOADED)
end

SLASH_COMMANDS["/lgri"] = LGRI.HideANDShowIcons

evm:RegisterForEvent(LGRI.name, EVENT_ADD_ON_LOADED, LGRI.OnAddOnLoaded)

function LGRI.callbackForRoleChange(newRole)
	evm:RegisterForEvent(LGRI.name, EVENT_GROUP_MEMBER_ROLES_CHANGED, LGRI.UpdateMyRole(newRole))
	evm:AddFilterForEvent(EVENT_GROUP_MEMBER_ROLES_CHANGED, REGISTER_FILTER_UNIT_TAG_PREFIX, "player")
end