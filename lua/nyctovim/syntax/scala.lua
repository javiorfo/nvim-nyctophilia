-- ##########################################################
-- # Maintainer: Mr. Charkuils                              #
-- # URL:        https://github.com/charkuils/nvim-nyctovim #
-- ##########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll

linkAll {
    scalaKeyword         = "Type",
    scalaTypeDeclaration = "Special",
    scalaExternal        = "Type",
    scalaAnnotation      = "Annotation",
}
