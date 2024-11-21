local M = {}

local current_file = debug.getinfo(1, "S").source:sub(2)
local current_dir = current_file:match("(.*/)")
package.path = package.path..';'..current_dir..'../lupa/?.lua'

function M.setup(options)
  require"jinja.conf".setup(options)
  require"jinja.mappings".setup()
end

M.lupa = require"lupa"

return M
