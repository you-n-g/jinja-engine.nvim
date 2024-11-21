local M = {}


function M.setup(options)
  require"jinja.conf".setup(options)
  require"jinja.mappings".setup()
end


return M
