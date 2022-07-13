require(... .. ".notifications")
require(... .. ".popups")

local decorations = require(... .. ".decorations")
decorations.init()

local bottom_panel = require(... .. ".panels.bottom-panel")
local central_panel = require(... .. ".panels.central-panel")
local info_panel = require(... .. ".panels.info-panel")
local notification_panel = require(... .. ".panels.notification-panel")

local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
-- local dpi = beautiful.xresources.apply_dpi

local function hide_dock()
  mousegrabber.run(function(mouse)
    if mouse.y <= 1 then
      awesome.emit_signal("dock::show")
      return false
    end
    return true
  end, "arrow")
end

local function show_dock()
  mousegrabber.run(function(mouse)
    if mouse.y >= 64 then
      awesome.emit_signal("dock::hide")
      return false
    end
    return true
  end, "cursor")
end

awesome.connect_signal("startup", function()
  client.connect_signal("manage", function(c)
    if c.name == "plank" then
      c.ontop = true
      -- c:connect_signal("dock::hide", function()
      --   c.ontop = false
      --   hide_dock()
      -- end)
      c:connect_signal("dock::show", function()
        c.ontop = true
        -- show_dock()
      end)
      c:connect_signal("mouse::leave", function()
        c.ontop = false
        c.below = true
        -- hide_dock()
      end)
      c:connect_signal("mouse::enter", function()
        c.ontop = true
        c.below = false
        -- hide_dock()
      end)
      -- hide_dock()
    end
  end)
  awful.screen.connect_for_each_screen(function(s)
    --- Panels
    central_panel(s)
    info_panel(s)
    notification_panel(s)
    gears.timer.start_new(0.0,
      function()
        bottom_panel(s)
      end
    )


    --
    -- local dock_box = awful.wibox({
    --   ontop = true,
    --   screen = s,
    --   x = s.geometry.x,
    --   y = s.geometry.y + s.geometry.height - 4,
    --   forced_width = s.geometry.width,
    --   forced_height = 4,
    --   shape = gears.shape.rectangle,
    --   placement = awful.placement.top
    -- })
    --
    -- dock_box:connect_signal("property::width", function() --for centered placement, wanted to keep the offset
    --   dock_box.x = s.geometry.x
    -- end)
    --
    -- dock_box:connect_signal("mouse::leave", function() 
    --   awesome.emit_signal("dock::hide");
    -- end)
    -- dock_box:connect_signal("mouse::enter", function()
    -- end)
  end)
end)
