set nocompatible
set encoding=utf-8
set fileencoding=utf-8
"set noswapfile
"set showmode
"set showcmd
set relativenumber
set number
" always show status line
set laststatus=2
set statusline=%f\ %m%=%y\ %p%%\ %l:%c
" Enhence command line completion
"set wildmenu

set tabstop=8
set softtabstop=4
set shiftwidth=2
set expandtab
set smarttab
set autoindent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" from the Vim wiki
" http://vim.wikia.com/wiki/
" Restore_cursor_to_file_position_in_previous_editing_session
function! ResCur()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END
"
" Persistent undo
"if version >= 703
"    set undofile
"    set undodir=~/.vimtmp/undo
"    silent !mkdir -p ~/.vimtmp/undo
"endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap
set textwidth=79
set colorcolumn=+1

syntax on
set showmatch
set wrap
set cursorline
set scrolloff=6
set list
set listchars=eol:¬,tab:>-,trail:-,nbsp:_

set backspace=2

let g:jellybeans_background_color_256='232'
colorscheme jellybeans2
nmap    <ESC>[5^    <C-PageDown>
nmap    <ESC>[6^    <C-PageUp>
nnoremap <C-t> :execute "tabedit %:p:h"<CR>

filetype plugin indent on
