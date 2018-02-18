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

" NerdTree
let NERDTreeShowHidden=1

" Python Mode
let g:pymode_folding = 0

" Mappingz
map <C-n> :NERDTreeToggle<CR>

" Language Helpers

" Clipboard faff for OSX
set clipboard=unnamed



