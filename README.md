# nvim-nyctophilia
*nvim-nyctophilia is a set of dark colorschemes for Neovim written in Lua.*

## Caveats
- This plugin has been developed on and for Linux following open source philosophy.

## Overview
- **Colorschemes**
    - nox, umbra, nebula, tenebra
- **Integrations**
    - [Lualine](https://github.com/nvim-lualine/lualine.nvim), [NvimTree](https://github.com/nvim-tree/nvim-tree.lua), [NerdTree](https://github.com/preservim/nerdtree)

## Installation
`Packer`
```lua
use 'javiorfo/nvim-nyctophilia'
```
`Lazy`
```lua
{ 
    'javiorfo/nvim-nyctophilia',
    lazy = false,
    config = function()
        -- Available themes: nox, umbra, nebula and tenebra
        vim.cmd[[colorscheme umbra]]
    end
}
```

## Configuration (Packer)
- Set up *init.lua*
```lua
-- Available themes: nox, umbra, nebula and tenebra
vim.cmd[[colorscheme umbra]]
```

## Troubleshooting
- If using LSP servers disable semantics, otherwise syntax might not look properly
```lua
-- Example with C language
require'lspconfig'.clangd.setup {
    on_attach = function(client, _)
        client.server_capabilities.semanticTokensProvider = nil
    end
}
```

## Screenshots
#### colorscheme `umbra` with Lua
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/lua-malt.png?raw=true" alt="umbra" width="700"/>

#### colorscheme `nebula` with Lua
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/lua-smoky.png?raw=true" alt="nebula" width="700"/>

#### colorscheme `nox` with Java
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/java-blend.png?raw=true" alt="nox" width="700"/>

#### colorscheme `tenebra` with Rust
<img src="https://github.com/javiorfo/img/blob/master/nvim-whisky/rust-peat.png?raw=true" alt="tenebra" width="700"/>
