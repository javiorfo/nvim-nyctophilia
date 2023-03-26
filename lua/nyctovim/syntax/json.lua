-- ###########################################################
-- # Maintainer: System Malt                                 #
-- # URL:        https://github.com/systemmalt/nvim-nyctovim #
-- ###########################################################

local util = require 'nyctovim.util'
local linkAll = util.linkAll

linkAll {
    jsonBoolean = "Boolean",
    jsonNull    = "Boolean",
    jsonBraces  = "Type",
    jsonQuote   = "Type",
    jsonKeyword = "Type"
}
