# nvim-nyctovim
*nvim-nyctovim is a set of nyctophiliac colorschemes for Neovim written in Lua.*

## Caveats
- This plugin has been developed on and for Linux following open source philosophy.

## Overview
- [x] Colorschemes
    - [x] atra
    - [x] caligo
    - [x] nox
    - [x] silentium
    - [x] umbra
- [x] Supported syntax **(nvim-treesitter no needed)**
    - Excellent match
        - [x] Bash
        - [x] C
        - [x] C++
        - [x] CSS
        - [x] HTML
        - [x] Java
        - [x] JSON
        - [x] Kotlin
        - [x] Lua
        - [x] Perl
        - [x] Plant UML
        - [x] Python
        - [x] Rust
        - [x] Scala
        - [x] SQL
        - [x] Vimscript
        - [x] [VURL](https://github.com/javio7/nvim-vurl)
        - [x] XML
    - 80% accurate match
        - [ ] Ruby (80% accurate)
        - [ ] Javascript (80% accurate)
        - [ ] Typescript (80% accurate)
        - [ ] Go (80% accurate)
        - [ ] Haskell (80% accurate)
- [x] Integrations
    - [x] [Lualine](https://github.com/nvim-lualine/lualine.nvim) 
    - [x] [NvimTree](https://github.com/nvim-tree/nvim-tree.lua) 
    - [x] [NerdTree](https://github.com/preservim/nerdtree)
    - [ ] [Vim-airline](https://github.com/vim-airline/vim-airline) 


## Installation
`Vim Plug`
```vim
Plug 'javio7/nvim-nyctovim'
```
`Packer`
```lua
use 'javio7/nvim-nyctovim'
```
## Configuration 
- Set up *init.lua* (Neovim)
```lua
-- Available themes: atra, nox, umbra, silentium and caligo
vim.cmd[[colorscheme silentium]]
```
## Screenshots
#### colorscheme `silentium` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://github.com/javio7/img/blob/master/nvim-nyctovim/silentium-lua.png?raw=true) and [Rust](https://github.com/javio7/img/blob/master/nvim-nyctovim/silentium-rust.png?raw=true)
<img src="https://github.com/javio7/img/blob/master/nvim-nyctovim/silentium-java.png?raw=true" alt="java" width="1200"/>

#### colorscheme `umbra` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://github.com/javio7/img/blob/master/nvim-nyctovim/umbra-lua.png?raw=true) and [Rust](https://github.com/javio7/img/blob/master/nvim-nyctovim/umbra-rust.png?raw=true)
<img src="https://github.com/javio7/img/blob/master/nvim-nyctovim/umbra-java.png?raw=true" alt="java" width="1200"/>

#### colorscheme `nox` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://github.com/javio7/img/blob/master/nvim-nyctovim/nox-lua.png?raw=true) and [Rust](https://github.com/javio7/img/blob/master/nvim-nyctovim/nox-rust.png?raw=true)
<img src="https://github.com/javio7/img/blob/master/nvim-nyctovim/nox-java.png?raw=true" alt="java" width="1200"/>

#### colorscheme `atra` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://github.com/javio7/img/blob/master/nvim-nyctovim/atra-lua.png?raw=true) and [Rust](https://github.com/javio7/img/blob/master/nvim-nyctovim/atra-rust.png?raw=true)
<img src="https://github.com/javio7/img/blob/master/nvim-nyctovim/atra-java.png?raw=true" alt="java" width="1200"/>

#### colorscheme `caligo` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://github.com/javio7/img/blob/master/nvim-nyctovim/caligo-lua.png?raw=true) and [Rust](https://github.com/javio7/img/blob/master/nvim-nyctovim/caligo-rust.png?raw=true)
<img src="https://github.com/javio7/img/blob/master/nvim-nyctovim/caligo-java.png?raw=true" alt="java" width="1200"/>

## Support
- [Paypal](https://www.paypal.com/donate/?hosted_button_id=DT5ZGHRJKYJ8C)
