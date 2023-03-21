LargeGroupRoleIcons = LargeGroupRoleIcons or {}
local LGRI = LargeGroupRoleIcons
LGRI.name = "LargeGroupRoleIcons"
LGRI.version = "1"

local EM = GetEventManager()
local LAM2 = LibAddonMenu2

local defaults = {
    visible = true,
}

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
			name = "My Icons",
			tooltip = "Show or Hide my icons.",
			getFunc = function () return LGRI.savedVars.visible end,
			setFunc = function (value)
				LGRI.savedVars.visible = value
				if value == false then
					LGRI.UI.MyFrame:SetHidden(true)
					LGRI.MY.HudToggle(false)
				else
					LGRI.UI.MyFrame:SetHidden(false)
					LGRI.MY.HudToggle(true)
				end
		    end
		}
	}
    local panel = LAM2:RegisterAddonPanel(panelName, panelData)
    LAM2:RegisterOptionControls(panelName, optionsData)
end

function LargeGroupRoleIcons.Initialize()
	LGRI.savedVars = ZO_SavedVars:NewAccountWide("LargeGroupRoleIconsVars", 1, nil, defaults)

	LGRI.CreateSettingsWindow()
	LGRI.UI.BuildUI()
	LGRI.MY.CreateMy()
	LGRI.MY.HudToggle(LGRI.savedVars.visible)
end

function LGRI.OnAddOnLoaded(event, addonName)
    if addonName ~= LGRI.name then return end
	EM:UnregisterForEvent(LGRI.name, EVENT_ADD_ON_LOADED)

    LargeGroupRoleIcons.Initialize()

	EM:RegisterForEvent(LGRI.name .. "IJoinedGroup", EVENT_GROUP_MEMBER_JOINED,
	function(eventId, memberCharacterName, isLocalPlayer, memberDisplayName)
   		if not isLocalPlayer then return end
   		LGRI.MY.UpdateMyRole()
	end)
	EM:RegisterForEvent(LGRI.name .. "MyRoleChanged", EVENT_GROUP_MEMBER_ROLE_CHANGED, LGRI.MY.UpdateMyRole)
    EM:RegisterForEvent(LGRI.name .. "ILeftGroup", EVENT_GROUP_MEMBER_LEFT,
	function(eventId, memberCharacterName, groupLeaveReason , isLocalPlayer, isLeader, memberDisplayName, actionRequiredVote)
   		if not isLocalPlayer then return end
   		LGRI.MY.UpdateMyRole()
	end)

end

EM:RegisterForEvent(LGRI.name, EVENT_ADD_ON_LOADED, LGRI.OnAddOnLoaded)