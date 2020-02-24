" ---- Start Vundle Settings ----
  set nocompatible " be iMproved, required
  filetype off     " required

  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'kien/ctrlp.vim'
  Plugin 'posva/vim-vue'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'vim-airline/vim-airline'
  Plugin 'scrooloose/syntastic'
  Plugin 'elixir-editors/vim-elixir'

  " All of your Plugins must be added before the following line
  call vundle#end()         " required
  filetype plugin indent on " required
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" ---- End Vundle Settings ----

" ---- Start Custom Settings ----
  " ---- Start Custom Vim Settings ----
    " set tabs to 2 spaces
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
    set expandtab
    " Syntax highlighting on
    syntax on
    colorscheme desert
    autocmd BufWritePre * %s/\s\+$//e
    " turn hybrid line numbers on
    set number relativenumber
    set backspace=2
  " ---- End Custom Vim Settings ----

  " ---- Start CtrlP Custom Settings ----
    " Set updatetime to 100 ms suggested by vim-gitgutter
    set updatetime=100
    " Set max file search to 0 (no max)
    let g:ctrlp_max_files=0
    " Ignore dirs
    let g:ctrlp_custom_ignore = 'node_modules'
  " ---- End CtrlP Custom Settings ----

  " ---- Start Vim Git Gutter Settings ----

    " Set updatetime to 100 ms suggested by vim-gitgutter
    set updatetime=100

  " ---- Start Syntastic Settings ----
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
  " ---- End Syntastic Settings ----

  " ---- Start Custom Commands ----
    command NT NERDTreeToggle
  " ---- End Custom Commands ----
" ---- End Custom Settings ----
