" #########################################################
" # Maintainer:   Javier Orfo                             #
" # URL:          https://github.com/javi-7/nvim-nyctovim #
" #########################################################

if exists('b:current_syntax')
  finish
endif

let b:current_syntax = "vurlr"

lua require("nyctovim.syntax.vurl")()
