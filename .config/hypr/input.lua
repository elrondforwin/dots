hl.config({
    input = {
        kb_layout     = "us,tr",
        kb_variant    = "",
        kb_model      = "",
        kb_options    = "caps:escape,grp:win_space_toggle",
        kb_rules      = "",
        accel_profile = "flat",
        repeat_delay  = 250,

        follow_mouse  = 1,

        sensitivity   = 0.2, -- -1.0 - 1.0, 0 means no modification.

        touchpad      = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
