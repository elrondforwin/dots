-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = false,
        column_width = 1.0,
        wrap_swapcol = false,
        wrap_focus = false,
        follow_min_visible = 1.0,
        focus_fit_method = 1,
        explicit_column_widths = "0.5, 1.0"
    },
})
