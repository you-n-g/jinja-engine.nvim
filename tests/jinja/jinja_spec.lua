local plugin = require("jinja")

describe("setup", function()
  it("works with default", function()
    assert(plugin.setup() == nil, "Successfully setup!")
  end)

  it("jinja test", function()
    local lupa = require('jinja').lupa
    assert(lupa.expand("hello {{ s }}!", {s = "world"}) == "hello world!", "template variable")

    assert(lupa.expand("hello {{ s }}!", {s = "world"}) == "hello world!", "template variable")
    assert(lupa.expand("{% for i in {1, 2, 3} %}{{ i }}{% endfor %}") == "123", "ctrl loop")
  end)
end)
