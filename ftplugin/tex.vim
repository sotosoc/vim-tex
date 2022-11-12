let tex_conceal=''
setlocal conceallevel=0
setlocal cc=81
setlocal number

match CursorLineNr /\v^\\chapter/
2match Question /\v^\\(section|subsection)/

" the following is actually and really done in ~/.vim/after/syntax/tex.vim
" to make spell checking work in all parts of the .tex file.
"syntax spell toplevel
set nospell

" PURPOSE: Prevent re-indentation of lines while editing
let b:did_indent = 1

let b:comment_leader = '% '

function! TexFold()
  let line = getline(v:lnum)

  " chapter/section documents
  if (line =~ '^(\\cc|\\np)?\\\<chapter\>')
    return ">1"
  endif

  if (line =~ '^(\\cc|\\np)?\\\<section\>')
    return ">2"
  endif

  if (line =~ '^(\\cc|\\np)?\\\<subsection\>')
    return ">3"
  endif

  if (line =~ '^(\\cc|\\np)?\\\<subsubsection\>')
    return ">4"
  endif

  return "="
endfunction
setlocal fdm=expr fde=TexFold()

if has("folding") "&& exists("g:tex_folding")
  setlocal foldexpr=TexFold()
  setlocal foldmethod=expr
  setlocal foldlevel=4
  "let b:undo_ftplugin .= " foldexpr< foldmethod<"
endif

" PURPOSE: Tex autoindenting was annoying beyond belief
setlocal indentexpr=

