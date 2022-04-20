-- Standard awesome library
local awful = require("awful")

local _M = {}

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

function _M.get ()
  local tags = {}

  awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    if s.geometry.width >= s.geometry.height then
      tags[s] = awful.tag(
        { "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, RC.layouts[1]
      )
    else
      tags[s] = awful.tag(
        { "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, RC.layouts[3]
      )
    end
  end)

  return tags
end

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

return setmetatable({}, { __call = function(_, ...) return _M.get(...) end })
