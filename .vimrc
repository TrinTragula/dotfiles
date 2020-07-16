"|=========|
"| Plugins |
"|=========|

if empty(glob('~/.vim/autoload/plug.vim'))
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'joom/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'tomasr/molokai'

call plug#end()


"|=======|
"| Theme |
"|=======|

color molokai


"|======================|
"| Personal preferences |
"|======================|

" Always allow to delete text in insert mode
set backspace=indent,eol,start


"|===========|
"| Shortcuts |
"|===========|

" Move a line up and down using shift
nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
inoremap <A-Up> <Esc>:m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>

" Format shortcut
map <F9> gg=G<C-o><C-o>

" NERDTree toggle
nmap <C-n> :NERDTreeToggle<CR>
