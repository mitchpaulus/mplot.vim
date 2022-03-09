if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword MplotKeyword s sep skip t xl yl
" syntax region AxonComment start="\/\/" end="$"
" syntax region AxonComment start=/\/\*/ end=/\*\//
syntax region MplotString start=/"/ end=/"/ skip=/\\"/
" syntax match AxonDate display "[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]"

" Integer number.
" syn match  AxonNumber display "[+-]\=\<\d\+\>"
" Floating point number.
" syn match  AxonFloat display "[+-]\=\<\d\+\.\d+\>"

highlight link MplotKeyword Keyword
" highlight link AxonBoolean Boolean
" highlight link AxonException Exception
" highlight link AxonKeyword Keyword
" highlight link AxonComment Comment
" highlight link AxonNull Type
highlight link MplotString String
" highlight link AxonDate Constant
" highlight link AxonNumber Number
" highlight link AxonFloat Float

let b:current_syntax="mplot"
