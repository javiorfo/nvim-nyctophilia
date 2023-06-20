local linkAll = require'nyctophilia.util'.linkAll

linkAll {
    goDeclaration  = "Type",
    goVar          = "Type",
    goBlock        = "Type",
    goOperator     = "Type",
    goType         = "Boolean",
    goSignedInts   = "goType",
    goUnsignedInts = "goType",
    goFloats       = "goType",
    goComplexes    = "goType"
}

vim.g.go_highlight_operators = 1
