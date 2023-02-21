-- #########################################################
-- # Maintainer: Javier Orfo                               #
-- # URL:        https://github.com/javiorfo/nvim-nyctovim #
-- #########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll

linkAll {
    sqlKeyword = "Type",
    sqlSpecial = "Type",
}
