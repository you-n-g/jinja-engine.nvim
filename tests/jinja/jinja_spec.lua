local plugin = require("jinja")

describe("setup", function()
  it("works with default", function()
    assert(plugin.setup() == nil, "Successfully setup!")
  end)
end)
