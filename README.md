# nvim-nyctovim
### Colorschemes for nyctophiliacs
*nvim-nyctovim is a set of dark colorschemes for Neovim written in Lua.*

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
    - [x] Bash
    - [x] C
    - [x] C++
    - [x] CSS
    - [x] Go
    - [x] Haskell
    - [x] HTML
    - [x] Java
    - [x] Javascript
    - [x] JSON
    - [x] Kotlin
    - [x] Lua
    - [x] Perl
    - [x] Plant UML
    - [x] Python
    - [ ] Ruby
    - [x] Ron
    - [x] Rust
    - [x] Scala
    - [x] [SHIP](https://github.com/javiorfo/nvim-ship)
    - [x] SQL
    - [x] TOML
    - [ ] Typescript
    - [x] Vimscript
    - [x] XML
- [x] Integrations
    - [x] [Lualine](https://github.com/nvim-lualine/lualine.nvim) 
    - [x] [NvimTree](https://github.com/nvim-tree/nvim-tree.lua) 
    - [x] [NerdTree](https://github.com/preservim/nerdtree)
    - [ ] [Vim-airline](https://github.com/vim-airline/vim-airline) 


## Installation
`Vim Plug`
```vim
Plug 'javiorfo/nvim-nyctovim'
```
`Packer`
```lua
use 'javiorfo/nvim-nyctovim'
```
## Configuration 
- Set up *init.lua* (Neovim)
```lua
-- Available themes: atra, nox, umbra, silentium and caligo
vim.cmd[[colorscheme silentium]]
```
## Screenshots
#### colorscheme `silentium` with Lua
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctovim/lua-silentium.png?raw=true" alt="silentium" width="700"/>

#### colorscheme `umbra` with Lua
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctovim/lua-umbra.png?raw=true" alt="umbra" width="700"/>

#### colorscheme `nox` with Java
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctovim/java-nox.png?raw=true" alt="nox" width="700"/>

#### colorscheme `atra` with Rust
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctovim/rust-atra.png?raw=true" alt="atra" width="700"/>

#### colorscheme `caligo` with Java
<img src="https://github.com/javiorfo/img/blob/master/nvim-nyctovim/java-caligo.png?raw=true" alt="caligo" width="700"/>
