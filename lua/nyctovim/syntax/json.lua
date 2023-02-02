-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javi-7/nvim-nyctovim #
-- #########################################################

local utils = require'nyctovim.utils'
local linkAll = utils.linkAll
local synKeyword = utils.synKeyword

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
