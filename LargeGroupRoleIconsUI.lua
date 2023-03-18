LargeGroupRoleIcons = LargeGroupRoleIcons or {}
local LGRI = LargeGroupRoleIcons

LGRI.UI = {}

local WM = GetWindowManager()

function LGRI.UI.BuildUI()
    local MyFrame = WM:CreateTopLevelWindow("MyFrame")
    MyFrame:SetDimensions(75, 30)
    MyFrame:SetAnchor(CENTER, GuiRoot, TOP, 0, 100)
    MyFrame:SetMovable(false)
    MyFrame:SetHidden(not LGRI.savedVars.visible)

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
end