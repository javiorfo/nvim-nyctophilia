-- ####################################################
-- # Maintainer:   Javier Orfo                        #
-- # URL:          https://github.com/javi-7/nvim-poe #
-- ####################################################

local utils = require'poe.utils'
local linkAll = utils.linkAll
local synKeyword = utils.synKeyword

return function()
    synKeyword("sqlSpecial", "false", "null", "true")
    synKeyword("sqlKeyword", "access", "add", "after", "aggregate", "as", "asc", "authorization")
    synKeyword("sqlKeyword", "begin", "by", "cache", "cascade", "check", "cluster", "collate")
    synKeyword("sqlKeyword", "collation", "column", "compress", "conflict", "connect", "connection", "constraint")
    synKeyword("sqlKeyword", "current", "cursor", "database", "debug", "decimal", "default", "desc")
    synKeyword("sqlKeyword", "each", "else", "elseif", "escape", "exception", "exclusive", "explain")
    synKeyword("sqlKeyword", "external", "file", "for", "foreign", "from", "function", "group")
    synKeyword("sqlKeyword", "having", "identified", "if", "immediate", "increment", "index", "initial")
    synKeyword("sqlKeyword", "inner", "into", "is", "join", "key", "left", "level", "create")
    synKeyword("sqlKeyword", "loop", "maxextents", "mode", "modify", "nocompress", "nowait", "object")
    synKeyword("sqlKeyword", "of", "offline", "on", "online", "option", "order", "outer")
    synKeyword("sqlKeyword", "pctfree", "primary", "privileges", "procedure", "public", "references", "referencing")
    synKeyword("sqlKeyword", "release", "resource", "return", "role", "row", "rowid", "rowlabel")
    synKeyword("sqlKeyword", "rownum", "rows", "schema", "session", "share", "size", "start")
    synKeyword("sqlKeyword", "successful", "synonym", "then", "to", "transaction", "trigger", "uid")
    synKeyword("sqlKeyword", "user", "using", "validate", "values", "view", "virtual", "whenever")
    synKeyword("sqlKeyword", "where", "with", "auto_vaccum", "automatic_index", "cache_size")
    synKeyword("sqlKeyword", "case_sensitive_like", "checkpoit_fullfsync", "collation_list", "compile_options")
    synKeyword("sqlKeyword", "count_changes", "default_cache_size", "database_list", "empty_result_callbacks", "encoding"
        , "foreign_key_list")
    synKeyword("sqlKeyword", "freelist", "full", "names", "ignore", "constraints", "incremental_vacuum", "index_info")
    synKeyword("sqlKeyword", "index_list", "integrity_check", "journal_mode", "journal_size_limit", "page_count",
        "page_size", "parser_trace")
    synKeyword("sqlKeyword", "quick_check", "integrity_check", "journal_mode", "journal_size_limit", "page_count",
        "page_size", "parser_trace")
    synKeyword("sqlKeyword", "read_uncommitted", "recursive_triggers", "reverse_unordered_selects",
        "schema_version", "secure_delete", "short_column_names", "synchronous", "freelist_count", "foreign_keys")
    synKeyword("sqlKeyword", "table_info", "temp_store", "temp_store_directory", "user_version", "vdbe_listing",
        "vdbe_trace")
    synKeyword("sqlKeyword", "wal_autocheckpoint", "wal_checkpoint", "writable_schema", "user_version", "vdbe_listing",
        "vdbe_trace")
    synKeyword("sqlOperator", "all", "and", "any", "between", "case", "distinct", "elif", "else", "end")
    synKeyword("sqlOperator", "exit", "exists", "if", "in", "intersect", "is", "like", "match", "matches")
    synKeyword("sqlOperator", "minus", "not", "or", "out", "prior", "regexp", "some", "then", "union")
    synKeyword("sqlOperator", "unique", "when")
    synKeyword("sqlStatement", "alter", "analyze", "audit", "begin", "comment", "commit", "delete", "drop", "execute")
    synKeyword("sqlStatement", "explain", "grant", "insert", "lock", "noaudit", "rename", "revoke", "rollback",
        "savepoint")
    synKeyword("sqlStatement", "select", "truncate", "update", "vacuum", "attach", "detach", "indexed", "pragma",
        "reindex")
    synKeyword("sqlTodo", "DEBUG", "FIXME", "NOTE", "TODO", "XXX")
    synKeyword("sqlType", "bigint", "bit", "blob", "bool", "boolean", "byte", "char", "clob")
    synKeyword("sqlType", "date", "datetime", "dec", "decimal", "enum", "float", "int", "int8")
    synKeyword("sqlType", "integer", "interval", "long", "longblob", "longtext", "lvarchar", "mediumblob",
        "mediumint")
    synKeyword("sqlType", "mediumtext", "mlslabel", "money", "multiset", "nchar", "number", "numeric",
        "nvarchar")
    synKeyword("sqlType", "raw", "real", "serial", "serial8", "set", "smallfloat", "smallint", "text",
        "year")
    synKeyword("sqlType", "time", "timestamp", "tinyblob", "tinyint", "tinytext", "varchar", "varchar2",
        "varray")
    synKeyword("sqlType", "to", "minute", "hour", "second", "fraction")


    vim.cmd[[syn match sqlType    contained "\<\(character\|double\|varying\)\>"]]
    vim.cmd[[syn match sqlType    contained "\<character\s\+varying\>"]]
    vim.cmd[[syn match sqlType    contained "\<double\s\+precision\>"]]
    vim.cmd[[syn match sqlKeyword "\<prompt\>"]]
    vim.cmd[[syn match sqlKeyword "\<glob\>"]]
    vim.cmd[[syn match sqlKeyword "\<table\>"]]
    vim.cmd[[syn match sqlComment "--.*$" contains=sqlTodo]]
    vim.cmd[[syn match sqlComment "\(^\|\s\)rem.*$" contains=sqlTodo]]

    vim.cmd[[syn region sqlString  start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=sqlVariable]]
    vim.cmd[[syn region sqlString  start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=sqlVariable]]
    vim.cmd[[syn region sqlString  start=+`+ skip=+\\\\\|\\`+ end=+`+ contains=sqlVariable]]
    vim.cmd[[syn region sqlComment start="/\*"  end="\*/" contains=sqlTodo]]

    linkAll{
        sqlKeyword   = "Type",
        sqlSpecial   = "Boolean",
        sqlType      = "Type",
        sqlString    = "String",
        sqlComment   = "Comment",
        sqlTodo      = "TODO",
        sqlOperator  = "Operator",
        sqlStatement = "Statement"
    }
end
