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

hl.layer_rule({
  name = "noctalia",
  match = {
    namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
  },
  ignore_alpha = 0.5,
  blur = true,
  blur_popups = true,
})


hl.window_rule({
  name = "float rules",
  match = { class = "^(com.gabm.satty|hyprland-share-picker|imv)$" },
  float = true,
})

hl.window_rule({
  name = "change the color of floating windows",
  match = { float = true },
  border_color = "rgb(ffa500)",
})

hl.window_rule({
  name = "change the color of fullscreen state 1 windows",
  match = { fullscreen_state_internal = 1 },
  border_color = "rgb(00ff00)",
})

-- dynamically hide windows from screenshare
local hideFromScreeshareClasses = { "proton-pass", "Termius", "obsidian" }

hl.on("window.open", function(win)
  if win == nil then return end
  for _, c in ipairs(hideFromScreeshareClasses) do
    if win.class == c then
      hl.dispatch(hl.dsp.window.tag({ tag = "+noscreenshare", window = win }))
      break
    end
  end
end)

-- "noscreenshare" tag
-- tag is required because I want to control the windows'
-- screenshare state with a keybind
hl.window_rule({
  match = { tag = "noscreenshare" },
  no_screen_share = true,
})

hl.window_rule({
  match = { tag = "noscreenshare" },
  border_color = "rgb(ff0000)",
  border_size = 4,
})

