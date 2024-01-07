if exists('b:current_syntax')
    finish
endif

let b:current_syntax = "kotlin"

" Keyword
syn keyword ktStatement   break continue return
syn keyword ktConditional if else when
syn keyword ktRepeat      do for while
syn keyword ktOperator    in is by out where
syn keyword ktKeyword     get set
syn keyword ktException   try catch finally throw
syn keyword ktInclude     import package
syn keyword ktModifier    annotation companion enum inner abstract final open override sealed vararg dynamic expect actual suspend
syn keyword ktStructure   class object interface typealias fun val var constructor init
syn keyword ktBoolean     true false
syn keyword ktConstant    null super this
syn keyword ktModifier    reified external inline noinline crossinline data value tailrec operator infix const lateinit internal private protected public
syn keyword ktTodo        TODO FIXME XXX contained
syn keyword ktIterator    it

" Match
syn match ktShebang	    "\v^#!.*$"
syn match ktLineComment "\v//.*$" contains=ktTodo,@Spell
syn match ktAnnotation  "\v(\w)@<!\@[[:alnum:]_.]*(:[[:alnum:]_.]*)?"
syn match ktLabel       "\v\w+\@"
syn match ktLabel       "\v(\w)@<=\@\w+"
syn match ktDocTag      "\v\@(author|constructor|receiver|return|since|suppress)>" contained
syn match ktDocTag      "\v\@(exception|param|property|throws|see|sample)>\s*\S+" contains=ktDocTagParam contained
syn match ktDocTagParam "\v(\s|\[)\S+" contained
syn match ktComment     "/\*\*/"
syn match ktEnumConst   "\<\([A-Z][A-Z0-9_]\+\)\>"
syn match ktBrackets	'[\[\]{}=]'
syn match ktSign        '!='
syn match ktSign  	    '[+*-]'
syn match ktSign  	    '+='
syn match ktSign  	    '-='
syn match ktSign  	    '*='
syn match ktSign  	    '/='
syn match ktSign  	    '<='
syn match ktSign  	    ' < '
syn match ktSign  	    '>='
syn match ktSign  	    ' > '
syn match ktSign  	    '&'
syn match ktSign  	    '|'
syn match ktSign 		' / '
syn match ktSign 		' -> '

" Region
syn region ktComment    matchgroup=ktCommentMatchGroup start="/\*" end="\*/" contains=ktComment,ktTodo,@Spell
syn region ktDocComment start="/\*\*" end="\*/" contains=ktDocTag,ktTodo,@Spell
syn region ktString     start='"' skip='\\"' end='"'
syn region ktString     start='"""' end='""""*'

" Link
hi link ktBoolean           Boolean
hi link ktStatement         Statement
hi link ktConditional       Conditional
hi link ktRepeat            Repeat
hi link ktEnumConst         EnumConst
hi link ktOperator          Operator
hi link ktKeyword           Keyword
hi link ktException         Exception
hi link ktInclude           Type
hi link ktBrackets          Type
hi link ktSign              Type
hi link ktModifier          StorageClass
hi link ktStructure         Type
hi link ktTypedef           Type
hi link ktConstant          Constant
hi link ktTodo              TODO
hi link ktShebang           Comment
hi link ktLineComment       Comment
hi link ktComment           Comment
hi link ktCommentMatchGroup Comment
hi link ktDocComment        Comment
hi link ktDocTag            Special
hi link ktDocTagParam       Identifier
hi link ktSpecialChar       SpecialChar
hi link ktSpecialCharError  Error
hi link ktString            String
hi link ktCharacter         Character
hi link ktAnnotation        Annotation
hi link ktLabel             Identifier
hi link ktIterator          String 
