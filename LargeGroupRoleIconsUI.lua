LargeGroupRoleIcons = LargeGroupRoleIcons or {}
local LGRI = LargeGroupRoleIcons

LGRI.UI = {}

local WM = GetWindowManager()

function LGRI.UI.setPos()
    LGRI.UI.MyFrame:ClearAnchors()
    LGRI.UI.MyFrame:SetAnchor(TOPLEFT, GuiRoot, TOPLEFT, LGRI.savedVars.MyFrameX, LGRI.savedVars.MyFrameY)
end

function LGRI.UI.getPos()
    LGRI.savedVars.MyFrameX = LGRI.UI.MyFrame:GetLeft()
    LGRI.savedVars.MyFrameY = LGRI.UI.MyFrame:GetTop()
    LGRI.savedVars.defaultPos = false
end

function LGRI.UI.HudToggle(value)
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

function LGRI.UI.BuildUI()
    local MyFrame = WM:CreateTopLevelWindow("MyFrame")
    MyFrame:SetDimensions(60, 30)
    MyFrame:ClearAnchors()
    MyFrame:SetMouseEnabled(true)
    MyFrame:SetMovable(false)
    MyFrame:SetHidden(not LGRI.savedVars.visible)
	MyFrame:SetClampedToScreen(true)
    MyFrame:SetHandler("OnMoveStop", function () LGRI.UI.getPos() end)

    local MyRaceIcon = WM:CreateControl("MyRaceIcon", MyFrame, CT_TEXTURE)
    MyRaceIcon:SetDimensions(30, 30)
    MyRaceIcon:SetAnchor(CENTER, MyFrame, LEFT, 0, 0)
    MyRaceIcon:SetTexture("")
    MyRaceIcon:SetMouseEnabled(true)

    local MyClassIcon = WM:CreateControl("MyClassIcon", MyFrame, CT_TEXTURE)
    MyClassIcon:SetDimensions(30, 30)
    MyClassIcon:SetAnchor(CENTER, MyFrame, CENTER, 0, 0)
    MyClassIcon:SetTexture("")

    local MyRoleIcon = WM:CreateControl("MyRoleIcon", MyFrame, CT_TEXTURE)
    MyRoleIcon:SetDimensions(30, 30)
    MyRoleIcon:SetAnchor(CENTER, MyFrame, RIGHT, 0, 0)
    MyRoleIcon:SetTexture("")

    LGRI.UI.MyFrame = MyFrame
    LGRI.UI.MyRaceIcon = MyRaceIcon
    LGRI.UI.MyClassIcon = MyClassIcon
    LGRI.UI.MyRoleIcon = MyRoleIcon
    LGRI.UI.MyFrag = ZO_SimpleSceneFragment:New(LGRI.UI.MyFrame)
    LGRI.UI.HudToggle(LGRI.savedVars.visible)
    if LGRI.savedVars.defaultPos == true then
        MyFrame:SetAnchor(CENTER, GuiRoot, TOP, 0, 100)
    else
        LGRI.UI.setPos()
    end
end