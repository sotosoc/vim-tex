let tex_conceal=''
setlocal conceallevel=0
setlocal cc=81
setlocal number

match  Error      /\v^\\cc\\(chapter|section|subsection|subsubsection)/
2match DiffDelete /\v^\\np\\(chapter|section|subsection|subsubsection)/

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
  if (line =~ '^....\<chapter\>')
    return ">1"
  endif

  if (line =~ '^....\<section\>')
    return ">2"
  endif

  if (line =~ '^....\<subsection\>')
    return ">3"
  endif

  if (line =~ '^....\<subsubsection\>')
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

