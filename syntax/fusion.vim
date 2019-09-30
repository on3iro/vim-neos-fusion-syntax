if exists("b:current_syntax")
    finish
endif

" Keywords
syn match fusionKeyword "@\(process\|if\|context\|apply\|cache\)"
syn keyword fusionKeyword $
syn keyword fusionInclude include namespace
syn keyword fusionPrototype prototype
syn keyword fusionFunction afx


" Blocks
highlight link fusionType Constant

" Comments
syn keyword fusionTodo contained TODO FIXME
syn region fusionComment start=+//+ end=/$/ contains=fusionTodo extend keepend
syn region fusionComment start=+#+ end=/$/ contains=fusionTodo extend keepend


" Operators
syn match fusionOpSymbols "=\{1,3}\|!==\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-="

" Delimiters
syn match fusionSeparator "\."
syn match fusionSeparator "\:"
syn match fusionParens "[()]"

" Strings
syn region fusionString start=/\v"/ skip=/\v\\./ end=/\v"/
syn region fusionString start=/\v'/ skip=/\v\\./ end=/\v'/

" numbers
syn match fusionNumber "-\=\<\d[0-9_]*L\=\>"
syn match fusionNumber "-\=\<0[xX][0-9a-fA-F][0-9a-fA-F_]*\>"
syn match fusionNumber "-\=\<0[bB][01][01_]*\>"
syn match fusionNumber "-\=\<0[oO]\o[0-7_]*\>"

" Afx
" FIXME
syn region fusionAfxBlock start=/\v`/ skip=/\v\\./ end=/\v`/

" Debug
syn match fusionDebug "Neos.Fusion:Debug"


highlight link fusionTodo Todo

highlight link fusionPrototype Function
highlight link fusionFunction Function

highlight link fusionKeyword Keyword

highlight link fusionParens Operator
highlight link fusionOpSymbols Operator

highlight link fusionComment Comment

highlight link fusionSeparator Delimiter

highlight link fusionString String
highlight link fusionAfxBlock String

highlight link fusionNumber Number

highlight link fusionInclude Include

highlight link fusionDebug Debug

let b:current_syntax = "fusion"
