-- ########################################################
-- # Maintainer: Mr. Charkuils                            #
-- # URL:        https://github.com/charkuils/nvim-whisky #
-- ########################################################

local util = require 'whisky.util'
local linkAll = util.linkAll

linkAll {
    luaFunction = "Type",
    luaTable    = "luaFunction"
}
