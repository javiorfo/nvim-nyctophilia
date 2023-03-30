-- #######################################################
-- # Maintainer: Javier Orfo                             #
-- # URL:        https://github.com/javiorfo/nvim-whisky #
-- #######################################################

local util = require'whisky.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("ronKeyword", "None", "Some")
    synKeyword("ronBoolean", "true", "false")
    synKeyword("ronTodo", "TODO", "FIXME", "XXX", "BUG", "contained")

    vim.cmd[[syn match  ronComment /\/\/.*/ contains=ronTodo]]
    vim.cmd[[syn region ronComment start="/\*" end="\*/" fold extend contains=ronTodo,ronComment]]
    vim.cmd[[syn region ronString oneline start=/"/ skip=/\\\\\|\\"/ end=/"/]]
    vim.cmd[[syn region ronString start='r\z(#*\)"' end='"\z1']]
    vim.cmd[[syn match   ronBraces			 '[\[\]{}=\(\)]']]
    vim.cmd[[syn match ronKey /\<\w\+\ze:/ display]]
    vim.cmd[[syn region ronAttribute start="#!\?\[" end="\]"]]

    linkAll{
        ronBoolean   = "Boolean",
        ronKeyword   = "Boolean",
        ronAttribute = "Annotation",
        ronComment   = "Comment",
        ronBraces    = "Type",
        ronTodo      = "TODO",
        ronKey       = "Special",
        ronString    = "String"
    }
end
