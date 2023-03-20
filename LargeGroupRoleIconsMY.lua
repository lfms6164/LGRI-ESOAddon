LargeGroupRoleIcons = LargeGroupRoleIcons or {}
local LGRI = LargeGroupRoleIcons

LGRI.MY = {}

function LGRI.MY.UpdateMyRace(raceId)
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

function LGRI.MY.UpdateMyClass(classId)
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

function LGRI.MY.UpdateMyRole(eventId, unitTag)
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

function LGRI.MY.CreateMy()
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

    LGRI.MY.UpdateMyRace(LGRI.my.raceId)
    LGRI.MY.UpdateMyClass(LGRI.my.classId)
    LGRI.MY.UpdateMyRole()
end

function LGRI.MY.HudToggle(value)
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

function LGRI.MY.HideAndShowIcons()
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

SLASH_COMMANDS["/lgri"] = LGRI.MY.HideAndShowIcons