" #########################################################
" # Maintainer:   Javier Orfo                             #
" # URL:          https://github.com/javi-7/nvim-nyctovim #
" #########################################################

if exists('b:current_syntax')
  finish
endif

let b:current_syntax = "plantuml"

lua require("nyctovim.syntax.plantuml")()
