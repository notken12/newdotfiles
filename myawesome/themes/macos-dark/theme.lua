local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font        = "SF Pro Display 10"
theme.font_var    = "SF Pro Display"
theme.bg_normal   = "#191919"
theme.bg_focus    = "#121212"
theme.bg_urgent   = "#ff0000"
theme.bg_minimize = "#444444"
theme.bg_systray  = theme.bg_normal

theme.icon_var     = "Material Icons Round "
theme.icon_alt_var = "Material Icons Outlined "

-- black color
theme.black_color = "#000000"

theme.fg_color    = "#aaaaaa"
theme.fg_normal   = "#aaaaaa"
theme.fg_focus    = "#ffffff"
theme.fg_urgent   = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.useless_gap   = dpi(8)
theme.border_width  = dpi(1)
theme.border_normal = "#333333"
theme.border_focus  = "#222222"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height       = dpi(15)
theme.menu_width        = dpi(100)

theme.rounded = dpi(16)
theme.rounded_wids = dpi(14)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load

-- Generate Awesome icon:
--theme.awesome_icon = theme_assets.awesome_icon(
--    theme.menu_height, theme.bg_focus, theme.fg_focus
--)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

theme.dir = os.getenv("HOME") .. "/.config/awesome/themes/macos-dark"

theme.awesome_icon          = theme.dir .. "/icons/awesome2.png"
theme.submenu_icon          = theme.dir .. "/icons/submenu.png"
theme.taglist_squares_sel   = theme.dir .. "/icons/square_unsel.png"
theme.taglist_squares_unsel = theme.dir .. "/icons/square_unsel.png"
theme.widget_bg             = theme.dir .. "/icons/widget_bg.png"
theme.vol                   = theme.dir .. "/icons/vol.png"
theme.vol_low               = theme.dir .. "/icons/vol_low.png"
theme.vol_no                = theme.dir .. "/icons/vol_no.png"
theme.vol_mute              = theme.dir .. "/icons/vol_mute.png"
theme.disk                  = theme.dir .. "/icons/disk.png"
theme.ac                    = theme.dir .. "/icons/ac.png"
theme.bat                   = theme.dir .. "/icons/bat.png"
theme.bat_low               = theme.dir .. "/icons/bat_low.png"
theme.bat_no                = theme.dir .. "/icons/bat_no.png"
theme.play                  = theme.dir .. "/icons/play.png"
theme.pause                 = theme.dir .. "/icons/pause.png"

theme.layout_tile       = theme.dir .. "/icons/tile.png"
theme.layout_tileleft   = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop    = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv      = theme.dir .. "/icons/fairv.png"
theme.layout_fairh      = theme.dir .. "/icons/fairh.png"
theme.layout_spiral     = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle    = theme.dir .. "/icons/dwindle.png"
theme.layout_max        = theme.dir .. "/icons/max.png"
theme.layout_fullscreen = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier  = theme.dir .. "/icons/magnifier.png"
theme.layout_floating   = theme.dir .. "/icons/floating.png"

theme.titlebar_close_button_focus  = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir .. "/icons/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active    = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active   = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active    = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active   = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active    = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active   = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"

theme.titlebar_minimize_button_focus  = theme.dir .. "/icons/titlebar/minimize_focus.png"
theme.titlebar_minimize_button_normal = theme.dir .. "/icons/titlebar/minimize_normal.png"

theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

-- lain related
theme.useless_gap_width        = 15
theme.layout_centerfair        = theme.dir .. "/icons/centerfair.png"
theme.layout_termfair          = theme.dir .. "/icons/termfair.png"
theme.layout_centerwork        = theme.dir .. "/icons/centerwork.png"
theme.layout_uselessfair       = theme.dir .. "/icons/fairv.png"
theme.layout_uselessfairh      = theme.dir .. "/icons/fairh.png"
theme.layout_uselessdwindle    = theme.dir .. "/icons/dwindle.png"
theme.layout_uselesstile       = theme.dir .. "/icons/tile.png"
theme.layout_uselesstiletop    = theme.dir .. "/icons/tiletop.png"
theme.layout_uselesstileleft   = theme.dir .. "/icons/tileleft.png"
theme.layout_uselesstilebottom = theme.dir .. "/icons/tilebottom.png"
theme.layout_uselesspiral      = theme.dir .. "/icons/spiral.png"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
