" ########################################################
" # Maintainer: Mr. Charkuils                            #
" # URL:        https://github.com/charkuils/nvim-whisky #
" ########################################################

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "ron"

lua require("whisky.syntax.ron")()
