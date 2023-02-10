-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javio7/nvim-nyctovim #
-- #########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("diamondBase", "BASE")
    synKeyword("diamondHeaders", "HEADERS")
    synKeyword("diamondBody", "BODY")
    synKeyword("diamondBoolean", "true", "false", "null")
    synKeyword("diamondMethod", "GET", "POST", "PUT", "DELETE", "PATCH")
    synKeyword("diamondMethod", "CONNECT", "OPTIONS", "TRACE", "HEAD")
    synKeyword("diamondInfo", "STATUS", "TIME")
    synKeyword("diamondError", "ERROR")

    vim.cmd[[syn match diamondComment  '#.*$']]
    vim.cmd[[syn match diamondBrackets '[{}]']]

    vim.cmd[[syn region diamondEnvVar start="{{" end="}}"]]
    vim.cmd[[syn region diamondSection oneline start=/^\s*\~\[/ end=/\]\~/ contains=diamondBase,diamondHeaders,diamondBody]]
    vim.cmd[[syn region diamondString start=+"+ end=+"+ contains=diamondEnvVar]]
    vim.cmd[[syn region diamondVariable start="^\w" end="\s"]]
    vim.cmd[[syn region diamondHtmlTag	  start=+<[^/]+ end=+>+]]
    vim.cmd[[syn region diamondHtmlEndTag start=+</+	end=+>+]]

    vim.cmd[[syn match diamondJson	     /"\([^"]\|\\\"\)\+"[[:blank:]\r\n]*\:/]]


    linkAll{
        diamondComment     = "Comment",
        diamondBoolean     = "Boolean",
        diamondBrackets    = "Boolean",
        diamondSection     = "Boolean",
        diamondBase        = "diamondSection",
        diamondHeaders     = "diamondSection",
        diamondBody        = "diamondSection",
        diamondString      = "String",
        diamondMethod      = "Type",
        diamondJson        = "Type",
        diamondVariable    = "Define",
        diamondEnvVar      = "Tag",
        diamondInfo        = "Type",
        diamondHtmlTag     = "Type",
        diamondHtmlEndTag  = "Type",
        diamondError       = "Error"
    }
end
