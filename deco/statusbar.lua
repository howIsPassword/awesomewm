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

local font = "JetBrainsMono Nerd Font 10"

local _M               = {}
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

awful.screen.connect_for_each_screen(function(s)
  set_wallpaper(s)
  theme.at_screen_connect(s)
end)
