" ########################################################
" # Maintainer: Javier Orfo                              #
" # URL:        https://github.com/whiskoder/nvim-whisky #
" ########################################################

if exists('b:current_syntax')
    finish
endif

let b:current_syntax = "rust"

lua require("whisky.syntax.rust")()
