" ============================
" VIM CONFIGURAÇÃO PARA CODING
" ============================

" --- PLUGINS ---
call plug#begin('~/.vim/plugged')

" Interface e aparência
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Arquivos e navegação
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Linguagens e sintaxe
Plug 'sheerun/vim-polyglot'

" Autocomplete e linguagem server (LSP)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'tpope/vim-fugitive'

call plug#end()


" --- CONFIGURAÇÕES BÁSICAS ---
set number                " mostrar número de linhas
set relativenumber        " números relativos
set cursorline            " destacar linha atual
syntax on                 " habilitar syntax highlight
set termguicolors         " cores melhores
set background=dark
colorscheme gruvbox       " tema gruvbox

set tabstop=4             " largura da tabulação
set shiftwidth=4          " largura de indentação
set expandtab             " usar espaços em vez de TAB
set smartindent           " indentação inteligente

set clipboard=unnamedplus " usar clipboard do sistema
set mouse=a               " habilitar mouse
set splitbelow            " splits horizontais abaixo
set splitright            " splits verticais à direita
set ignorecase            " busca case-insensitive
set smartcase             " mas respeita maiúscula
set wrap                  " quebra de linha
set linebreak             " quebra de linha em palavras
set hidden                " manter buffers abertos em segundo plano


" --- AIRLINE ---
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'


" --- COC.NVIM (autocomplete VSCode style) ---
" usa <Tab> e <Shift-Tab> para navegar no menu de autocomplete
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Atalho para abrir lista de diagnósticos
nmap <leader>d :CocDiagnostics<CR>


" --- NERDTREE ---
nnoremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1


" --- FZF ---
nnoremap <C-p> :Files<CR>
nnoremap <leader>g :Rg<CR>


" --- SPLITS ---
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>o :only<CR>


" --- SUBSTITUIÇÃO RÁPIDA ---
" Substitui palavra sob cursor em todo o arquivo
nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>


" --- GIT (fugitive) ---
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gl :Git log<CR>

" ============================
" FIM DO .vimrc
" ============================
