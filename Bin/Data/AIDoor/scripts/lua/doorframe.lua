-- doorframe.lua

function ad_createDoorFrame()
    local frameDoor = UIFrame:New()
    frameDoor:SetAnchorHor(0.0, 1.0)
    frameDoor:SetAnchorVer(0.0, 1.0)

    local btnSystemOn = UIButton:New("systemon")
    frameDoor:AttachChild(btnSystemOn)
    btnSystemOn.LocalTransform:SetTranslateY(-1.0)
    btnSystemOn:SetAnchorHor(0.0, 0.5)
    btnSystemOn:SetAnchorParamHor(5.0, -5.0)
    btnSystemOn:SetAnchorVer(1.0, 1.0)
    btnSystemOn:SetAnchorParamVer(-5.0, -5.0)
    btnSystemOn:SetPivot(0.5, 1.0)
    btnSystemOn:SetHeight(80.0)
    local txt = btnSystemOn:CreateAddText("系统开启")
    txt:GetText():SetFontSize(24)
    btnSystemOn:SetScriptHandler("aidoor_UICallabck")

    local btnSystemOff = UIButton:New("systemoff")
    frameDoor:AttachChild(btnSystemOff)
    btnSystemOff.LocalTransform:SetTranslateY(-1.0)
    btnSystemOff:SetAnchorHor(0.5, 1.0)
    btnSystemOff:SetAnchorParamHor(5.0, -5.0)
    btnSystemOff:SetAnchorVer(1.0, 1.0)
    btnSystemOff:SetAnchorParamVer(-5.0, -5.0)
    btnSystemOff:SetPivot(0.5, 1.0)
    btnSystemOff:SetHeight(80.0)
    local txt = btnSystemOff:CreateAddText("系统关闭")
    txt:GetText():SetFontSize(24)
    btnSystemOff:SetScriptHandler("aidoor_UICallabck")

    local txtSmallDoor = UIFText:New()
    frameDoor:AttachChild(txtSmallDoor)
    txtSmallDoor.LocalTransform:SetTranslateY(-1.0)
    txtSmallDoor:SetAnchorHor(0.0, 0.0)
    txtSmallDoor:SetAnchorParamHor(50.0, 50.0)
    txtSmallDoor:SetAnchorVer(1.0, 1.0)
    txtSmallDoor:SetAnchorParamVer(-150.0, -150.0)
    txtSmallDoor:SetPivot(0.0, 0.5)
    txtSmallDoor:GetText():SetFontColor(Float3.WHITE)
    txtSmallDoor:GetText():SetText("小门")
    txtSmallDoor:GetText():SetFontSize(36)
    txtSmallDoor:SetSize(200, 60)

    local btnSmallDoor = UIButton:New("sidedooropen")
    frameDoor:AttachChild(btnSmallDoor)
    btnSmallDoor:SetAnchorHor(0.5, 0.5)
    btnSmallDoor:SetAnchorVer(0.7, 0.7)
    btnSmallDoor:SetSize(200.0, 200.0)
    local txt = btnSmallDoor:CreateAddText("开门")
    txt:GetText():SetFontSize(24)
    btnSmallDoor:SetScriptHandler("aidoor_UICallabck")

    local txtBigDoor = UIFText:New()
    frameDoor:AttachChild(txtBigDoor)
    txtBigDoor.LocalTransform:SetTranslateY(-1.0)
    txtBigDoor:SetAnchorHor(0.0, 0.0)
    txtBigDoor:SetAnchorParamHor(50.0, 50.0)
    txtBigDoor:SetAnchorVer(0.5, 0.5)
    txtBigDoor:SetAnchorParamVer(0.0, 0.0)
    txtBigDoor:SetPivot(0.0, 0.5)
    txtBigDoor:GetText():SetFontColor(Float3.WHITE)
    txtBigDoor:GetText():SetText("大门")
    txtBigDoor:GetText():SetFontSize(36)
    txtBigDoor:SetSize(200, 60)

    local txtBigDoorState = UIFText:New()
    frameDoor:AttachChild(txtBigDoorState)
    aidoor_statustext = txtBigDoorState
    txtBigDoorState.LocalTransform:SetTranslateY(-1.0)
    txtBigDoorState:SetAnchorHor(0.0, 1.0)
    txtBigDoorState:SetAnchorParamHor(10.0, -10.0)
    txtBigDoorState:SetAnchorVer(0.5, 0.5)
    txtBigDoorState:SetAnchorParamVer(-60.0, -60.0)
    txtBigDoorState:SetPivot(0.0, 0.5)
    txtBigDoorState:GetText():SetFontColor(Float3.WHITE)
    txtBigDoorState:GetText():SetText("状态参数")
    txtBigDoorState:GetText():SetFontSize(24)
    txtBigDoorState:SetHeight(60)

    local btnBigDoor_open = UIButton:New("dooropen")
    frameDoor:AttachChild(btnBigDoor_open)
    btnBigDoor_open:SetAnchorHor(0.2, 0.2)
    btnBigDoor_open:SetAnchorVer(0.3, 0.3)
    btnBigDoor_open:SetSize(150.0, 150.0)
    local txt = btnBigDoor_open:CreateAddText("开")
    txt:GetText():SetFontSize(24)
    btnBigDoor_open:SetScriptHandler("aidoor_UICallabck")

    local btnBigDoor_stop = UIButton:New("doorstop")
    frameDoor:AttachChild(btnBigDoor_stop)
    btnBigDoor_stop:SetAnchorHor(0.5, 0.5)
    btnBigDoor_stop:SetAnchorVer(0.3, 0.3)
    btnBigDoor_stop:SetSize(150.0, 150.0)
    local txt = btnBigDoor_stop:CreateAddText("停")
    txt:GetText():SetFontSize(24)
    btnBigDoor_stop:SetScriptHandler("aidoor_UICallabck")

    local btnBigDoor_close = UIButton:New("doorclose")
    frameDoor:AttachChild(btnBigDoor_close)
    btnBigDoor_close:SetAnchorHor(0.8, 0.8)
    btnBigDoor_close:SetAnchorVer(0.3, 0.3)
    btnBigDoor_close:SetSize(150.0, 150.0)
    local txt = btnBigDoor_close:CreateAddText("关")
    txt:GetText():SetFontSize(24)
    btnBigDoor_close:SetScriptHandler("aidoor_UICallabck")

    local btnBigDoor_openliense = UIButton:New("doorOpenLiense")
    frameDoor:AttachChild(btnBigDoor_openliense)
    btnBigDoor_openliense:SetAnchorHor(0.5, 0.5)
    btnBigDoor_openliense:SetAnchorVer(0.125, 0.125)
    btnBigDoor_openliense:SetSize(540.0, 150.0)
    local txt = btnBigDoor_openliense:CreateAddText("开一下")
    txt:GetText():SetFontSize(24)
    btnBigDoor_openliense:SetScriptHandler("aidoor_UICallabck")

    return frameDoor
end