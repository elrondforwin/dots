-- they are here because one day I may want to switch to scrolling :p

local vars = {
    keyMoveWindowToWorkspaceModifier = "SUPER + SHIFT",
    keyMoveModifier = "SUPER + CTRL",

    keyScrollNextWindow = "SUPER + mouse_up",
    keyScrollPrevWindow = "SUPER + mouse_down",

    keyNextWorkspaceAlt = "SUPER + J",
    keyPrevWorkspaceAlt = "SUPER + K",
    keyMoveWindowToNextWorkspaceAlt = "SUPER + SHIFT + J",
    keyMoveWindowToPrevWorkspaceAlt = "SUPER + SHIFT + K",

    keySwapWindowToLeft = "SUPER + ALT + mouse_up",
    keySwapWindowToRight = "SUPER + ALT + mouse_down",

    -- Aşağıdaki komutlar için de referans olarak gerekli
    keyFocusModifier = "SUPER",
    keySwapModifier = "SUPER + SHIFT",
    keyResizeModifier = "SUPER + ALT",
    keyFocusWindow = "SUPER + F",
    keyLeft = "H",
    keyRight = "L",
    keyUp = "K",
    keyDown = "J",
}

----------------------------------------
-- Workspaces (alt bindings)
----------------------------------------
-- hl.bind(vars.keyMoveWindowToNextWorkspaceAlt, hl.dsp.window.move({ workspace = "+1" }))
-- hl.bind(vars.keyMoveWindowToPrevWorkspaceAlt, hl.dsp.window.move({ workspace = "-1" }))

-- hl.bind(vars.keyNextWorkspaceAlt, hl.dsp.focus({ workspace = "+1" }))
-- hl.bind(vars.keyPrevWorkspaceAlt, hl.dsp.focus({ workspace = "-1" }))

----------------------------------------
-- Focus (eski layout tabanlı, dsp.focus ile değiştirildi)
----------------------------------------
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyLeft, hl.dsp.layout("focus l"))
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyRight, hl.dsp.layout("focus r"))
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyUp, hl.dsp.layout("focus u"))
-- hl.bind(vars.keyFocusModifier .. " + " .. vars.keyDown, hl.dsp.layout("focus d"))

----------------------------------------
-- Swap (eski layout tabanlı, window.move ile değiştirildi)
----------------------------------------
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyLeft, hl.dsp.layout("swapcol l"))
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyRight, hl.dsp.layout("swapcol r"))
-- hl.bind(vars.keySwapWindowToLeft, hl.dsp.layout("swapcol l"))
-- hl.bind(vars.keySwapWindowToRight, hl.dsp.layout("swapcol r"))
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyUp, hl.dsp.window.swap({ direction = "up" }))
-- hl.bind(vars.keySwapModifier .. " + " .. vars.keyDown, hl.dsp.window.swap({ direction = "down" }))

----------------------------------------
-- Move (group-aware, denenmiş ama kullanılmıyor)
----------------------------------------
-- hl.bind(vars.keyMoveModifier .. " + " .. vars.keyLeft, hl.dsp.window.move({ group_aware = true, direction = "l" }))
-- hl.bind(vars.keyMoveModifier .. " + " .. vars.keyRight, hl.dsp.window.move({ group_aware = true, direction = "r" }))
-- hl.bind(vars.keyMoveModifier .. " + " .. vars.keyUp, hl.dsp.window.move({ group_aware = true, direction = "u" }))
-- hl.bind(vars.keyMoveModifier .. " + " .. vars.keyDown, hl.dsp.window.move({ group_aware = true, direction = "d" }))

----------------------------------------
-- Resize (eski layout/colresize tabanlı, window.resize ile değiştirildi)
----------------------------------------
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyLeft,
--     hl.dsp.layout("colresize -0.1"))
--
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyRight,
--     hl.dsp.layout("colresize +0.1"))
--
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyDown,
--     hl.dsp.window.resize({ x = 0.0, y = -100.0, relative = true }))
--
-- hl.bind(vars.keyResizeModifier .. " + " .. vars.keyUp,
--     hl.dsp.window.resize({ x = 0.0, y = 100.0, relative = true }))

----------------------------------------
-- Misc (eski denemeler)
----------------------------------------
-- hl.bind(vars.keyFocusWindow, hl.dsp.layout("colresize +conf"))

-- hl.bind(vars.keyScrollNextWindow, hl.dsp.layout("focus r"))
-- hl.bind(vars.keyScrollPrevWindow, hl.dsp.layout("focus l"))
