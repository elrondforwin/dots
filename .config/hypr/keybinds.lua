local vars = require("variables")

-- apps
hl.bind(vars.keyOpenTerminal, hl.dsp.exec_cmd(vars.appTerminal))
hl.bind(vars.keyOpenFileManager, hl.dsp.exec_cmd(vars.appFileManager))
hl.bind(vars.keyToggleFloat, hl.dsp.window.float({ action = "toggle" }))

-- shell
hl.bind(vars.keyToggleLauncher, hl.dsp.exec_cmd(vars.cmdToggleLauncher))
hl.bind(vars.keyToggleClipboard, hl.dsp.exec_cmd(vars.cmdToggleClipboard))
hl.bind(vars.keyToggleWallpapers, hl.dsp.exec_cmd(vars.cmdToggleWallpapers))
hl.bind(vars.keyLockScreen, hl.dsp.exec_cmd(vars.cmdLockScreen))
hl.bind(vars.keyOpenColorPicker, hl.dsp.exec_cmd(vars.cmdOpenColorPicker))
hl.bind(vars.keyScreenshot, hl.dsp.exec_cmd(vars.cmdScreenshot))
hl.bind(vars.keyScreenshotWithEdit, hl.dsp.exec_cmd(vars.cmdScreenshotWithEdit))
hl.bind(vars.keyToggleFreeze, hl.dsp.exec_cmd(vars.cmdToggleFreeze))

-- compositor
hl.bind(vars.keyCloseWindow, hl.dsp.window.close())
hl.bind(vars.keyTogglePseudo, hl.dsp.window.pseudo())

-- workspaces
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(vars.keyChangeWorkspaceModifier .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(vars.keyMoveToWorkspaceModifier .. " + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(vars.keyMoveWindowToNextWorkspace, hl.dsp.window.move({ workspace = "+1" }))
hl.bind(vars.keyMoveWindowToPrevWorkspace, hl.dsp.window.move({ workspace = "-1" }))
hl.bind(vars.keyMoveWindowToNextWorkspaceAlt, hl.dsp.window.move({ workspace = "+1" }))
hl.bind(vars.keyMoveWindowToPrevWorkspaceAlt, hl.dsp.window.move({ workspace = "-1" }))

hl.bind(vars.keyToggleSpecialWorkspace, hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind(vars.keyMoveWindowToSpecialWorkspace, hl.dsp.window.move({ workspace = "special:scratchpad" }))

hl.bind(vars.keyFocusModifier .. " + " .. vars.keyLeft, hl.dsp.layout("focus l"))
hl.bind(vars.keyFocusModifier .. " + " .. vars.keyRight, hl.dsp.layout("focus r"))
hl.bind(vars.keyFocusModifier .. " + " .. vars.keyUp, hl.dsp.layout("focus u"))
hl.bind(vars.keyFocusModifier .. " + " .. vars.keyDown, hl.dsp.layout("focus d"))

hl.bind(vars.keySwapModifier .. " + " .. vars.keyLeft, hl.dsp.layout("swapcol l"))
hl.bind(vars.keySwapModifier .. " + " .. vars.keyRight, hl.dsp.layout("swapcol r"))
hl.bind(vars.keySwapModifier .. " + " .. vars.keyUp, hl.dsp.window.swap({ direction = "up" }))
hl.bind(vars.keySwapModifier .. " + " .. vars.keyDown, hl.dsp.window.swap({ direction = "down" }))

hl.bind(vars.keyMoveModifier .. " + " .. vars.keyLeft, hl.dsp.window.move({ group_aware = true, direction = "l" }))
hl.bind(vars.keyMoveModifier .. " + " .. vars.keyRight, hl.dsp.window.move({ group_aware = true, direction = "r" }))
hl.bind(vars.keyMoveModifier .. " + " .. vars.keyUp, hl.dsp.window.move({ group_aware = true, direction = "u" }))
hl.bind(vars.keyMoveModifier .. " + " .. vars.keyDown, hl.dsp.window.move({ group_aware = true, direction = "d" }))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyLeft,
    hl.dsp.layout("colresize -0.1"))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyRight,
    hl.dsp.layout("colresize +0.1"))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyDown,
    hl.dsp.window.resize({ x = 0.0, y = -100.0, relative = true }))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyUp,
    hl.dsp.window.resize({ x = 0.0, y = 100.0, relative = true }))

hl.bind(vars.keyToggleGroup, hl.dsp.group.toggle())
hl.bind(vars.keyLockActiveGroup, hl.dsp.group.lock())
hl.bind(vars.keyChangeGroupNext, hl.dsp.group.next())
hl.bind(vars.keyChangeGroupPrev, hl.dsp.group.prev())
hl.bind(vars.keyMoveOutOfGroup, hl.dsp.window.move({ out_of_group = true }))

hl.bind(vars.keyFocusWindow, hl.dsp.layout("colresize +conf"))
hl.bind(vars.keyFullscreenWindow, hl.dsp.window.fullscreen({ mode = 0 }))
hl.bind(vars.keyTogglePinWindow, hl.dsp.window.pin())

hl.bind(vars.keyScrollNextWindow, hl.dsp.layout("focus r"))
hl.bind(vars.keyScrollPrevWindow, hl.dsp.layout("focus l"))
hl.bind(vars.keyNextWorkspace, hl.dsp.focus({ workspace = "+1" }))
hl.bind(vars.keyPrevWorkspace, hl.dsp.focus({ workspace = "-1" }))
hl.bind(vars.keyNextWorkspaceAlt, hl.dsp.focus({ workspace = "+1" }))
hl.bind(vars.keyPrevWorkspaceAlt, hl.dsp.focus({ workspace = "-1" }))
hl.config({ binds = { scroll_event_delay = 0, } })

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(vars.keyFocusModifier .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(vars.keyFocusModifier .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Resize Windows
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyLeft,
--     hl.dsp.window.resize({ x = -100., y = 0.0, relative = true }))
--
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyRight,
--     hl.dsp.window.resize({ x = 100.0, y = 0.0, relative = true }))
--
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyDown,
--     hl.dsp.window.resize({ x = 0.0, y = -100.0, relative = true }))
--
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyUp,
--     hl.dsp.window.resize({ x = 0.0, y = 100.0, relative = true }))

-- Focus Windows
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyLeft, hl.dsp.focus({ direction = "left" }))
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyRight, hl.dsp.focus({ direction = "right" }))
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyUp, hl.dsp.focus({ direction = "up" }))
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyDown, hl.dsp.focus({ direction = "down" }))

-- Swap Windows
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyLeft, hl.dsp.window.swap({ direction = "left" }))
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyRight, hl.dsp.window.swap({ direction = "right" }))
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyUp, hl.dsp.window.swap({ direction = "up" }))
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyDown, hl.dsp.window.swap({ direction = "down" }))

hl.bind(vars.keyToggleScrollOverview, function()
    hl.plugin.scrolloverview.overview("toggle")
end)
