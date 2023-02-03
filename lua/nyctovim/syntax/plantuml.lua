-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javio7/nvim-nyctovim #
-- #########################################################

local util = require'nyctovim.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("pumlKeywordClass", "abstract", "class", "annotation", "circle", "diamond", "entity", "enum", "interface"
        ,
        "protocol", "struct", "int", "void", "long", "boolean", "static", "hide", "show")
    synKeyword("pumlKeywordSequence", "actor", "boundary", "control", "database", "collections")
    synKeyword("pumlKeywordUseCase", "usecase", "as", "skinparam", "actorStyle", "rectangle", "package")
    synKeyword("pumlKeywordObjects", "object", "map", "table", "json")
    synKeyword("pumlKeywordComponent", "component", "folder", "frame", "node", "cloud", "restore", "remove",
        "allowmixing")
    synKeyword("pumlKeywordState", "agent", "artifact", "card", "file", "person", "queue", "stack", "storage", "hexagon")
    synKeyword("pumlKeywordActivity", "start", "end", "if", "else", "endif", "stop", "elseif", "switch", "case",
        "endswitch",
        "then", "repeat", "while", "goto", "break", "endwhile", "fork", "split", "hidden", "floating")
    synKeyword("pumlKeywordActivityFinal", "detach", "kill")
    synKeyword("pumlKeywordActivityError", "error")

    vim.cmd [[syn match pumlStartEnd    "\%(^@startuml\|^@enduml\)"]]
    vim.cmd [[syn match pumlLeftToRight "left to right direction"]]
    vim.cmd [[syn match pumlNoteOf      "\%(^note left of\|^note right of\|^note top of\|^note bottom of\)"]]
    vim.cmd [[syn match pumlBrackets	'[\[\]{}=]']]
    vim.cmd [[syn match pumlSign  		'[+*-]']]
    vim.cmd [[syn match pumlSign 		' / ']]

    vim.cmd [[syn region pumlString start='"' end='"']]

    linkAll{
        pumlStartEnd             = "Boolean",
        pumlLeftToRight          = "Boolean",
        pumlNoteOf               = "Boolean",
        pumlBrackets             = "Type",
        pumlSign                 = "Boolean",
        pumlKeywordClass         = "Type",
        pumlKeywordSequence      = "Type",
        pumlKeywordState         = "Type",
        pumlKeywordComponent     = "Type",
        pumlKeywordActivity      = "Type",
        pumlKeywordActivityFinal = "Boolean",
        pumlKeywordActivityError = "ErrorMsg",
        pumlKeywordObjects       = "Type",
        pumlKeywordUseCase       = "Type",
        pumlString               = "String"
    }
end
