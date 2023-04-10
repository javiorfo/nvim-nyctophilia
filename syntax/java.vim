" ########################################################
" # Maintainer: Mr. Charkuils                            #
" # URL:        https://github.com/charkuils/nvim-whisky #
" ########################################################

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "java"

lua require("whisky.syntax.java")()
