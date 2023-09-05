" Set runtime path to include ~/.vim/Vundle.vim
set rtp+=~/.vim/plugins/Vundle.vim

" PLUGINS ---------------------------------------------

" Functioncall to vundle to load other plugins
call vundle#begin('~/.vim/plugins')

" Let Vundle handle itself as a plugin
Plugin 'VundleVim/Vundle.vim'

"Load nerdtree
Plugin 'preservim/nerdtree'

" Load vim-cpp
Plugin 'bfrg/vim-cpp-modern'

" Load java-syntax
Plugin 'uiiaoo/java-syntax.vim'

" Load vim-windowswap
" Plugin 'wesQ3/vim-windowswap'

" Load conoline
Plugin 'miyakogi/conoline.vim'

" Functioncall to vundle to end loading plugins
call vundle#end()

" END PLUGINS -----------------------------------------

" Activate line numbers
set number

" Activate Syntax highlighting
syntax on

" Disable compatibility with vi which can cause unexpected issues
set nocompatible

" Enable type file detection
filetype on

" Enable plugins and load plugin for the deteced file type
filetype plugin on

" Load an indent file for the detected file type
filetype indent on

" Highlight cursor line underneath the cursor horizontally
" set cursorline

" Highlight cursor line underneath the cursor vertically
" set cursorcolumn

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use space characters instead of tabs
set expandtab

" Do not save backup files
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching through a file incrementally highlight matching characters
set incsearch

" Ignore capital letters during search
set ignorecase

" Override the ignorecase option if searching for capital letters
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" Show the mode you are on the last line
set showmode

" Show matching wordsduring a search
set hlsearch

" Set the commands to save in history default number is 20
set history=30

" Enable auto completion menu after pressing TAB
set wildmenu

" Make wildmenu behave like similar to Bash completion
set wildmode=list:longest

" Set ignore files
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Set color scheme
" colorscheme molokai
colorscheme one

" one options
let g:airline_theme='one'
set background=dark

" vim-cpp options
let g:cpp_function_highlight=1 " Disable function highlighting
let g:cpp_attributes_highlight=1 " Enable highlighting of C++11 attributes
let g:cpp_member_highlight=1 " Highlight struct/class member variables
let g:spp_simple_highlight=1 " Put all standart C and C++ keywords in 'Statement' groupi

" java-syntax options
highlight link javaIdentifier NONE
highlight link javaDelimiter NONE

" window-swap options
" let g:windowswap_map_keys = 0 " Prevent default bindings

" conoline options
let g:conoline_auto_enable = 1 " auomatically enable conoline
" let g:conoline_color_normal_dark = 'guibg=#333333 guifg=#dddddd' " Set colors in normal mode
" let g:conoline_color_insert_dark = 'guibg=black guifg=white' " Set colors in insert mode
" let g:conoline_use_colorscheme_default_normal = 0
" let g:conoline_use_colorscheme_default_insert = 0
" let g:conoline_color_normal_dark = 'guibg=#5c5c5c'
" let g:conoline_color_normal_nr_dark = 'guibg=#5c5c5c'
" let g:conoline_color_insert_dark = 'guibg=#5c5c5c'
" let g:conoline_color_insert_nr_dark = 'guibg=#5c5c5c'

" KEY BINDINGS ----------------------------------------------

" Map F2 to NerdTreeToggle
nmap <F2> :NERDTreeToggle<CR>

" Keybinding to close curly parentheses
inoremap { {}<left>

" END KEY BINDINGS ------------------------------------------
