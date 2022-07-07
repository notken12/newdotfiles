--- ░▀█▀░█░█░█▀▀░█▄█░█▀▀
--- ░░█░░█▀█░█▀▀░█░█░█▀▀
--- ░░▀░░▀░▀░▀▀▀░▀░▀░▀▀▀

local gears = require("gears")
local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
local theme = dofile(themes_path .. "default/theme.lua")
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local helpers = require("helpers")

--- ░█▀█░█▀▀░█▀▀░▀█▀░█░█░█▀▀░▀█▀░▀█▀░█▀▀░░░█▀█░▀█▀░█▀▀░█░█░▀█▀
--- ░█▀█░█▀▀░▀▀█░░█░░█▀█░█▀▀░░█░░░█░░█░░░░░█░█░░█░░█░█░█▀█░░█░
--- ░▀░▀░▀▀▀░▀▀▀░░▀░░▀░▀░▀▀▀░░▀░░▀▀▀░▀▀▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░░▀░

--- Special
theme.xforeground = "#D9D7D699"
theme.darker_xbackground = "#000a0e99"
theme.xbackground = "#06111599"
theme.lighter_xbackground = "#0d181c33"
theme.one_bg = "#131e2299"
theme.one_bg2 = "#1c272b99"
theme.one_bg3 = "#242f3399"
theme.grey = "#313c40"
theme.grey_fg = "#3b464a"
theme.grey_fg2 = "#455054"
theme.light_grey = "#4f5a5e"
theme.transparent = "#00000000"
theme.dock_bg = theme.xbackground

--- Black
theme.xcolor0 = "#1C252C"
theme.xcolor8 = "#484E5B"

--- Red
theme.xcolor1 = "#DF5B61"
theme.xcolor9 = "#F16269"

--- Green
theme.xcolor2 = "#88C882"
theme.xcolor10 = "#8CD79A"

--- Yellow
theme.xcolor3 = "#DEAF78"
theme.xcolor11 = "#E9C97F"

--- Blue
theme.xcolor4 = "#6791C9"
theme.xcolor12 = "#79AAEB"

--- Magenta
theme.xcolor5 = "#BC83E3"
theme.xcolor13 = "#C488EC"

--- Cyan
theme.xcolor6 = "#67AFC1"
theme.xcolor14 = "#7ACFE4"

--- White
theme.xcolor7 = "#D9D7D6"
theme.xcolor15 = "#E5E5E5"

-- --- Black
-- theme.xcolor0 = "#1C252C"
-- theme.xcolor8 = "#484E5B"
--
-- --- Red
-- theme.xcolor1 = "#f7768e"
-- theme.xcolor9 = "#ff7a93"
--
-- --- Green
-- theme.xcolor2 = "#9ece6a"
-- theme.xcolor10 = "#b9f27c"
--
-- --- Yellow
-- theme.xcolor3 = "#e0af68"
-- theme.xcolor11 = "#ff9e64"
--
-- --- Blue
-- theme.xcolor4 = "#7aa2f7"
-- theme.xcolor12 = "#7da6ff"
--
-- --- Magenta
-- theme.xcolor5 = "#ad8ee6"
-- theme.xcolor13 = "#bb9af7"
--
-- --- Cyan
-- theme.xcolor6 = "#449dab"
-- theme.xcolor14 = "#0db9d7"
--
-- --- White
-- theme.xcolor7 = "#D9D7D6"
-- theme.xcolor15 = "#E5E5E5"

--- ░█▀▀░█▀█░█▀█░▀█▀░█▀▀
--- ░█▀▀░█░█░█░█░░█░░▀▀█
--- ░▀░░░▀▀▀░▀░▀░░▀░░▀▀▀

--- Ui Fonts
theme.font_name = "SF Mono "
theme.font = theme.font_name .. "Regular 11"

--- Icon Fonts
theme.icon_font = "Material Icons "

--- ░█▀▀░█▀█░█░░░█▀█░█▀▄░█▀▀
--- ░█░░░█░█░█░░░█░█░█▀▄░▀▀█
--- ░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀

--- Background Colors
theme.bg_normal = theme.xbackground
theme.bg_focus = theme.xbackground
theme.bg_urgent = theme.xbackground
theme.bg_minimize = theme.xbackground

--- Foreground Colors
theme.fg_normal = theme.xforeground
theme.fg_focus = theme.accent
theme.fg_urgent = theme.xcolor1
theme.fg_minimize = theme.xcolor0

--- Accent colors
function theme.random_accent_color()
	local accents = {
		theme.xcolor9,
		theme.xcolor10,
		theme.xcolor11,
		theme.xcolor12,
		theme.xcolor13,
		theme.xcolor14,
	}

	local i = math.random(1, #accents)
	return accents[i]
end

theme.accent = theme.xcolor4

--- UI events
theme.leave_event = transparent
theme.enter_event = "#ffffff" .. "10"
theme.press_event = "#ffffff" .. "15"
theme.release_event = "#ffffff" .. "10"

--- Widgets
theme.widget_bg = "#16202677"
theme.widget_bg_transparent = "#16202600"

--- Titlebars
theme.titlebar_enabled = true
theme.titlebar_bg = "#06111599"
theme.titlebar_fg = "#D9D7D6"

--- Wibar
theme.wibar_bg = "#0B161A99"
theme.wibar_height = dpi(40)

--- Music
theme.music_bg = theme.xbackground
theme.music_bg_accent = theme.darker_xbackground
theme.music_accent = theme.lighter_xbackground

--- ░█░█░▀█▀░░░█▀▀░█░░░█▀▀░█▄█░█▀▀░█▀█░▀█▀░█▀▀
--- ░█░█░░█░░░░█▀▀░█░░░█▀▀░█░█░█▀▀░█░█░░█░░▀▀█
--- ░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░░▀░░▀▀▀

--- Image Assets
theme.wallpaper = gears.surface.load_uncached(gfs.get_configuration_dir() .. "theme/assets/bigsur.png")
theme.pfp = gears.surface.load_uncached(gfs.get_configuration_dir() .. "theme/assets/pfp.png")
theme.music = gears.surface.load_uncached(gfs.get_configuration_dir() .. "theme/assets/music.png")

--- Icon Theme
--- Define the icon theme for application icons. If not set then the icons
--- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "WhiteSur-dark"

--- Borders
theme.border_width = 0
-- theme.oof_border_width = 0
theme.border_color = "#888888"
theme.border_color_marked = theme.border_color
theme.border_color_active = theme.border_color
theme.border_color_normal = theme.border_color
theme.border_color_new = theme.border_color
theme.border_color_urgent = theme.border_color
theme.border_color_floating = theme.border_color
theme.border_color_maximized = theme.border_color
theme.border_color_fullscreen = theme.border_color

--- Corner Radius
theme.border_radius = 12

--- Edge snap
theme.snap_bg = theme.xcolor8
theme.snap_shape = helpers.ui.rrect(0)

--- Main Menu
theme.main_menu_bg = "#0d181c66"
theme.main_menu_bg_transparent = "#0d181c00"

--- Tooltip
theme.tooltip_bg = theme.lighter_xbackground
theme.tooltip_fg = theme.xforeground
theme.tooltip_font = theme.font_name .. "Regular 10"

--- Hotkeys Pop Up
theme.hotkeys_bg = theme.xbackground
theme.hotkeys_fg = theme.xforeground
theme.hotkeys_modifiers_fg = theme.xforeground
theme.hotkeys_font = theme.font_name .. "Medium 12"
theme.hotkeys_description_font = theme.font_name .. "Regular 10"
theme.hotkeys_shape = helpers.ui.rrect(theme.border_radius)
theme.hotkeys_group_margin = dpi(50)

--- Tag list
local taglist_square_size = dpi(0)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

--- Tag preview
theme.tag_preview_widget_margin = dpi(10)
theme.tag_preview_widget_border_radius = theme.border_radius
theme.tag_preview_client_border_radius = theme.border_radius / 2
theme.tag_preview_client_opacity = 1
theme.tag_preview_client_bg = theme.wibar_bg
theme.tag_preview_client_border_color = theme.wibar_bg
theme.tag_preview_client_border_width = 0
theme.tag_preview_widget_bg = theme.wibar_bg
theme.tag_preview_widget_border_color = theme.wibar_bg
theme.tag_preview_widget_border_width = 0

--- Layout List
theme.layoutlist_shape_selected = helpers.ui.rrect(theme.border_radius)
theme.layoutlist_bg_selected = theme.widget_bg

--- Recolor Layout icons:
theme = theme_assets.recolor_layout(theme, theme.xforeground)

--- Gaps
theme.useless_gap = dpi(2)

--- Systray
theme.systray_icon_size = dpi(20)
theme.systray_icon_spacing = dpi(10)
theme.bg_systray = theme.wibar_bg
--- theme.systray_max_rows = 2

--- Tabs
theme.mstab_bar_height = dpi(60)
theme.mstab_bar_padding = dpi(0)
theme.mstab_border_radius = theme.border_radius
theme.tabbar_disable = true
theme.tabbar_style = "modern"
theme.tabbar_bg_focus = theme.widget_bg
theme.tabbar_bg_normal = theme.lighter_xbackground
theme.tabbar_fg_focus = theme.xforeground
theme.tabbar_fg_normal = theme.xcolor0
theme.tabbar_position = "bottom"
theme.tabbar_AA_radius = 0
theme.tabbar_size = 0
theme.mstab_bar_ontop = true

--- Notifications
theme.notification_spacing = dpi(4)
theme.notification_bg = theme.xbackground
theme.notification_bg_alt = theme.lighter_xbackground

--- Notif center
theme.notif_center_notifs_bg = theme.one_bg2
theme.notif_center_notifs_bg_alt = theme.one_bg2

--- Swallowing
theme.dont_swallow_classname_list = {
	"firefox",
	"gimp",
	"Google-chrome",
	"Thunar",
}

--- Layout Machi
theme.machi_switcher_border_color = theme.lighter_xbackground
theme.machi_switcher_border_opacity = 0.25
theme.machi_editor_border_color = theme.lighter_xbackground
theme.machi_editor_border_opacity = 0.25
theme.machi_editor_active_opacity = 0.25

return theme
