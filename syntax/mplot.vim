if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword MplotKeyword s sep skip t xl yl y w h f font fo dpi ct t xl x xf xr yr l lw tf g time comma csv out output line lines xlabel ylabel cmd ws circle upperleft upperright ul ur filledcircle fcircle fillcircle top right
syntax keyword MplotConstant tab o + - , isodate grid g
syntax keyword MplotColors red blue green ccblue ccgray ccmaroon ccgreen ccyellow

syntax region MplotComment start="{-" end="-}"
syntax region MplotString start=/"/ end=/"/ skip=/\\"/


" Integer number.
" syn match  AxonNumber display "[+-]\=\<\d\+\>"
" Floating point number.
" syn match  AxonFloat display "[+-]\=\<\d\+\.\d+\>"

highlight link MplotKeyword Keyword
highlight link MplotComment Comment
highlight link MplotConstant Constant
highlight link MplotColors Constant
highlight link MplotString String

let b:current_syntax="mplot"
