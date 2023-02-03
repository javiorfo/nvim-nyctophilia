-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javio7/nvim-nyctovim #
-- #########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("jsonBoolean", "true", "false")
    synKeyword("jsonNull", "null")

    vim.cmd[[syn region jsonString start=+"+ end=+"+]]
    vim.cmd[[syn region jsonString start=+'+ end=+'+]]

    vim.cmd[[syn match jsonBrackets '[{}]']]
    vim.cmd[[syn match jsonKeyword /"\([^"]\|\\\"\)\+"[[:blank:]\r\n]*\:/]]

    linkAll{
        jsonBoolean      = "Boolean",
        jsonNull         = "Boolean",
        jsonBrackets     = "Boolean",
        jsonString       = "String",
        jsonKeyword      = "Type"
    }
end
