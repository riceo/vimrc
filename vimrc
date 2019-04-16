" Vim Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set undodir=~/.vim/undo

" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'godlygeek/tabular'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'flazz/vim-colorschemes'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'scrooloose/syntastic'
	Plug 'pangloss/vim-javascript'
	Plug 'fatih/vim-go'
	Plug 'vim-ruby/vim-ruby'
	Plug 'plasticboy/vim-markdown'
	Plug 'elzr/vim-json'
	Plug 'klen/python-mode'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'fatih/vim-hclfmt'
call plug#end()

" Let me delete non empty directories
let g:netrw_localrmdir='rm -r'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
:let g:syntastic_loc_list_height=2

" Colours & Stylez
colorscheme atom
highlight LineNr ctermfg=grey
set numberwidth=5
set laststatus=2
let g:airline_theme='light'
set number
set tabstop=4
set shiftwidth=4
set expandtab

" NerdTree
let NERDTreeShowHidden=1

" Python Mode
let g:pymode_folding = 0

" Mappingz
map <C-n> :NERDTreeToggle<CR>

" Language Helpers
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Clipboard faff for OSX
set clipboard=unnamed

" Markdown
let g:vim_markdown_folding_disabled = 1

" NeoVim colours
" Set neovim embedded terminal colors
let g:terminal_color_0 = '#2e3436'
let g:terminal_color_1 = '#cc0000'
let g:terminal_color_2 = '#4e9a06'
let g:terminal_color_3 = '#c4a000'
let g:terminal_color_4 = '#3465a4'
let g:terminal_color_5 = '#75507b'
let g:terminal_color_6 = '#0b939b'
let g:terminal_color_7 = '#d3d7cf'
let g:terminal_color_8 = '#555753'
let g:terminal_color_9 = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
