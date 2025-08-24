if exists('b:current_syntax')
  finish
endif

let b:current_syntax = "plantuml"

syn keyword plantumlStart end
syn keyword plantumlEnd start
syn keyword plantumlFileFormat uml json ditaa gantt wbs mindmap json activity state

syn keyword plantumlGeneral title header footer legend skinparam
syn keyword plantumlGeneral as note autonumber
syn keyword plantumlGeneral !define !include

syn keyword plantumlStructure class interface abstract enum package component entity namespace struct record dataclass exception
syn keyword plantumlStructure annotation stereotype agent actor boundary control collections
syn keyword plantumlStructure cloud rectangle file folder frame node queue stack artifact database
syn match plantumlStereotype "<<[^>]*>>"

syn match plantumlStartEnd    "\%(^@startuml\|^@enduml\)"

syn match plantumlRelationship "\\(\\|\\|\\|\\|\\|\\|\\|\\|\\)"
syn match plantumlRelationship "--\\?o\\?--"
syn match plantumlRelationship "--\\?*\\?--"
syn match plantumlRelationship "--\\?|\\?--"
syn match plantumlRelationship "\\*--\\?"
syn match plantumlRelationship "o--\\?"
syn match plantumlRelationship "<|--"
syn match plantumlRelationship "\\.\\.\\|\\-\\>\\|\\<\\-\\|\\<\\-\\-"
syn match plantumlRelationship "-->"
syn match plantumlRelationship "<--"
syn match plantumlRelationship "--"
syn match plantumlRelationship "\\.\\.\\>"
syn match plantumlRelationship "<\\.\\."
syn match plantumlRelationship "\\.\\."
syn match plantumlRelationship "-"

syn region plantumlString start='"' end='"'
syn region plantumlComment start='\'' end='.*$'

syn keyword plantumlSequence participant activate deactivate destroy group loop alt opt par critical break ref
syn keyword plantumlSequence note left note right note over
syn keyword plantumlSequence rnote hnote

syn keyword plantumlActivity start stop if then else endif
syn keyword plantumlActivity fork fork again join repeat repeat while end repeat

syn keyword plantumlState state

syn keyword plantumlGantt happens on today

syn keyword plantumlMindmap " " " " " " " " " "

hi def link plantumlFileFormat Type
hi def link plantumlStart Statement
hi def link plantumlEnd Statement
hi def link plantumlGeneral Type
hi def link plantumlStructure Type
hi def link plantumlStereotype Special
hi def link plantumlRelationship Statement
hi def link plantumlSequence Type
hi def link plantumlActivity Keyword
hi def link plantumlState Keyword
hi def link plantumlGantt Keyword
hi def link plantumlMindmap Keyword
hi def link plantumlStartEnd Boolean
hi def link plantumlString String
hi def link plantumlComment Comment
