# nvim-nyctophilia
*nvim-nyctophilia is a set of Neovim colorschemes for nightlovers.*

## Caveats
- This plugin has been developed on and for Linux following open source philosophy.

## Overview
- **Colorschemes**
    - nox, umbra, nebula, tenebra
- **Integrations**
    - [Minimaline](https://github.com/javiorfo/nvim-minimaline), [Lualine](https://github.com/nvim-lualine/lualine.nvim), [NvimTree](https://github.com/nvim-tree/nvim-tree.lua), [NerdTree](https://github.com/preservim/nerdtree)

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
#### colorscheme `umbra` with Rust
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctophilia/rust-umbra.png?raw=true" alt="umbra"/>

#### colorscheme `nebula` with C
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctophilia/c-nebula.png?raw=true" alt="nebula" />

#### colorscheme `nox` with Java
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctophilia/java-nox.png?raw=true" alt="nox" />

#### colorscheme `tenebra` with Lua
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctophilia/lua-tenebra.png?raw=true" alt="tenebra" />

---

### Donate
- [Paypal](https://www.paypal.com/donate/?hosted_button_id=FA7SGLSCT2H8G)
