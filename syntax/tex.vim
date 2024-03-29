if exists("b:current_syntax")
  finish
endif

"-------------------------------------------------------------------------------
" Ruby-style symbols are used as phoneme codes
"-------------------------------------------------------------------------------
"setlocal iskeyword+=:

"-------------------------------------------------------------------------------
" tex is case-sensitive (macros for example)
"-------------------------------------------------------------------------------
syntax case match

"-------------------------------------------------------------------------------
" NOTE and TODO within comments
"-------------------------------------------------------------------------------
syntax keyword texNotes NOTE REFER STARTHERE TODO contained
highlight link texNotes Todo

"-------------------------------------------------------------------------------
" TeX Macros -- catchall lower-case macro names
"-------------------------------------------------------------------------------
syntax match texCommand /\v\\[a-zA-Z]+>/
"syntax match texCommand /\v\\[ ]/

highlight link texCommand Macro

"-------------------------------------------------------------------------------
" Errors
"-------------------------------------------------------------------------------
syntax match sbsrError /\v\/[a-z]+\//

highlight link sbsrError Error

" CONSIDER: $SBSR/books/lessons/structure.tex
" ELIMINATE: $SBSR/books/packages/commands.tex
"-------------------------------------------------------------------------------
" steps.sty
"-------------------------------------------------------------------------------
"syntax match texKeyword /\v\\step/
"syntax match texKeyword /\v\\stepContinue/
"
"syntax match texKeyword /\v\\soundCode/
"syntax match texKeyword /\v\\students?/
"syntax match texKeyword /\v\\Students?/
"syntax match texKeyword /\v\\teachers?/
"syntax match texKeyword /\v\\Teachers?/
"
"highlight link texKeyword Identifier
"
""-------------------------------------------------------------------------------
"" Lesson Names
""-------------------------------------------------------------------------------
"syntax match texLabel /\v<lesson_sound[A-Z]+code[A-Z]+>/
"
"highlight link texLabel Question
"
""source $SBSR/books/packages/sbsr.vim
"
""-------------------------------------------------------------------------------
"" Phonemes within comments
""-------------------------------------------------------------------------------
"syntax match sbsrPhonemes "\V/\zs_a\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_a\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_b\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_c\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_d\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_e\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_f\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_g\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_h\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_i\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_j\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_k\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_l\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_m\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_n\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_o\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_p\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_r\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_s\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_t\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_u\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_v\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_w\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_x\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_y\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zs_z\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsae\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsar\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsau\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsch\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsdh\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsee\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsie\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsng\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsoe\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsoi\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsoo\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsor\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsou\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zssh\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsth\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsue\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsur\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zsuu\ze/"                  contained
"syntax match sbsrPhonemes "\V/\zszh\ze/"                  contained
"
"syntax match sbsrPhonemes "\V/\zs_a\ze/"
"syntax match sbsrPhonemes "\V/\zs_a\ze/"
"syntax match sbsrPhonemes "\V/\zs_b\ze/"
"syntax match sbsrPhonemes "\V/\zs_c\ze/"
"syntax match sbsrPhonemes "\V/\zs_d\ze/"
"syntax match sbsrPhonemes "\V/\zs_e\ze/"
"syntax match sbsrPhonemes "\V/\zs_f\ze/"
"syntax match sbsrPhonemes "\V/\zs_g\ze/"
"syntax match sbsrPhonemes "\V/\zs_h\ze/"
"syntax match sbsrPhonemes "\V/\zs_i\ze/"
"syntax match sbsrPhonemes "\V/\zs_j\ze/"
"syntax match sbsrPhonemes "\V/\zs_k\ze/"
"syntax match sbsrPhonemes "\V/\zs_l\ze/"
"syntax match sbsrPhonemes "\V/\zs_m\ze/"
"syntax match sbsrPhonemes "\V/\zs_n\ze/"
"syntax match sbsrPhonemes "\V/\zs_o\ze/"
"syntax match sbsrPhonemes "\V/\zs_p\ze/"
"syntax match sbsrPhonemes "\V/\zs_r\ze/"
"syntax match sbsrPhonemes "\V/\zs_s\ze/"
"syntax match sbsrPhonemes "\V/\zs_t\ze/"
"syntax match sbsrPhonemes "\V/\zs_u\ze/"
"syntax match sbsrPhonemes "\V/\zs_v\ze/"
"syntax match sbsrPhonemes "\V/\zs_w\ze/"
"syntax match sbsrPhonemes "\V/\zs_x\ze/"
"syntax match sbsrPhonemes "\V/\zs_y\ze/"
"syntax match sbsrPhonemes "\V/\zs_z\ze/"
"syntax match sbsrPhonemes "\V/\zsae\ze/"
"syntax match sbsrPhonemes "\V/\zsar\ze/"
"syntax match sbsrPhonemes "\V/\zsau\ze/"
"syntax match sbsrPhonemes "\V/\zsch\ze/"
"syntax match sbsrPhonemes "\V/\zsdh\ze/"
"syntax match sbsrPhonemes "\V/\zsee\ze/"
"syntax match sbsrPhonemes "\V/\zsie\ze/"
"syntax match sbsrPhonemes "\V/\zsng\ze/"
"syntax match sbsrPhonemes "\V/\zsoe\ze/"
"syntax match sbsrPhonemes "\V/\zsoi\ze/"
"syntax match sbsrPhonemes "\V/\zsoo\ze/"
"syntax match sbsrPhonemes "\V/\zsor\ze/"
"syntax match sbsrPhonemes "\V/\zsou\ze/"
"syntax match sbsrPhonemes "\V/\zssh\ze/"
"syntax match sbsrPhonemes "\V/\zsth\ze/"
"syntax match sbsrPhonemes "\V/\zsue\ze/"
"syntax match sbsrPhonemes "\V/\zsur\ze/"
"syntax match sbsrPhonemes "\V/\zsuu\ze/"
"syntax match sbsrPhonemes "\V/\zszh\ze/"

highlight link sbsrPhonemes Function

"-------------------------------------------------------------------------------
" Codes and words within single quotes
"-------------------------------------------------------------------------------
syntax match sbsrCodes "\v%<63c'[a-pr-z-]+'"            contained

highlight link sbsrCodes Identifier

"-------------------------------------------------------------------------------
" Literal word lists
"-------------------------------------------------------------------------------
syntax match sbsrWords "\v%>62c'[a-pr-z ]+'"           contained

highlight link sbsrWords Search

"-------------------------------------------------------------------------------
" Comments start with a percent sign in any column
"-------------------------------------------------------------------------------
syntax match texComment /\v\%.*$/ contains=texNotes,sbsrPhonemes,sbsrCodes
highlight link texComment Comment

let b:current_syntax = "tex"
" vim:cc=81
