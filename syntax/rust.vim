if exists('b:current_syntax')
    finish
endif

let b:current_syntax = "rust"

" Keyword
syn keyword rustConditional match if else
syn keyword rustRepeat      loop while for in
syn keyword rustTypedef     type as use await pub extern
syn keyword rustStructure   struct enum union existencial
syn keyword rustKeyword     break box continue crate impl let macro return yield super where unsafe fn dyn
syn keyword rustKeyword     mod trait await
syn keyword rustStorage     move mut ref static const
syn keyword rustKeyword     become do priv typeof unsized abstract virtual final override
syn keyword rustType        isize usize char bool u8 u16 u32 u64 u128 f32
syn keyword rustType        f64 i8 i16 i32 i128 i64 str Self
syn keyword rustEnum        Ok Err
syn keyword rustSelf        self
syn keyword rustBoolean     true false
syn keyword rustTodo        contained TODO FIXME XXX NB NOTE SAFETY

" Match
syn match rustStringContinuation display contained /\\\n\s*/
syn match rustBrackets			 '[\[\]{}()=]'
syn match rustBrackets			 ' => '
syn match rustBrackets			 ' != '
syn match rustSign  			 '[+*-]'
syn match rustSign 			     ' / '
syn match rustSign  			 '+='
syn match rustSign  			 '-='
syn match rustSign  			 '*='
syn match rustSign  			 '/='
syn match rustSign  			 '->'
syn match rustSign  			 '>='
syn match rustSign  			 '<='
syn match rustDoubleColon    	 '::'
syn match rustReference    	     '&'
syn match rustEnumConst          "\<\([A-Z][A-Z0-9_]\+\)\>"

" Region
syn region rustString              matchgroup=rustStringDelimiter start=+b"+ skip=+\\\\\|\\"+ end=+"+ 
syn region rustString              matchgroup=rustStringDelimiter start=+"+ skip=+\\\\\|\\"+ end=+"+ 
syn region rustString              matchgroup=rustStringDelimiter start='b\?r\z(#*\)"' end='"\z1' 
syn region rustMacro               start="#\[" end="\]" contains=rustString 
syn region rustCommentLine         start="//" end="$"   contains=rustTodo
syn region rustCommentLineDoc      start="//\%(//\@!\|!\)" end="$" contains=rustTodo
syn region rustCommentBlock        matchgroup=rustCommentBlock    start="/\*\%(!\|\*[*/]\@!\)\@!" end="\*/" contains=rustTodo
syn region rustCommentBlockDoc     matchgroup=rustCommentBlockDoc start="/\*\%(!\|\*[*/]\@!\)"    end="\*/" contains=rustTodo
syn region rustCommentBlockNest    matchgroup=rustCommentBlock    start="/\*"                     end="\*/" contains=rustTodo
syn region rustCommentBlockDocNest matchgroup=rustCommentBlockDoc start="/\*"                     end="\*/" contains=rustTodo

" Link
hi link rustStringContinuation   Special
hi link rustString               String
hi link rustStringDelimiter      String
hi link rustBoolean              Boolean
hi link rustSign                 Type
hi link rustEnum                 Constant
hi link rustEnumConst            EnumConst
hi link rustSelf                 Constant
hi link rustKeyword              Type
hi link rustBrackets             Type
hi link rustOperator             Operator
hi link rustTypedef              Type
hi link rustStructure            Type
hi link rustRepeat               Conditional
hi link rustConditional          Conditional
hi link rustIdentifier           Identifier
hi link rustMacro                Annotation
hi link rustType                 Boolean
hi link rustTodo                 TODO
hi link rustDoubleColon          Define
hi link rustReference            Type
hi link rustStorage              StorageClass
hi link rustCommentLine          Comment
hi link rustCommentLineDoc       Comment
hi link rustCommentLineDocLeader rustCommentLineDoc
hi link rustCommentBlock         rustCommentLine
hi link rustCommentBlockDoc      rustCommentLineDoc
hi link rustCommentBlockDocStar  rustCommentBlockDoc
hi link rustCommentDocCodeFence  rustCommentLineDoc
