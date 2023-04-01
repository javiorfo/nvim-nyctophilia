-- #######################################################
-- # Maintainer: Javier Orfo                             #
-- # URL:        https://github.com/javiorfo/nvim-whisky #
-- #######################################################

local util = require'whisky.util'
local linkAll = util.linkAll
local synKeyword = util.synKeyword

return function()
    synKeyword("rustConditional", "match", "if", "else")
    synKeyword("rustRepeat", "loop", "while", "for", "in")
    synKeyword("rustTypedef", "type", "as", "use", "await", "pub", "extern")
    synKeyword("rustStructure", "struct", "enum", "union", "existencial")
    synKeyword("rustKeyword", "break", "box", "continue", "crate", "impl", "let", "macro", "return", "yield", "super",
        "where", "unsafe", "fn", "dyn")
    synKeyword("rustKeyword", "mod", "trait", "await")
    synKeyword("rustStorage", "move", "mut", "ref", "static", "const")
    synKeyword("rustKeyword", "become", "do", "priv", "typeof", "unsized", "abstract", "virtual", "final", "override")
    synKeyword("rustType", "isize", "usize", "char", "bool", "u8", "u16", "u32", "u64", "u128", "f32")
    synKeyword("rustType", "f64", "i8", "i16", "i32", "i128", "i64", "str", "Self")
    synKeyword("rustEnum", "Ok", "Err")
    synKeyword("rustSelf", "self")
    synKeyword("rustBoolean", "true", "false")
    synKeyword("rustTodo", "contained", "TODO", "FIXME", "XXX", "NB", "NOTE", "SAFETY")

    vim.cmd [[syn match rustStringContinuation display contained /\\\n\s*/]]
    vim.cmd [[syn match rustBrackets			                 '[\[\]{}=]']]
    vim.cmd [[syn match rustBrackets			                 ' => ']]
    vim.cmd [[syn match rustBrackets			                 ' != ']]
    vim.cmd [[syn match rustSign  			                     '[+*-]']]
    vim.cmd [[syn match rustSign 			                     ' / ']]
    vim.cmd [[syn match rustSign  			                     '+=']]
    vim.cmd [[syn match rustSign  			                     '-=']]
    vim.cmd [[syn match rustSign  			                     '*=']]
    vim.cmd [[syn match rustSign  			                     '/=']]
    vim.cmd [[syn match rustSign  			                     '->']]
    vim.cmd [[syn match rustEnumConst        "\<\([A-Z][A-Z0-9_]\+\)\>"]]

    vim.cmd [[syn region rustString matchgroup=rustStringDelimiter start=+b"+ skip=+\\\\\|\\"+ end=+"+ ]]
    vim.cmd [[syn region rustString matchgroup=rustStringDelimiter start=+"+ skip=+\\\\\|\\"+ end=+"+ ]]
    vim.cmd [[syn region rustString matchgroup=rustStringDelimiter start='b\?r\z(#*\)"' end='"\z1' ]]

    vim.cmd [[syn region rustMacroParam start="(" end=")" contains=rustString]]
    vim.cmd [[syn region rustMacro  start="#\[" end="\]" contains=rustMacroParam ]]

    vim.cmd [[syn region rustCommentLine                                                  start="//"                      end="$"   contains=rustTodo]]
    vim.cmd [[syn region rustCommentLineDoc                                               start="//\%(//\@!\|!\)"         end="$"   contains=rustTodo]]
    vim.cmd [[syn region rustCommentLineDocError                                          start="//\%(//\@!\|!\)"         end="$"   contains=rustTodo]]
    vim.cmd [[syn region rustCommentBlock             matchgroup=rustCommentBlock         start="/\*\%(!\|\*[*/]\@!\)\@!" end="\*/" contains=rustTodo]]
    vim.cmd [[syn region rustCommentBlockDoc          matchgroup=rustCommentBlockDoc      start="/\*\%(!\|\*[*/]\@!\)"    end="\*/" contains=rustTodo]]
    vim.cmd [[syn region rustCommentBlockDocError     matchgroup=rustCommentBlockDocError start="/\*\%(!\|\*[*/]\@!\)"    end="\*/" contains=rustTodo]]
    vim.cmd [[syn region rustCommentBlockNest         matchgroup=rustCommentBlock         start="/\*"                     end="\*/" contains=rustTodo]]
    vim.cmd [[syn region rustCommentBlockDocNest      matchgroup=rustCommentBlockDoc      start="/\*"                     end="\*/" contains=rustTodo]]
    vim.cmd [[syn region rustCommentBlockDocNestError matchgroup=rustCommentBlockDocError start="/\*"                     end="\*/" contains=rustTodo]]

    linkAll{
        rustStringContinuation   = "Special",
        rustString               = "String",
        rustStringDelimiter      = "String",
        rustBoolean              = "Boolean",
        rustSign                 = "Boolean",
        rustEnum                 = "Constant",
        rustEnumConst            = "EnumConst",
        rustSelf                 = "Constant",
        rustKeyword              = "Type",
        rustBrackets             = "Type",
        rustOperator             = "Operator",
        rustTypedef              = "Type",
        rustStructure            = "Type",
        rustRepeat               = "Conditional",
        rustConditional          = "Conditional",
        rustIdentifier           = "Identifier",
        rustMacro                = "Annotation",
        rustMacroParam           = "NormalItalic",
        rustType                 = "Boolean",
        rustTodo                 = "TODO",
        rustStorage              = "StorageClass",
        rustCommentLine          = "Comment",
        rustCommentLineDoc       = "SpecialComment",
        rustCommentLineDocLeader = "rustCommentLineDoc",
        rustCommentLineDocError  = "Error",
        rustCommentBlock         = "rustCommentLine",
        rustCommentBlockDoc      = "rustCommentLineDoc",
        rustCommentBlockDocStar  = "rustCommentBlockDoc",
        rustCommentBlockDocError = "Error",
        rustCommentDocCodeFence  = "rustCommentLineDoc",
    }
end
