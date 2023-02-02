-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javi-7/nvim-nyctovim #
-- #########################################################

local utils = require'nyctovim.utils'
local linkAll = utils.linkAll
local synKeyword = utils.synKeyword

return function()
    synKeyword("vurlBase", "BASE")
    synKeyword("vurlHeaders", "HEADERS")
    synKeyword("vurlBody", "BODY")
    synKeyword("vurlBoolean", "true", "false", "null")
    synKeyword("vurlMethod", "GET", "POST", "PUT", "DELETE", "PATCH")
    synKeyword("vurlMethod", "CONNECT", "OPTIONS", "TRACE", "HEAD")
    synKeyword("vurlInfo", "STATUS", "TIME")
    synKeyword("vurlError", "ERROR")

    vim.cmd[[syn match vurlComment  '#.*$']]
    vim.cmd[[syn match vurlBrackets '[{}]']]

    vim.cmd[[syn region vurlEnvVar start="{{" end="}}"]]
    vim.cmd[[syn region vurlSection oneline start=/^\s*\~\[/ end=/\]\~/ contains=vurlBase,vurlHeaders,vurlBody]]
    vim.cmd[[syn region vurlString start=+"+ end=+"+ contains=vurlEnvVar]]
    vim.cmd[[syn region vurlVariable start="^\w" end="\s"]]
    vim.cmd[[syn region vurlHtmlTag	  start=+<[^/]+ end=+>+]]
    vim.cmd[[syn region vurlHtmlEndTag start=+</+	end=+>+]]

    vim.cmd[[syn match vurlJson	     /"\([^"]\|\\\"\)\+"[[:blank:]\r\n]*\:/]]


    linkAll{
        vurlComment     = "Comment",
        vurlBoolean     = "Boolean",
        vurlBrackets    = "Boolean",
        vurlSection     = "Boolean",
        vurlBase        = "vurlSection",
        vurlHeaders     = "vurlSection",
        vurlBody        = "vurlSection",
        vurlString      = "String",
        vurlMethod      = "Type",
        vurlJson        = "Type",
        vurlVariable    = "Define",
        vurlEnvVar      = "Tag",
        vurlInfo        = "Type",
        vurlHtmlTag     = "Type",
        vurlHtmlEndTag  = "Type",
        vurlError       = "Error"
    }
end
