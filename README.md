# nvim-whisky
*nvim-whisky is a set of dark colorschemes for Neovim written in Lua.*

## Caveats
- This plugin has been developed on and for Linux following open source philosophy.

## Overview
- **Colorschemes**
    - blend, malt, peat, smoky
- **Integrations**
    - [Lualine](https://github.com/nvim-lualine/lualine.nvim), [NvimTree](https://github.com/nvim-tree/nvim-tree.lua), [NerdTree](https://github.com/preservim/nerdtree)

## Installation
`Packer`
```lua
use 'javiorfo/nvim-whisky'
```
`Lazy`
```lua
{ 
    'javiorfo/nvim-whisky',
    lazy = false,
    config = function()
        -- Available themes: malt, blend, smoky and peat
        vim.cmd[[colorscheme malt]]
    end
}
```

## Configuration (Packer)
- Set up *init.lua*
```lua
-- Available themes: malt, blend, smoky and peat
vim.cmd[[colorscheme malt]]
```
## Screenshots
#### colorscheme `malt` with Lua
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/lua-malt.png?raw=true" alt="malt" width="700"/>

#### colorscheme `smoky` with Lua
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/lua-smoky.png?raw=true" alt="smoky" width="700"/>

#### colorscheme `blend` with Java
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/java-blend.png?raw=true" alt="blend" width="700"/>

#### colorscheme `peat` with Rust
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/rust-peat.png?raw=true" alt="peat" width="700"/>
