local vars = {

    -- Apps
    appTerminal = "kitty -1",
    appFileManager = "dolphin",

    keyOpenTerminal = "SUPER + Return",
    keyOpenFileManager = "SUPER + E",

    -- Shell
    keyToggleLauncher = "ALT + SPACE",
    keyToggleWallpapers = "SUPER + Y",
    keyToggleClipboard = "SUPER + V",
    keyLockScreen = "SUPER + O",

    keyOpenColorPicker = "SUPER + SHIFT + C",
    keyScreenshot = "PRINT",

    cmdToggleLauncher = "noctalia msg panel-toggle launcher",
    cmdToggleClipboard = "noctalia msg panel-toggle clipboard",
    cmdToggleWallpapers = "noctalia msg panel-toggle wallpaper",
    cmdLockScreen = "noctalia msg session lock",

    cmdOpenColorPicker = "hyprpicker -a",
    cmdScreenshot = "noctalia msg screenshot-region",
    cmdScreenshotWithEdit = "hyprshot -z -m region --raw | satty -f -",

    -- Compositor
    keyCloseWindow = "SUPER + Q",
    keyToggleFloat = "SUPER + W",
    keyTogglePseudo = "SUPER + P",

    keyChangeWorkspaceModifier = "SUPER",
    keyMoveToWorkspaceModifier = "SUPER + SHIFT",

    keyFocusModifier = "SUPER",
    keyMoveModifier = "SUPER + SHIFT",
    keyMoveGroupAwareModifier = "SUPER + CTRL",
    keyResizeModifier = "SUPER + ALT",

    keyFocusWindow = "SUPER + F",
    keyFullscreenWindow = "SUPER + SHIFT + F",
    keyTogglePinWindow = "SUPER + P",

    keyToggleGroup = "SUPER + G",
    keyLockActiveGroup = "SUPER + SHIFT + G",
    keyChangeGroupNext = "SUPER + TAB",
    keyChangeGroupPrev = "SUPER + SHIFT + TAB",
    keyMoveOutOfGroup = "SUPER + D",
    keyMoveWindowOrderGroupNext = "SUPER + SHIFT + page_up",
    keyMoveWindowOrderGroupPrev = "SUPER + SHIFT + page_down",

    keyLeft = "H",
    keyRight = "L",
    keyUp = "K",
    keyDown = "J",

    keyToggleSpecialWorkspace = "SUPER + GRAVE",
    keyMoveWindowToSpecialWorkspace = "SUPER + SHIFT + GRAVE",

    keyToggleNoScreenshare = "SUPER + S",

}

----------------------------------------
-- Apps
----------------------------------------
hl.bind(vars.keyOpenTerminal, hl.dsp.exec_cmd(vars.appTerminal))
hl.bind(vars.keyOpenFileManager, hl.dsp.exec_cmd(vars.appFileManager))

----------------------------------------
-- Shell (Noctalia panels / session)
----------------------------------------
hl.bind(vars.keyToggleLauncher, hl.dsp.exec_cmd(vars.cmdToggleLauncher))
hl.bind(vars.keyToggleClipboard, hl.dsp.exec_cmd(vars.cmdToggleClipboard))
hl.bind(vars.keyToggleWallpapers, hl.dsp.exec_cmd(vars.cmdToggleWallpapers))
hl.bind(vars.keyLockScreen, hl.dsp.exec_cmd(vars.cmdLockScreen))

----------------------------------------
-- Screenshot & Utilities
----------------------------------------
hl.bind(vars.keyOpenColorPicker, hl.dsp.exec_cmd(vars.cmdOpenColorPicker))
hl.bind(vars.keyScreenshot, hl.dsp.exec_cmd(vars.cmdScreenshot))

----------------------------------------
-- Window Management
----------------------------------------
hl.bind(vars.keyCloseWindow, hl.dsp.window.close())
hl.bind(vars.keyToggleFloat, hl.dsp.window.float({ action = "toggle" }))
hl.bind(vars.keyTogglePseudo, hl.dsp.window.pseudo())
hl.bind(vars.keyToggleNoScreenshare, hl.dsp.window.tag({ tag = "noscreenshare" }))
hl.bind(vars.keyFocusWindow, hl.dsp.window.fullscreen({ mode = 1 })) -- monocle
hl.bind(vars.keyFullscreenWindow, hl.dsp.window.fullscreen({ mode = 0 })) -- true fullscreen
hl.bind(vars.keyTogglePinWindow, hl.dsp.window.pin())

----------------------------------------
-- Groups
----------------------------------------
hl.bind(vars.keyToggleGroup, hl.dsp.group.toggle())
hl.bind(vars.keyLockActiveGroup, hl.dsp.group.lock_active())
hl.bind(vars.keyChangeGroupNext, hl.dsp.group.next())
hl.bind(vars.keyChangeGroupPrev, hl.dsp.group.prev())
hl.bind(vars.keyMoveOutOfGroup, hl.dsp.window.move({ out_of_group = true }))
hl.bind(vars.keyMoveWindowOrderGroupNext, hl.dsp.group.move_window({ forward = false }))
hl.bind(vars.keyMoveWindowOrderGroupPrev, hl.dsp.group.move_window())

----------------------------------------
-- Workspaces
----------------------------------------
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(vars.keyChangeWorkspaceModifier .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(vars.keyMoveToWorkspaceModifier .. " + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(vars.keyToggleSpecialWorkspace, hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind(vars.keyMoveWindowToSpecialWorkspace, hl.dsp.window.move({ workspace = "special:scratchpad" }))

----------------------------------------
-- Focus / Move / Swap / Resize (directional)
----------------------------------------
hl.bind(vars.keyFocusModifier .. " + " .. vars.keyLeft, hl.dsp.focus({ direction = "left" }))
hl.bind(vars.keyFocusModifier .. " + " .. vars.keyRight, hl.dsp.focus({ direction = "right" }))
hl.bind(vars.keyFocusModifier .. " + " .. vars.keyUp, hl.dsp.focus({ direction = "up" }))
hl.bind(vars.keyFocusModifier .. " + " .. vars.keyDown, hl.dsp.focus({ direction = "down" }))

hl.bind(vars.keyMoveModifier .. " + " .. vars.keyLeft, hl.dsp.window.move({ direction = "left" }))
hl.bind(vars.keyMoveModifier .. " + " .. vars.keyRight, hl.dsp.window.move({ direction = "right" }))
hl.bind(vars.keyMoveModifier .. " + " .. vars.keyUp, hl.dsp.window.move({ direction = "up" }))
hl.bind(vars.keyMoveModifier .. " + " .. vars.keyDown, hl.dsp.window.move({ direction = "down" }))

hl.bind(vars.keyMoveGroupAwareModifier .. " + " .. vars.keyLeft, hl.dsp.window.move({ direction = "left", group_aware = true }))
hl.bind(vars.keyMoveGroupAwareModifier .. " + " .. vars.keyRight, hl.dsp.window.move({ direction = "right", group_aware = true }))
hl.bind(vars.keyMoveGroupAwareModifier .. " + " .. vars.keyUp, hl.dsp.window.move({ direction = "up", group_aware = true }))
hl.bind(vars.keyMoveGroupAwareModifier .. " + " .. vars.keyDown, hl.dsp.window.move({ direction = "down", group_aware = true }))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyLeft,
    hl.dsp.window.resize({ x = -100., y = 0.0, relative = true }))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyRight,
    hl.dsp.window.resize({ x = 100.0, y = 0.0, relative = true }))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyUp,
    hl.dsp.window.resize({ x = 0.0, y = -100.0, relative = true }))

hl.bind(vars.keyResizeModifier .. " + " .. vars.keyDown,
    hl.dsp.window.resize({ x = 0.0, y = 100.0, relative = true }))

----------------------------------------
-- Mouse Bindings
----------------------------------------
-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(vars.keyFocusModifier .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(vars.keyFocusModifier .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

----------------------------------------
-- Media Keys (laptop volume / brightness / playback)
----------------------------------------
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

----------------------------------------
-- Misc Config
----------------------------------------
hl.config({ binds = { scroll_event_delay = 0, } })
