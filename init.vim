"setting the tabs to actually be two spaces but not actually spaces so people
"can look at the code nicely
set tabstop=2 softtabstop=0 noexpandtab shiftwidth=2 smarttab
"setting the colors to be nice and pretty
colorscheme badwolf
set noswapfile
set laststatus =2
"setting the side up to show the numbers
set number
set rnu
"disabling escape in insert mode
inoremap jk <esc>
inoremap <esc> <nop>
" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Setting up a column so code is not grody looking lmao
execute "set colorcolumn="
let &colorcolumn="90,".join(range(150,999),",")
hi colorcolomn ctermbg=0 guibg=lightgrey

" Setting up no linewrap
set nowrap

"Setting up Vim-Plug and her plugins"
call plug#begin()
 
Plug 'tyru/open-browser.vim' " opens url in browser
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' "Vim File Manager
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'wakatime/vim-wakatime'
" Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-python --enable-go'}
call plug#end()
"Configuring Vim-Plug and her plugins
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:vimspector_enable_mappings = 'HUMAN'
