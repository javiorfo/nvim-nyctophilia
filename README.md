# nvim-whisky
*nvim-whisky is a set of dark colorschemes for Neovim written in Lua.*

## Caveats
- This plugin has been developed on and for Linux following open source philosophy.

## Overview
- **Colorschemes**
    - blend, malt, peat, smoky
- **Supported syntax**
    - Bash, C, C++, CSS, Go, Haskell, HTML, Java, JavaScript, JSON, Kotlin, Lua, Perl, Plant UML, Python, Ruby, Ron, Rust, Scala, SQL, TOML, TypeScript, VimScript, XML
- **Integrations**
    - [Lualine](https://github.com/nvim-lualine/lualine.nvim), [NvimTree](https://github.com/nvim-tree/nvim-tree.lua), [NerdTree](https://github.com/preservim/nerdtree), [Vim-airline](https://github.com/vim-airline/vim-airline) 

## Installation
`Packer`
```lua
use 'javiorfo/nvim-whisky'
```
`Lazy`
```lua
{ 'javiorfo/nvim-whisky' }
```

## Configuration 
- Set up *init.lua* (Neovim)
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
