if exists("b:current_syntax")
    finish
endif

syn match fusionKeyword "@\(process\|if\|context\|apply\|cache\)"
syn keyword fusionKeyword include namespace $
syn keyword fusionFunction prototype afx
syn match fusionParens "[()]"
syn match fusionComment "\v//.*$"
syn match fusionOpSymbols "=\{1,3}\|!==\|!=\|<\|>\|>=\|<=\|++\|+=\|--\|-="
syn match fusionSeparator "\."
syn match fusionSeparator "\:"
syn region fusionString start=/\v"/ skip=/\v\\./ end=/\v"/
syn match fusionNumber "-\=\<\d[0-9_]*L\=\>"
syn match fusionNumber "-\=\<0[xX][0-9a-fA-F][0-9a-fA-F_]*\>"
syn match fusionNumber "-\=\<0[bB][01][01_]*\>"
syn match fusionNumber "-\=\<0[oO]\o[0-7_]*\>"
syn region fusionAfxBlock start=/\v`/ skip=/\v\\./ end=/\v`/


" TODO
" syn match fusionType ""

" TODO
" - TODO comment
" - Nodenames
" - properties
" - strings
" - numbers
" - afx tags and content

highlight link fusionKeyword Keyword
highlight link fusionFunction Function
highlight link fusionParens Operator
highlight link fusionOpSymbols Operator
highlight link fusionComment Comment
highlight link fusionSeparator Delimiter
highlight link fusionString String
highlight link fusionNumber Number
highlight link fusionAfxBlock String

let b:current_syntax = "fusion"
