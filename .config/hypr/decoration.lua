hl.config({
    general = {
        gaps_in          = 2,
        gaps_out         = 8,

        border_size      = 2,

        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing    = true,

        layout           = "scrolling",
    },

    decoration = {
        rounding         = 0,
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
            enabled = false,
            size = 8,
            passes = 3,
            brightness = 0.4,
            contrast = 0.8,
            noise = 0.05,
            new_optimizations = true,
            ignore_opacity = true,
            xray = true,
        }
    },

    group = {
        groupbar = {
            enabled = false,
            indicator_height = 8,
            render_titles = false,
            rounding = 4,
        },
    },

    cursor = {
        no_warps = true,
    }
})
