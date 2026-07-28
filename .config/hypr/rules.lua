hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})


hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
  match = {
    class = "kitty",
  },
  scrolling_width = 0.5,
})

hl.window_rule({
  match = {
    class = "org.kde.dolphin",
  },
  scrolling_width = 0.5,
})

hl.layer_rule({
    match = { namespace = "dms:frame" },
    blur = true,
    no_anim = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    match = { namespace = "dms:osd" },
    blur = true,
    no_anim = true,
    ignore_alpha = 0.8,
})

-- hl.layer_rule({
--   name = "noctalia",
--   match = {
--     namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
--   },
--   ignore_alpha = 0.5,
--   blur = true,
--   blur_popups = true,
-- })

hl.layer_rule({
    match = { namespace = "dms:spotlight" },
    no_anim = true,
    blur = true,
    ignore_alpha = 0.8,
})

hl.window_rule({
    match = { class = "com.gabm.satty" },
    float = true,
})

hl.window_rule({
    match = { class = "hyprland-share-picker"},
    float = true,
})

hl.window_rule({
    match = { class = "proton-pass" },
    no_screen_share = true,
})

hl.window_rule({
    no_screen_share = true,
})

hl.window_rule({
    match = { class = "obsidian" },
    no_screen_share = true,
})

hl.window_rule({
    match = { class = "imv" },
    float = true,
})
