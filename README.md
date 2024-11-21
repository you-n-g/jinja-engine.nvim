# A Jinja Engine for Neovim
[![Mega-Linter](https://github.com/you-n-g/jinja-engine.nvim/actions/workflows/linter.yml/badge.svg)](https://github.com/marketplace/actions/mega-linter)
[![panvimdoc](https://github.com/you-n-g/jinja-engine.nvim/actions/workflows/panvimdoc.yml/badge.svg)](https://github.com/kdheepak/panvimdoc)

## Motivation of the Plugin

This plugin aims to offer an easy way to use the [Jinja2](https://palletsprojects.com/p/jinja/) template engine in Neovim. It utilizes the [lupa](https://github.com/zhsso/lupa/) engine, providing a straightforward method to integrate Lupa into Neovim.

## Installation

```lua
-- Lazy.nvim
{
  "you-n-g/jinja-engine.nvim",
  dependencies = {
  },
}
```

## Demo

It is common to use `you-n-g/jinja-engine.nvim` to develop other Neovim plugins. For example, if you have installed `you-n-g/jinja-engine.nvim` as a dependency of your plugin, like this:

```lua
-- Lazy.nvim
{
  "<your-plugin>.nvim",
  dependencies = {
    "you-n-g/jinja-engine.nvim",
  },
}
```

Then you can use Jinja in your code like this:

```lua
print(require('jinja').lupa.expand("hello {{ s }}!", {s = "world"}))
print(require('jinja').lupa.expand("{% for i in {1, 2, 3} %}{{ i }}{% endfor %}"))
```

More advanced use cases can be found in [lupa](https://github.com/zhsso/lupa/).

## TODO

## Development

We welcome contributions to this project.

You can test the plugin in the UI with minimal config using:
- `vim -u tests/init_conf/lazy.lua -U NONE -N -i NONE` for [lazy.nvim](https://github.com/folke/lazy.nvim)

If you prefer to run tests without a user interface, you can execute `make test` to initiate the test suite.

## Related Projects

- [lupa](https://github.com/zhsso/lupa/)
