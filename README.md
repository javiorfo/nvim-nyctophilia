# nvim-poe
*nvim-poe is a set of minimal colorschemes for Neovim written in Lua.*

## Caveats
- This plugin has been developed on and for Linux following open source philosophy.

## Overview
- [x] Colorschemes
    - [x] alone
    - [x] blackcat
    - [x] raven
    - [x] silence
    - [x] usher
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
        - [x] [VURL](https://github.com/javi-7/nvim-vurl)
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
Plug 'javi-7/nvim-poe'
```
`Packer`
```lua
use 'javi-7/nvim-poe'
```
## Configuration 
- Set up *init.lua* (Neovim)
```lua
-- Available themes: alone, blackcat, usher, silence and raven
vim.cmd[[colorscheme silence]]
```
## Screenshots
#### colorscheme `silence` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/silence-lua.png) and [Rust](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/silence-rust.png)
<img src="https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/silence-java.png" alt="java" width="1200"/>

#### colorscheme `blackcat` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/cosmos-lua.png) and [Rust](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/cosmos-rust.png)
<img src="https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/cosmos-java.png" alt="java" width="1200"/>

#### colorscheme `raven` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/void-lua.png) and [Rust](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/void-rust.png)
<img src="https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/void-java.png" alt="java" width="1200"/>

#### colorscheme `alone` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/blackhole-lua.png) and [Rust](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/blackhole-rust.png)
<img src="https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/blackhole-java.png" alt="java" width="1200"/>

#### colorscheme `usher` with Java (integrated with NvimTree and Lualine). More screenshots with [Lua](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/stardust-lua.png) and [Rust](https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/stardust-rust.png)
<img src="https://codeberg.org/javi/img/raw/branch/master/nvim-spaschemes/stardust-java.png" alt="java" width="1200"/>

## Support
- [Paypal](https://www.paypal.com/donate/?hosted_button_id=DT5ZGHRJKYJ8C)
