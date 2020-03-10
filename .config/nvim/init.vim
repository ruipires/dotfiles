if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'cj/vim-webdevicons'
"Plug 'fholgado/minibufexpl.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'nathanalderson/yang.vim'
Plug 'vim-scripts/netrw.vim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Generic VIM  options

syntax on
set t_Co=256 " set terminal capabilities to 256 colors (needed for airline plugin)
colorscheme nord
set mouse=a
set bg=dark
syntax on              "enable syntax highlighting
set list
set number
set incsearch
set wildmode=longest:full
set list
set listchars=tab:>-,trail:~,extends:…
set wildmenu
set nowrap
set hlsearch
set colorcolumn=140 "mark column 140 as the maximum width (visually only)
match ErrorMsg '\%>140v.\+' " higlight (as erros) characters over column 140
set winminheight=0

" get rid of ugly | in vert split
set fillchars+=vert:\ 

set grepprg=ack

"configure indentation
let c_space_errors=1
set tabstop=4
set shiftwidth=4
set expandtab

"enable built-in doxygen syntax highlight support
let g:load_doxygen_syntax=1

"always show vim status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vim-airline configuration
set encoding=utf-8
let g:airline_theme="nord"
""display all buffers when there is only one tab open
"let g:airline#extensions#tabline#enabled = 1
""how are buffers displayed in tabline
"let g:airline#extensions#tabline#fnamemod = ':t'
""exclude [BufExplorer] buffer from tabline
let g:airline#extensions#tabline#excludes = ["[BufExplorer"]
""show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
"let g:airline_left_sep='░'
"let g:airline_right_sep='░'

"disable bufferline integration
"let g:airline#extensions#bufferline#enabled = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"configure a.vim
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:../,sfr:./src, sfr:../include,sfr:../../include'
" a.vim should not alternate to a file/buffer which does not exist.
let g:alternateNoDefaultAlternate = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"configure Tlist
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Display_Prototype = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 60
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"configure NERDTree
let NERDTreeWinSize=50
"let NERDTreeIgnore=['\.o$', '\~$', 'binq50', 'binq50_simq', 'binxc50_sim', 'libq50', 'libq50_simq', 'libxc50_sim', 'objq50', 'objq50_simq', 'objxc50_sim']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nord configuration
let g:nord_italic_comments = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" webdev icons
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"minibufexpl
let g:miniBufExplVSplit = 20 " use vertical split
let g:miniBufExplBRSplit = 0 " put window on left
let g:miniBufExplorerAutoStart = 0 "don't open MBE automatically
let g:miniBufExplMinSize=42
