-- #######################################################
-- # Maintainer: Javier Orfo                             #
-- # URL:        https://github.com/javiorfo/nvim-whisky #
-- #######################################################

local util = require 'whisky.util'
local linkAll = util.linkAll

linkAll {
    jsonBoolean = "Boolean",
    jsonNull    = "Boolean",
    jsonBraces  = "Type",
    jsonQuote   = "Type",
    jsonKeyword = "Type"
}
