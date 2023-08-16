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
    goImportString = "Annotation",
    goSingleImport = "Annotation",
    goSignedInts   = "goType",
    goUnsignedInts = "goType",
    goFloats       = "goType",
    goComplexes    = "goType"
}

vim.g.go_highlight_operators = 1
