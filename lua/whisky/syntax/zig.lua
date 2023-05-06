local util = require'whisky.util'
local linkAll = util.linkAll

linkAll {
    zigBoolean   = "Boolean",
    zigNull      = "zigType",
    zigStructure = "Type",
    zigKeyword   = "Type",
    zigVarDecl   = "Type",
    zigBuiltinFn = "Annotation",
    zigType      = "Boolean",
}
