local linkAll = require'nyctophilia.util'.linkAll

linkAll {
    goDeclaration  = "Type",
    goVar          = "Type",
    goConst        = "Type",
    goBlock        = "Type",
    goBraces       = "Type",
    goOperator     = "Type",
    goDeclType     = "Type",
    goType         = "Boolean",
    goSignedInts   = "goType",
    goUnsignedInts = "goType",
    goFloats       = "goType",
    goComplexes    = "goType",
    goImportString = "Annotation"
}

vim.g.go_highlight_operators = 1
