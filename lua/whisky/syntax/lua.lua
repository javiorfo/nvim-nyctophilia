-- ########################################################
-- # Maintainer: Javier Orfo                              #
-- # URL:        https://github.com/whiskoder/nvim-whisky #
-- ########################################################

local util = require 'whisky.util'
local linkAll = util.linkAll

linkAll {
    luaFunction = "Type",
    luaTable    = "luaFunction"
}
