hl.config({
    general = {
        gaps_in          = 2,
        gaps_out         = 6,

        col = {
            active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },

        border_size      = 2,

        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing    = true,

        layout           = "dwindle",
    },

    decoration = {
        rounding         = 8,
        -- rounding_power   = 4,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow           = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur             = {
            enabled = true,
            size = 8,
            passes = 3,
            brightness = 0.8,
            contrast = 0.8,
            noise = 0.05,
            new_optimizations = true,
            ignore_opacity = true,
            xray = true,
        }
    },

    group = {
      groupbar = {
        font_size = 12,
        font_family = "monospace",
        font_weight_active = "ultraheavy",
        font_weight_inactive = "bold",
        indicator_height = 1,
        indicator_gap = 5,
        height = 22,
        gaps_in = 5,
        gaps_out = 0,
        text_color = "rgb(ffffff)",
        text_color_inactive = "rgba(ffffff90)",
        col = {
          active = "rgba(00000040)",
          inactive = "rgba(00000020)",
        },
        gradients = true,
        gradient_rounding = 0,
        gradient_round_only_edges = false,
    },
    col = {
            border_active = "rgba(ff00ffff)",
            border_inactive = "rgba(ff00ff70)",
            border_locked_active = "rgba(ff002bff)",
            border_locked_inactive = "rgba(ff002b70)",
        },
    },

    cursor = {
        no_warps = true,
    }
})
