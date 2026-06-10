# lumiscript-neovim

Neovim support for the Lumiscript language.

This repository provides:

- filetype detection for `.lumi`
- `nvim-treesitter` parser registration
- Tree-sitter highlight queries
- Tree-sitter indent queries
- query support for arrays, indexed access, and `for` loops

## Setup

Example with `lazy.nvim`:

```lua
{
  "YarmanKB/lumiscript-neovim",
  ft = "lumiscript",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
}
```

Then install the parser:

```vim
:TSInstall lumiscript
```
