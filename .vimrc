syntax on
set syntax=custom

set nu rnu
set hlsearch 
set incsearch 
set autoindent
set ignorecase
set noruler
set expandtab
set nowrap 

set scrolloff=0
set sidescrolloff=0

set history=1000
set nospell
set cursorline
set laststatus=2
set shortmess-=5
set foldcolumn=1

let &fillchars ..= ',stl:_,eob: '
set fcs=fold:\ ,vert:\|

au BufWritePost *.tex !pdflatex % 
au FileType,BufRead,BufNewFile,FocusGained * set syntax=custom

vmap <F2> ymZ:vim /<C-r>"/j **<CR>:cope<CR>
nmap <F3> :term<CR><Up><Up><CR>exit<CR>

"TEXT
hi normal           ctermfg=0015 ctermbg=none cterm=none
hi title            ctermfg=none ctermbg=none cterm=bold
hi endofbuffer      ctermfg=0000 ctermbg=none cterm=bold
hi matchparen       ctermfg=0000 ctermbg=0238 cterm=none

"SEARCH
hi search           ctermfg=none ctermbg=0238 cterm=none
hi cursearch        ctermfg=none ctermbg=0238 cterm=none
hi incsearch        ctermfg=none ctermbg=0238 cterm=none

"SELECTED
hi visual           ctermfg=none ctermbg=0238 cterm=none

"TABS
hi tabline          ctermfg=none ctermbg=none cterm=none
hi tablinefill      ctermfg=none ctermbg=none cterm=none
hi tablinesel       ctermfg=0227 ctermbg=none cterm=none

"WINDOWS
hi vertsplit        ctermfg=none ctermbg=none cterm=none
hi statuslinenc     ctermfg=none ctermbg=none cterm=underline
hi statuslinetermnc ctermfg=none ctermbg=none cterm=underline
hi statusline       ctermfg=0227 ctermbg=none cterm=bold,underline
hi statuslineterm   ctermfg=0227 ctermbg=none cterm=bold,underline

"CURSOR LINE
hi cursorline       ctermfg=none ctermbg=none cterm=none
hi cursorlinenr     ctermfg=0227 ctermbg=none cterm=none
hi linenr           ctermfg=0240 ctermbg=none cterm=none

"FOLDS
hi folded           ctermfg=0015 ctermbg=none cterm=bold
hi foldcolumn       ctermfg=0015 ctermbg=none cterm=bold

hi com              ctermfg=0063 ctermbg=none cterm=none
hi opr              ctermfg=0200 ctermbg=none cterm=none

set path+=**
set wildmenu

function! MyFoldText()
    let nl = v:foldend - v:foldstart + 1
    let line = getline(v:foldstart)
    return line
endfunction

set foldtext=MyFoldText()
