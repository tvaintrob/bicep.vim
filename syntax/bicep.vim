" bicep syntax

if exists("b:current_syntax")
    finish
end

syn match bicepString '\'.*\''
syn match bicepComment '//.*$'
syn match bicepDecorator '\i\+' contained
syn match bicepIdentifier '\i\+' contained

syn keyword bicepTypes string number
syn keyword bicepBuiltIn az sys
syn keyword bicepLiteral true false null
syn keyword bicepKeyword targetScope resource module param var output nextgroup=bicepIdentifier skipwhite
syn keyword bicepControllFlow for in if existing import from

syn region bicepDecoratorName start="@" end="[\($]" transparent contains=bicepDecorator

let b:current_syntax = "bicep"

hi def link bicepTypes Type
hi def link bicepString String
hi def link bicepComment Comment
hi def link bicepLiteral Boolean
hi def link bicepKeyword Statement
hi def link bicepBuiltIn Constant
hi def link bicepDecorator Function
hi def link bicepIdentifier Identifier
