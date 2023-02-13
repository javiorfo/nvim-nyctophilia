" ##########################################################
" # Maintainer: Mr. Charkuils                              #
" # URL:        https://github.com/charkuils/nvim-nyctovim #
" ##########################################################

if exists('b:current_syntax')
  finish
endif

let b:current_syntax = "shipr"

lua require("nyctovim.syntax.ship")()
