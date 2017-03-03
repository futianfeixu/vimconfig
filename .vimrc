" 插件管理vundle配置-------------------------{{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vimcn/vimcdoc'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" }}}
" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
" 基础配置 ------------------------------{{{ 
augroup base_config
    syntax on
    set encoding=utf-8
    set langmenu=zh_CN.UTF-8
    language message zh_CN.UTF-8
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    set ambiwidth=double
    set nu
augroup END
" }}}
" 编辑配置----------------------------------------------{{{
augroup edit_config
    set ts=4
    set sw=4
    set shiftwidth=4
    set tabstop=4
    set et
    set smarttab
    set expandtab
    set autoindent
    set wrap
augroup END
" }}}
" 搜索配置--------------------------------------------{{{
augroup search_config
    set hlsearch
augroup END
" }}}
" 映射配置---------------------------------------{{{
augroup mapping_config
    autocmd!
    inoremap jk <esc>
    inoremap <esc> <nop>
    inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
    inoremap {<CR>  {<CR>}<Esc>O
    inoremap ( ()<esc><Left>a
    let mapleader = "_"
    nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>
augroup END
" }}}
" 自动执行配置------------------------------------{{{
augroup auto_config

augroup END
" }}}
" 插件nerdtree的设置----------------------------------{{{
augroup plugin_nerdtree_config
    let g:nerdtree_tabs_open_on_console_startup=1
    let g:nerdtree_tabs_focus_on_files=1
    let g:nerdtree_tabs_autofind=1
    map <C-n> :NERDTreeToggle<CR>
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'
augroup END
" }}}
" 插件airline的配置--------------------------------------{{{
augroup plugin_airline_config
    let g:airline_theme='base16'
augroup END
" }}}
" 插件YouCompleteMe配置----------------------------------------{{{
augroup plugin_ycm_config
    let g:ycm_server_python_interpreter='/usr/bin/python'
augroup END
" }}}
