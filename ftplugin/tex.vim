let tex_conceal=''
setlocal conceallevel=0
setlocal cc=81
setlocal number

match MatchParen /\v^.*section.*/

" the following is actually and really done in ~/.vim/after/syntax/tex.vim
" to make spell checking work in all parts of the .tex file.
"syntax spell toplevel
set nospell

let b:comment_leader = '% '

function! TexFold()
  let line = getline(v:lnum)

  " part/input documents
  if (line =~ '\v\\part>')
    return ">1"
  endif

  " step/substep documents
  if (line =~ '^.\<step\>')
    return ">1"
  endif

  if (line =~ '^.\<substep\>')
    return ">2"
  endif

  if (line =~ '^.\<subsubstep\>')
    return ">3"
  endif

  " exercise/subexercise documents
  if (line =~ '^.\<exercise\>')
    return ">1"
  endif

  if (line =~ '^.\<subexercise\>')
    return ">2"
  endif

  if (line =~ '^.\<subsubexercise\>')
    return ">3"
  endif

  " chapter/section documents
  if (line =~ '^.\<chapter\>')
    return ">1"
  endif

  if (line =~ '^.\<section\>')
    return ">2"
  endif

  if (line =~ '^.\<subsection\>')
    return ">3"
  endif

  if (line =~ '^.\<subsubsection\>')
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

