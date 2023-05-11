if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "java"

" Keyword
syn keyword javaTypeDef       this null
syn keyword javaBoolean       true false
syn keyword javaLabel         case default
syn keyword javaError         goto const
syn keyword javaExternal      package import
syn keyword javaOperator      new instanceof
syn keyword javaConditional   if else
syn keyword javaRepeat        for while do
syn keyword javaStatement     return break continue yield
syn keyword javaTodo          TODO
syn keyword javaDebug         assert
syn keyword javaAccessKeyword public protected private sealed
syn keyword javaException     throw try catch finally
syn keyword javaType          void char byte short int long boolean float double var
syn keyword javaStorageClass  static transient final abstract volatile native synchronized
syn keyword javaStructure     interface super enum extends implements permits throws record

" Match
syn match javaComment	 '//.*'
syn match javaBrackets	 '[\[\]{}()=]'
syn match javaSign		 '!='
syn match javaSign  	 '[+*-]'
syn match javaSign  	 '+='
syn match javaSign  	 '-='
syn match javaSign  	 '*='
syn match javaSign  	 '/='
syn match javaSign  	 '<='
syn match javaSign  	 '>='
syn match javaSign 		 ' / '
syn match javaSign 		 ' -> '
syn match javaTodo		 "\v<(TODO|FIXME)" containedin=ALL
syn match javaString	 '\v"%([^\\"]|\\.)*"'
syn match javaAnnotation "\v(\w)@<!\@[[:alnum:]_.]*(:[[:alnum:]_.]*)?"
syn match javaDotClass   "\.class"
syn match javaClass      "class[[:space:]_.]"
syn match javaEnumConst  "\<\([A-Z][A-Z0-9_]\+\)\>"

" Region
syn region javaComment start='/\*' end='\*/'
syn region javaString  start='"""\s*$' end='"""'

" Link
hi link javaBoolean       Boolean
hi link javaExternal      Type
hi link javaClass         Type
hi link javaComment       Comment
hi link javaBrackets      Type
hi link javaSign          Type
hi link javaDotClass      Boolean
hi link javaEnumConst     EnumConst
hi link javaAnnotation    Annotation
hi link javaTypeDef       Boolean
hi link javaType          Type
hi link javaAccessKeyword javaExternal
hi link javaStorageClass  javaExternal
hi link javaStructure     javaExternal
hi link javaTodo          TODO
hi link javaStatement     Statement
hi link javaConditional   Conditional
hi link javaOperator      Operator
hi link javaRepeat        Repeat
hi link javaLabel         Label
hi link javaString        String
hi link javaException     Type
hi link javaDebug         Type
