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
    keyScreenshotWithEdit = "SUPER + PRINT",
    keyToggleFreeze = "SUPER + SHIFT + P";

    cmdToggleLauncher = "noctalia msg panel-toggle launcher",
    cmdToggleClipboard = "noctalia msg panel-toggle clipboard",
    cmdToggleWallpapers = "noctalia msg panel-toggle wallpaper",
    cmdLockScreen = "noctalia msg session lock",

    cmdOpenColorPicker = "hyprpicker -a",
    cmdScreenshot = "noctalia msg screenshot-region",
    cmdScreenshotWithEdit = "hyprshot -z -m region --raw | satty -f -",
    cmdToggleFreeze = "wl-freeze -c \"hyprctl activewindow -j | jq '.pid'\"",

    -- Compositor
    keyCloseWindow = "SUPER + Q",
    keyToggleFloat = "SUPER + W",
    keyTogglePseudo = "SUPER + P",

    keyChangeWorkspaceModifier = "SUPER",
    keyMoveToWorkspaceModifier = "SUPER + SHIFT",

    keyFocusModifier = "SUPER",
    keySwapModifier = "SUPER + SHIFT",
    keyMoveWindowToWorkspaceModifier = "SUPER + SHIFT",
    keyMoveModifier = "SUPER + CTRL",
    keyResizeModifier = "SUPER + ALT",

    keyFocusWindow = "SUPER + F",
    keyFullscreenWindow = "SUPER + SHIFT + F",
    keyTogglePinWindow = "SUPER + P",

    keyToggleGroup = "SUPER + G",
    keyLockActiveGroup = "SUPER + SHIFT + G",
    keyChangeGroupNext = "SUPER + TAB",
    keyChangeGroupPrev = "SUPER + SHIFT + TAB",
    keyMoveOutOfGroup = "SUPER + D",

    keyLeft = "H",
    keyRight = "L",
    keyUp = "K",
    keyDown = "J",

    keyToggleSpecialWorkspace = "SUPER + GRAVE",
    keyMoveWindowToSpecialWorkspace = "SUPER + SHIFT + GRAVE",

    keyScrollNextWindow = "SUPER + mouse_up",
    keyScrollPrevWindow = "SUPER + mouse_down",
    keyNextWorkspace = "SUPER + SHIFT + mouse_up",
    keyPrevWorkspace = "SUPER + SHIFT + mouse_down",
    keyNextWorkspaceAlt = "SUPER + J",
    keyPrevWorkspaceAlt = "SUPER + K",
    keyMoveWindowToNextWorkspace = "SUPER + CTRL + mouse_up",
    keyMoveWindowToPrevWorkspace = "SUPER + CTRL + mouse_down",
    keyMoveWindowToNextWorkspaceAlt = "SUPER + SHIFT + J",
    keyMoveWindowToPrevWorkspaceAlt = "SUPER + SHIFT + K",
    keySwapWindowToLeft = "SUPER + ALT + mouse_up",
    keySwapWindowToRight = "SUPER + ALT + mouse_down",

    keyToggleNoScreenshare = "SUPER + SHIFT + R",

    -- Requires https://github.com/yayuuu/hyprland-scroll-overview
    keyToggleScrollOverview = "SUPER + A"

}
return vars
