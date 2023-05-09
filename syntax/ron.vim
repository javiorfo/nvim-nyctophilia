if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "ron"

" Keyword
syn keyword ronKeyword None Some
syn keyword ronBoolean true false
syn keyword ronTodo    TODO FIXME XXX BUG contained

syn match  ronComment   /\/\/.*/ contains=ronTodo
syn region ronComment   start="/\*" end="\*/" fold extend contains=ronTodo,ronComment
syn region ronString    oneline start=/"/ skip=/\\\\\|\\"/ end=/"/
syn region ronString    start='r\z(#*\)"' end='"\z1'
syn match  ronBraces	'[\[\]{}=\(\)]'
syn match  ronKey       /\<\w\+\ze:/ display
syn region ronAttribute start="#!\?\[" end="\]"

hi link ronBoolean   Boolean
hi link ronKeyword   Boolean
hi link ronAttribute Annotation
hi link ronComment   Comment
hi link ronBraces    Type
hi link ronTodo      TODO
hi link ronKey       Special
hi link ronString    String
