" Language: Skript
" Maintainer: mikroskeem
" License: MIT

if exists("b:current_syntax") && b:current_syntax == 'skript'
  finish
endif

" Identifiers/special variables
syn match skriptIdentifiers "%[a-z].*%"

" Numbers
syn match skriptNumber "\v<\d+>"

" Strings
syn match skriptMcColors "&[a-z0-9]"
syn region skriptString start=/"/ end=/"/ contains=skriptMcColors,skriptIdentifiers

" Comments
syn keyword skriptTodo contained TODO NOTE BUG FIXME
syn match skriptComment "#.*$" contains=skriptTodo


" Basic keywords
syn keyword skriptKeywords if else is has from
syn keyword skriptKeywords set named
syn keyword skriptKeywords trigger usage description

" Special keywords
syn keyword skriptSpecialKeywords spawn permission loop message title subtitle seconds second minute minutes hours hour days day months month years year
syn match skriptSpecialKeywords "all players"

" Data Types
syn keyword skriptDataTypes String Number Boolean List Location Entity Player Block Inventory Item Effect Expression string number boolean list location entity player block inventory item effect expression

" Booleans
syn keyword skriptBoolean true false add remove than
syn match skriptBracket "("
syn match skriptBracket ")"

" Functions
syn keyword skriptFunctions teleport give hide send while function stop to less more
syn match skriptFunctions ":"
syn match skriptFunctions ","

" Events
syn match skriptEventBase "^on " nextgroup=skriptEvent
syn match skriptEvent "[a-z].*" contained nextgroup=skriptEventEnd
syn match skriptEventEnd ":" contained


" Commands
syn match skriptCommandBase "^command " nextgroup=skriptCommandName
syn match skriptCommandName "\/[a-z].* " contained nextgroup=skriptCommandArguments
syn match skriptCommandArguments "<[a-z].*>" contained nextgroup=skriptCommandEnd
syn match skriptCommandEnd ":" contained

" skript variable shit
syn match skVariable /{[^}].*}*/
syn region skVariableTop start="{" end="}"
syn region skVariableCon start="{" end="}"
syn region skVariableAll matchgroup=skVariableAll start="{" end="}" contains=skVariableTop

hi def link skVariable Identifier
hi def link skVariableCon Keyword
hi def link skVariableAll Keyword
hi def link skVariableTop Keyword

hi def link skriptDataTypes Type
hi def link skriptBracket Constant
hi def link skriptEventBase Statement
hi def link skriptEvent Function
hi def link skriptEventEnd Normal

hi def link skriptCommandBase Statement
hi def link skriptCommandName Function
hi def link skriptCommandArguments Boolean
hi def link skriptCommandEnd Normal


hi def link skriptMcColors Define
hi def link skriptIdentifiers Identifier
hi def link skriptNumber Number
hi def link skriptString String
hi def link skriptComment Comment
hi def link skriptKeywords Statement
hi def link skriptSpecialKeywords Type
hi def link skriptBoolean Boolean
hi def link skriptFunctions Function
hi def link skriptTodo Todo

if !exists('b:current_syntax')
  let b:current_syntax = 'skript'
endif

