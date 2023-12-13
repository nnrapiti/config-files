" echo ">^.^<"

filetype on
set laststatus=2
let foldlevelstart=0

" Global Status Line settings ---------------{{{
set statusline=%.20F
set statusline+=\ 
set statusline+=Type:%Y
set statusline+=%=
set statusline+=[%f\ -\ %n]
set statusline+=\ Line:\ %l/%L
" }}}

" Vimscript file settings -------------------{{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Disabled mappings -------------------{{{
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <space> <nop>
inoremap <esc> <nop>
inoremap jk <esc> 
" }}}

" Map leader and localleader
let mapleader = "\<space>" 
let maplocalleader = "\\"

" line number on, relative line number on
set nu rnu

" shiftwidth (autoIndent space) to 4
set shiftwidth=4

" Movement
nnoremap L $
nnoremap H 0

" Map - and _ to move a line down or up
noremap <leader>- ddp
noremap <leader>_ ddkkp

" Map ctrl+u to uppercase a word
inoremap <leader><c-u> <esc>viwU<esc>i
nnoremap <leader><c-u> viwU

" quick acces vimrc in a split pane
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" source vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

" Editing
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel


" Operator Pending mappings
" Movement Mappings
" can be used with d c y etc

" select all in () ie (p)arameters
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

onoremap in" :<c-u>normal! f"vi"<cr>
onoremap il" :<c-u>normal! F"vi"<cr>

onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il} :<c-u>normal! F}vi(<cr>



" abbreviations - typos
" abbreviations - misc
" abbreviations - java
augroup java_abbrevs
	autocmd!
	autocmd FileType java :iabbrev <buffer> psvm public static void main(String[] args){}
	autocmd FileType java :iabbrev <buffer> iff if(){<cr>}
augroup END


augroup markdown_custom
	autocmd!
	autocmd FileType markdown :onoremap <buffer> ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
	autocmd FileType markdown :onoremap <buffer> ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
augroup END
