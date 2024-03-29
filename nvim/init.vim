" Takes from https://github.com/NeuralNine/config-files/blob/master/init.vim

:set number
":set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set hlsearch "highlight search items
:set incsearch "/<query> + <number>
:set ignorecase	" /\C - sensitive reg; /\c - insensitive reg
:set noswapfile "didn't create swap file(creates, when edit)
:set pastetoggle= "allow paste from clipboard at normal mode
:set vb t_vb= "turn off audio bells
:set background=dark
:set termguicolors


" --- Just Some Notes ---
"  " :PlugClean :PlugInstall :UpdateRemotePlugins
"  "
"  " :CocInstall coc-python
"  " :CocInstall coc-clangd
"  " :CocInstall coc-snippets
"  " :CocCommand snippets.edit... FOR EACH FILE TYPE
"
"  " air-line

call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " NerdTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:webdevicons_enable_nerdtree=1
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

Plug 'https://github.com/tpope/vim-commentary' " For Commenting command: gcc & gc


Plug 'https://github.com/vim-airline/vim-airline' " Status bar


Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme

" Additional installation commands:
"
" sudo apt install npm
" sudo npm install -g n
" sudo n stable
" sudo curl -sL install-node.vercel.app/lts | bash
" cd ~/.config/nvim/plugged/coc.nvim
" yarn install
" yarn build
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion


Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons


Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal


Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
nmap <F8> :TagbarToggle<CR>


Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors


Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set encoding=UTF-8

call plug#end()

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif
"
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

:set completeopt-=preview " For No Previews

" colorschemes params
" :colorscheme deep-space
:colorscheme onehalfdark

" Save on Ctrl-S
nmap <c-s> :w<CR>
