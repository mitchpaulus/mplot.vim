if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax keyword MplotKeyword s sep skip t xl yl y w h f font fo dpi ct t xl x xf xr yr l lw tf g time comma csv out output line lines xlabel ylabel cmd ws circle upperleft upperright ul ur filledcircle fcircle fillcircle top right filter xexp yexp START Start start END End end
syntax keyword MplotKeyword rgb plus xrange yrange legendrows legendcols
syntax keyword MplotConstant tab o + - , isodate grid g
syntax keyword MplotColors red blue green ccblue ccgray ccmaroon ccgreen ccyellow
syntax keyword MplotCycle cycle

syntax match MplotColSpec /\$[0-9]\+/

syntax region MplotComment start="{-" end="-}"
syntax region MplotString start=/"/ end=/"/ skip=/\\"/


" Integer number.
" syn match  AxonNumber display "[+-]\=\<\d\+\>"
" Floating point number.
" syn match  AxonFloat display "[+-]\=\<\d\+\.\d+\>"

highlight default link MplotKeyword Keyword
highlight default link MplotCycle Keyword
highlight default link MplotComment Comment
highlight default link MplotConstant Constant
highlight default link MplotColors Constant
highlight default link MplotString String
highlight default link MplotColSpec Identifier

let b:current_syntax="mplot"
