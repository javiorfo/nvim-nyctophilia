-- ###########################################################
-- # Maintainer: System Malt                                 #
-- # URL:        https://github.com/systemmalt/nvim-nyctovim #
-- ###########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll

linkAll {
    scalaKeyword         = "Type",
    scalaTypeDeclaration = "Special",
    scalaExternal        = "Type",
    scalaAnnotation      = "Annotation",
}
