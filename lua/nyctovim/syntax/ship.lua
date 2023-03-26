-- ###########################################################
-- # Maintainer: System Malt                                 #
-- # URL:        https://github.com/systemmalt/nvim-nyctovim #
-- ###########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("shipBase", "BASE")
    synKeyword("shipHeaders", "HEADERS")
    synKeyword("shipBody", "BODY")
    synKeyword("shipBoolean", "true", "false", "null")
    synKeyword("shipMethod", "GET", "POST", "PUT", "DELETE", "PATCH")
    synKeyword("shipMethod", "CONNECT", "OPTIONS", "TRACE", "HEAD")
    synKeyword("shipInfo", "STATUS", "TIME")
    synKeyword("shipError", "ERROR")

    vim.cmd[[syn match shipComment  '#.*$']]
    vim.cmd[[syn match shipBrackets '[{}]']]

    vim.cmd[[syn region shipEnvVar start="{{" end="}}"]]
    vim.cmd[[syn region shipSection oneline start=/^\s*\~\[/ end=/\]\~/ contains=shipBase,shipHeaders,shipBody]]
    vim.cmd[[syn region shipString start=+"+ end=+"+ contains=shipEnvVar]]
    vim.cmd[[syn region shipVariable start="^\w" end="\s"]]
    vim.cmd[[syn region shipHtmlTag	  start=+<[^/]+ end=+>+]]
    vim.cmd[[syn region shipHtmlEndTag start=+</+	end=+>+]]

    vim.cmd[[syn match shipJson	     /"\([^"]\|\\\"\)\+"[[:blank:]\r\n]*\:/]]


    linkAll{
        shipComment     = "Comment",
        shipBoolean     = "Boolean",
        shipBrackets    = "Boolean",
        shipSection     = "Boolean",
        shipBase        = "shipSection",
        shipHeaders     = "shipSection",
        shipBody        = "shipSection",
        shipString      = "String",
        shipMethod      = "Type",
        shipJson        = "Type",
        shipVariable    = "Define",
        shipEnvVar      = "Tag",
        shipInfo        = "Type",
        shipHtmlTag     = "Type",
        shipHtmlEndTag  = "Type",
        shipError       = "Error"
    }
end
