set nocompatible

set background=dark
syntax enable
colorscheme solarized

"======================"
" Vundle configuration "
"======================"

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
if isdirectory(expand('$HOME/.vim/bundle/Vundle.vim'))
  call vundle#begin()
  " Required
  Plugin 'gmarik/vundle'
  " Install plugins that come from github.  Once Vundle is installed, these can be
  " installed with :PluginInstall
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'Valloric/MatchTagAlways'
  Plugin 'vim-scripts/netrw.vim'
  Plugin 'tpope/vim-sensible'
  Plugin 'SirVer/ultisnips'
  Plugin 'fatih/vim-go'
  Plugin 'lifepillar/vim-solarized8'
  Plugin 'ycm-core/YouCompleteMe'
  Plugin 'delimitMate.vim'
  " Provide many default snippets for a variety of snippets.
  " Uncomment and :PluginInstall to enable
  " Plugin 'honza/vim-snippets'

  call vundle#end()
else
  echomsg 'Vundle is not installed. You can install Vundle from'
      \ 'https://github.com/VundleVim/Vundle.vim'
endif

" Load the default google configuration

filetype plugin indent on

"===================="
" Some basic options "
"===================="

" Enable syntax highlighting
syntax on

" Uncomment if you want to map ; to : to cut down on chording
" nnoremap ; :

" Automatically change the working path to the path of the current file
autocmd BufNewFile,BufEnter * silent! lcd %:p:h

" Show line numbers
" set number

" use » to mark Tabs and ° to mark trailing whitespace. This is a
" non-obtrusive way to mark these special characters.
" set list listchars=tab:»\ ,trail:°

" Highlight the search term when you search for it.
set hlsearch

" By default, it looks up man pages for the word under the cursor, which isn't
" very useful, so we map it to something else.
nnoremap <s-k> <CR>

" Explicitly set the Leader to comma. You you can use '\' (the default),
" or anything else (some people like ';').
let mapleader=','
let g:go_fmt_command = "goimports"


set tabstop=2 shiftwidth=2 expandtab
let g:mta_use_matchparen_group = 1
set swapfile
