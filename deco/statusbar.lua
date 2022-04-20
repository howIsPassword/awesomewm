-- Standard awesome library
local awful  = require("awful")
local theme = require("themes.multicolor.theme")

-- Custom Local Library: Common Functional Decoration
local deco             = {
  wallpaper            = require("deco.wallpaper"),
  taglist              = require("deco.taglist"),
  tasklist             = require("deco.tasklist")
}

local taglist_buttons  = deco.taglist()
local tasklist_buttons = deco.tasklist()


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
awful.util.tasklist_buttons = tasklist_buttons
awful.util.taglist_buttons = taglist_buttons
awful.screen.connect_for_each_screen(function(s)
  set_wallpaper(s)
  theme.at_screen_connect(s)
end)
