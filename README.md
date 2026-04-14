# lumiscript-neovim

Neovim support for the Lumiscript language.

This repository provides:

- filetype detection for `.lumi`
- `nvim-treesitter` parser registration
- Tree-sitter highlight queries
- Tree-sitter indent queries
- query support for arrays, indexed access, and `for` loops

By default this plugin assumes the parser lives at:

`https://github.com/jayadamsmorgan/lumiscript-treesitter`

If you want to override that, set:

```lua
vim.g.lumiscript_treesitter_url = "/absolute/path/to/lumiscript-treesitter"
```

before the plugin loads.

## Setup

Example with `lazy.nvim`:

```lua
{
  "jayadamsmorgan/lumiscript-neovim",
  ft = "lumiscript",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
}
```

Full example:

```lua
require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },
  {
    "jayadamsmorgan/lumiscript-neovim",
    ft = "lumiscript",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      vim.defer_fn(function()
        vim.cmd("TSInstall lumiscript")
      end, 0)
    end,
  },
})
```

Then install the parser:

```vim
:TSInstall lumiscript
```

## Enable Tree-sitter

```lua
require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
```
