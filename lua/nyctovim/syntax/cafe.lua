-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javio7/nvim-nyctovim #
-- #########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("cafeBase", "BASE")
    synKeyword("cafeHeaders", "HEADERS")
    synKeyword("cafeBody", "BODY")
    synKeyword("cafeBoolean", "true", "false", "null")
    synKeyword("cafeMethod", "GET", "POST", "PUT", "DELETE", "PATCH")
    synKeyword("cafeMethod", "CONNECT", "OPTIONS", "TRACE", "HEAD")
    synKeyword("cafeInfo", "STATUS", "TIME")
    synKeyword("cafeError", "ERROR")

    vim.cmd[[syn match cafeComment  '#.*$']]
    vim.cmd[[syn match cafeBrackets '[{}]']]

    vim.cmd[[syn region cafeEnvVar start="{{" end="}}"]]
    vim.cmd[[syn region cafeSection oneline start=/^\s*\~\[/ end=/\]\~/ contains=cafeBase,cafeHeaders,cafeBody]]
    vim.cmd[[syn region cafeString start=+"+ end=+"+ contains=cafeEnvVar]]
    vim.cmd[[syn region cafeVariable start="^\w" end="\s"]]
    vim.cmd[[syn region cafeHtmlTag	  start=+<[^/]+ end=+>+]]
    vim.cmd[[syn region cafeHtmlEndTag start=+</+	end=+>+]]

    vim.cmd[[syn match cafeJson	     /"\([^"]\|\\\"\)\+"[[:blank:]\r\n]*\:/]]


    linkAll{
        cafeComment     = "Comment",
        cafeBoolean     = "Boolean",
        cafeBrackets    = "Boolean",
        cafeSection     = "Boolean",
        cafeBase        = "cafeSection",
        cafeHeaders     = "cafeSection",
        cafeBody        = "cafeSection",
        cafeString      = "String",
        cafeMethod      = "Type",
        cafeJson        = "Type",
        cafeVariable    = "Define",
        cafeEnvVar      = "Tag",
        cafeInfo        = "Type",
        cafeHtmlTag     = "Type",
        cafeHtmlEndTag  = "Type",
        cafeError       = "Error"
    }
end
