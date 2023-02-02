-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javi-7/nvim-nyctovim #
-- #########################################################

local utils = require'nyctovim.utils'
local linkAll = utils.linkAll
local synKeyword = utils.synKeyword

return function()
    synKeyword("ktStatement", "break", "continue", "return")
    synKeyword("ktConditional", "if", "else", "when")
    synKeyword("ktRepeat", "do", "for", "while")
    synKeyword("ktOperator", "in", "is", "by")
    synKeyword("ktKeyword", "get", "set", "out", "super", "this", "where")
    synKeyword("ktException", "try", "catch", "finally", "throw")
    synKeyword("ktInclude", "import", "package")
    synKeyword("ktModifier", "annotation", "companion", "enum", "inner", "abstract", "final", "open",
        "override", "sealed", "vararg", "dynamic", "expect", "actual", "suspend")
    synKeyword("ktStructure", "class", "object", "interface", "typealias", "fun", "val", "var", "constructor", "init")
    synKeyword("ktBoolean", "true", "false")
    synKeyword("ktConstant", "null")
    synKeyword("ktModifier", "reified", "external", "inline", "noinline", "crossinline", "data", "value",
        "tailrec", "operator", "infix", "const", "lateinit", "internal", "private", "protected", "public")
    synKeyword("ktTodo", "TODO", "FIXME", "XXX", "contained")
    synKeyword("ktIterator", "it")

    vim.cmd [[syn match ktShebang	 "\v^#!.*$"]]
    vim.cmd [[syn match ktLineComment "\v//.*$" contains=ktTodo,@Spell]]
    vim.cmd [[syn match ktAnnotation  "\v(\w)@<!\@[[:alnum:]_.]*(:[[:alnum:]_.]*)?"]]
    vim.cmd [[syn match ktLabel       "\v\w+\@"]]
    vim.cmd [[syn match ktLabel       "\v(\w)@<=\@\w+"]]
    vim.cmd [[syn match ktDocTag      "\v\@(author|constructor|receiver|return|since|suppress)>" contained]]
    vim.cmd [[syn match ktDocTag      "\v\@(exception|param|property|throws|see|sample)>\s*\S+" contains=ktDocTagParam contained]]
    vim.cmd [[syn match ktDocTagParam "\v(\s|\[)\S+" contained]]
    vim.cmd [[syn match ktComment     "/\*\*/"]]
    vim.cmd [[syn match ktEnumConst   "\<\([A-Z][A-Z0-9_]\+\)\>"]]
    vim.cmd [[syn match ktBrackets	  '[\[\]{}=]']]
    vim.cmd [[syn match ktBrackets    ' != ']]
    vim.cmd [[syn match ktSign  	  '[+*]']]
    vim.cmd [[syn match ktSign 		  ' / ']]
    vim.cmd [[syn match ktSign 		  ' - ']]
    vim.cmd [[syn match ktSign 		  ' -> ']]

    vim.cmd [[syn region ktComment    matchgroup=ktCommentMatchGroup start="/\*" end="\*/" contains=ktComment,ktTodo,@Spell]]
    vim.cmd [[syn region ktDocComment start="/\*\*" end="\*/" contains=ktDocTag,ktTodo,@Spell]]
    vim.cmd [[syn region ktString     start='"' skip='\\"' end='"']]
    vim.cmd [[syn region ktString     start='"""' end='""""*']]

    linkAll{
        ktBoolean           = "Boolean",
        ktStatement         = "Statement",
        ktConditional       = "Conditional",
        ktRepeat            = "Repeat",
        ktEnumConst         = "EnumConst",
        ktOperator          = "Operator",
        ktKeyword           = "Keyword",
        ktException         = "Exception",
        ktInclude           = "Type",
        ktBrackets          = "Type",
        ktSign              = "Boolean",
        ktModifier          = "StorageClass",
        ktStructure         = "Structure",
        ktTypedef           = "Typedef",
        ktConstant          = "Constant",
        ktTodo              = "TODO",
        ktShebang           = "Comment",
        ktLineComment       = "Comment",
        ktComment           = "Comment",
        ktCommentMatchGroup = "Comment",
        ktDocComment        = "Comment",
        ktDocTag            = "Special",
        ktDocTagParam       = "Identifier",
        ktSpecialChar       = "SpecialChar",
        ktSpecialCharError  = "Error",
        ktString            = "String",
        ktCharacter         = "Character",
        ktAnnotation        = "Annotation",
        ktLabel             = "Identifier",
        ktIterator          = "String"
    }
end
