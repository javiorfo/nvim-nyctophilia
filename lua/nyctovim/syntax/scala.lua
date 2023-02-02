-- #########################################################
-- # Maintainer:   Javier Orfo                             #
-- # URL:          https://github.com/javi-7/nvim-nyctovim #
-- #########################################################

local utils = require'nyctovim.utils'
local linkAll = utils.linkAll
local synKeyword = utils.synKeyword

return function()
    synKeyword("scalaExternal", "import", "package")
    synKeyword("scalaConditional", "if", "then", "else")
    synKeyword("scalaRepeat", "while", "for", "do")
    synKeyword("scalaType", "boolean", "int", "double", "byte", "short", "char", "long", "float",
        "val", "with", "var", "type", "yield")
    synKeyword("scalaStatement", "return")
    synKeyword("scalaBoolean", "true", "false")
    synKeyword("scalaConstant", "null")
    synKeyword("scalaTypeInherit", "this", "super")
    synKeyword("scalaScopeDecl", "private", "protected", "override")
    synKeyword("scalaStorageClass", "abstract", "final", "sealed")
    synKeyword("scalaExceptions", "throw", "try", "catch", "finally")
    synKeyword("scalaClassDecl", "extends")
    synKeyword("scalaTypedef", "class", "case", "trait", "match")
    synKeyword("scalaOperator", "new")

    vim.cmd [[syn match scalaTypedef		"\s*\<object\>"]]
    vim.cmd [[syn match scalaNumber		"\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"]]
    vim.cmd [[syn match scalaNumber		"\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="]]
    vim.cmd [[syn match scalaNumber		"\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"]]
    vim.cmd [[syn match scalaNumber		"\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"]]
    vim.cmd [[syn match scalaFunction	"\s*\<def\>"]]
    vim.cmd [[syn match scalaLineComment	"//.*"]]
    vim.cmd [[syn match scalaAnnotation	"\v(\w)@<!\@[[:alnum:]_.]*(:[[:alnum:]_.]*)?"]]
    vim.cmd [[syn match scalaBrackets	'[\[\]{}=]']]
    vim.cmd [[syn match scalaBrackets	' != ']]
    vim.cmd [[syn match scalaSign  		'[+*-]']]
    vim.cmd [[syn match scalaSign 		' / ']]

    vim.cmd [[syn region	scalaString	 start=+"+ end=+"+]]
    vim.cmd [[syn region	scalaComment start="/\*"	end="\*/"]]

    linkAll{
        scalaBoolean      = "Boolean",
        scalaSign         = "Boolean",
        scalaExternal     = "Type",
        scalaBrackets     = "Type",
        scalaStatement    = "Statement",
        scalaConditional  = "Conditional",
        scalaRepeat       = "Repeat",
        scalaType         = "Type",
        scalaTypedef      = "Typedef",
        scalaFunction     = "Function",
        scalaLongClass    = "Constant",
        scalaConstant     = "Constant",
        scalaScopeDecl    = "scalaStorageClass",
        scalaClassDecl    = "scalaStorageClass",
        scalaStorageClass = "scalaStorageClass",
        scalaExceptions   = "Exception",
        scalaOperator     = "Operator",
        scalaNumber       = "Number",
        scalaString       = "String",
        scalaComment      = "Comment",
        scalaLineComment  = "Comment",
        scalaAnnotation   = "Annotation",
        scalaTypeInherit  = "Boolean"
    }
end
