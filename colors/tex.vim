set background=dark
highlight clear
syntax reset
set t_Co=256

let colors_name = "tex"

source $HOME/me/repos/linux_shared/vim/bundle/sotosoc/colors/base-colors.vim

"-------------------------------------------------------------------------------
" Structure of the code
"-------------------------------------------------------------------------------

" NOTE: LaTex matches \macro
highlight Statement        guifg=#FFA500 guibg=#000000 guisp=#000000 gui=BOLD

" NOTE: LaTex \\ and other special characters
highlight texSpecialChar   guifg=#FFA500 guibg=#000000 guisp=#000000 gui=NONE

" NOTE: bad spellings
highlight SpellBad         guifg=NONE    guibg=NONE    guisp=#FF0000 gui=underline

highlight Error            guifg=NONE    guibg=#FF0000 guisp=#000000 gui=NONE

"-------------------------------------------------------------------------------
" Phonemes
"-------------------------------------------------------------------------------
highlight Function         guifg=#21FFFF guibg=#000000 guisp=#000000 gui=NONE

"-------------------------------------------------------------------------------
" Codes
"-------------------------------------------------------------------------------
highlight Identifier       guifg=#FF1ABC guibg=#000000 guisp=#000000 gui=NONE
