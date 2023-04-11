local util = require'whisky.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("javaTypeDef", "this", "null")
    synKeyword("javaBoolean", "true", "false")
    synKeyword("javaLabel", "case", "default")
    synKeyword("javaError", "goto", "const")
    synKeyword("javaExternal", "package", "import")
    synKeyword("javaOperator", "new", "instanceof")
    synKeyword("javaConditional", "if", "else")
    synKeyword("javaRepeat", "for", "while", "do")
    synKeyword("javaStatement", "return", "break", "continue", "yield")
    synKeyword("javaTodo", "TODO")
    synKeyword("javaDebug", "assert")
    synKeyword("javaAccessKeyword", "public", "protected", "private", "sealed")
    synKeyword("javaException", "throw", "try", "catch", "finally")
    synKeyword("javaType", "void", "char", "byte", "short", "int", "long", "boolean", "float", "double", "var")
    synKeyword("javaStorageClass", "static", "transient", "final", "abstract", "volatile", "native", "synchronized")
    synKeyword("javaStructure", "interface", "super", "enum", "extends", "implements", "permits", "throws", "record")


    vim.cmd [[syn match   javaComment			 '//.*']]
    vim.cmd [[syn match   javaBrackets			 '[\[\]{}=]']]
    vim.cmd [[syn match   javaBrackets		     ' != ']]
    vim.cmd [[syn match   javaSign  			 '[+*-]']]
    vim.cmd [[syn match   javaSign  			 '+=']]
    vim.cmd [[syn match   javaSign  			 '-=']]
    vim.cmd [[syn match   javaSign  			 '*=']]
    vim.cmd [[syn match   javaSign  			 '/=']]
    vim.cmd [[syn match   javaSign  			 '<=']]
    vim.cmd [[syn match   javaSign  			 '>=']]
    vim.cmd [[syn match   javaSign 			     ' / ']]
    vim.cmd [[syn match   javaSign 			     ' -> ']]
    vim.cmd [[syn match   javaTodo			     "\v<(TODO|FIXME)" containedin=ALL]]
    vim.cmd [[syn match   javaString			 '\v"%([^\\"]|\\.)*"']]
    vim.cmd [[syn match   javaAnnotation		 "\v(\w)@<!\@[[:alnum:]_.]*(:[[:alnum:]_.]*)?"]]
    vim.cmd [[syn match   javaDotClass         "\.class"]]
--     vim.cmd [[syn match   javaClass            "[^\.]class[[:space:]_.]"]]
    vim.cmd [[syn match   javaClass            "class[[:space:]_.]"]]
    vim.cmd [[syn match   javaEnumConst        "\<\([A-Z][A-Z0-9_]\+\)\>"]]

    vim.cmd [[syn region  javaComment			 start='/\*' end='\*/']]
    vim.cmd [[syn region  javaString			 start='"""\s*$' end='"""']]

    linkAll{
        javaBoolean       = "Boolean",
        javaExternal      = "Type",
        javaClass         = "Type",
        javaComment       = "Comment",
        javaBrackets      = "Type",
        javaSign          = "Type",
        javaDotClass      = "Boolean",
        javaEnumConst     = "EnumConst",
        javaAnnotation    = "Annotation",
        javaTypeDef       = "Boolean",
        javaType          = "Type",
        javaAccessKeyword = "javaExternal",
        javaStorageClass  = "javaExternal",
        javaStructure     = "javaExternal",
        javaTodo          = "TODO",
        javaStatement     = "Statement",
        javaConditional   = "Conditional",
        javaOperator      = "Operator",
        javaRepeat        = "Repeat",
        javaLabel         = "Label",
        javaString        = "String",
        javaException     = "Type",
        javaDebug         = "Type"
    }
end
