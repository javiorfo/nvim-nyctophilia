" #######################################################
" # Maintainer: Javier Orfo                             #
" # URL:        https://github.com/javiorfo/nvim-whisky #
" #######################################################

if exists('b:current_syntax')
  finish
endif

let b:current_syntax = "ship"

lua require("whisky.syntax.ship")()
