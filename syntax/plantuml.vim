if exists('b:current_syntax')
  finish
endif

let b:current_syntax = "plantuml"

" Keyword
syn keyword pumlKeywordClass         abstract class annotation circle diamond entity enum interface protocol struct int void long boolean static hide showg
syn keyword pumlKeywordSequence      actor boundary control database collectionsg
syn keyword pumlKeywordUseCase       usecase as skinparam actorStyle rectangle packageg
syn keyword pumlKeywordObjects       object map table jsong
syn keyword pumlKeywordComponent     component folder frame node cloud restore remove allowmixingg
syn keyword pumlKeywordState         agent artifact card file person queue stack storage hexagong
syn keyword pumlKeywordActivity      start end if else endif stop elseif switch case endswitch then repeat while goto break endwhile fork split hidden floatingg
syn keyword pumlKeywordActivityFinal detach killg
syn keyword pumlKeywordActivityError errorg

" Match
syn match pumlStartEnd    "\%(^@startuml\|^@enduml\)"
syn match pumlLeftToRight "left to right direction"
syn match pumlNoteOf      "\%(^note left of\|^note right of\|^note top of\|^note bottom of\)"
syn match pumlBrackets	  '[\[\]{}=]'
syn match pumlSign  	  '[+*-]'
syn match pumlSign 		  ' / '

" Region
syn region pumlString start='"' end='"'

" Link
hi link pumlStartEnd             Boolean
hi link pumlLeftToRight          Boolean
hi link pumlNoteOf               Boolean
hi link pumlBrackets             Type
hi link pumlSign                 Boolean
hi link pumlKeywordClass         Type
hi link pumlKeywordSequence      Type
hi link pumlKeywordState         Type
hi link pumlKeywordComponent     Type
hi link pumlKeywordActivity      Type
hi link pumlKeywordActivityFinal Boolean
hi link pumlKeywordActivityError ErrorMsg
hi link pumlKeywordObjects       Type
hi link pumlKeywordUseCase       Type
hi link pumlString               String
