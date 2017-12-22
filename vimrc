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

" Colours & Stylez
colorscheme atom
highlight LineNr ctermfg=grey
set numberwidth=5

" NerdTree
let NERDTreeShowHidden=1

" Mappingz
map <C-n> :NERDTreeToggle<CR>

" Language Helpers
