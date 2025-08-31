" ===============================
" PLUGIN MANAGER (vim-plug)
" ===============================
call plug#begin('~/.vim/plugged')

" Explorador de arquivos
Plug 'preservim/nerdtree'

" Ícones bonitos no NERDTree
Plug 'ryanoasis/vim-devicons'

" Status bar estilizada
Plug 'vim-airline/vim-airline'

" Git integrado
Plug 'tpope/vim-fugitive'

" Destaque de sintaxe e cores modernas
Plug 'sheerun/vim-polyglot'

" Autocompletar
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Busca rápida (fuzzy finder)
Plug 'junegunn/fzf.vim'

call plug#end()

" ===============================
" CONFIGURAÇÕES BÁSICAS
" ===============================
set number              " mostra número das linhas
set relativenumber      " número relativo
set cursorline          " destaca linha atual
syntax on               " ativa cores
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set mouse=a             " mouse habilitado
set clipboard=unnamedplus " usa clipboard do sistema
set termguicolors       " melhor suporte de cor

" ===============================
" ATALHOS PRÁTICOS
" ===============================
" Abre explorador de arquivos lateral
nnoremap <C-n> :NERDTreeToggle<CR>

" Busca arquivos (fzf)
nnoremap <C-p> :Files<CR>

" Busca texto
nnoremap <leader>g :Rg<CR>

" Split vertical e abre arquivo
nnoremap <leader>v :vsplit<CR>

" Substituir palavra sob o cursor em todo arquivo
nnoremap <leader>s :%s/<C-r><C-w>//g<Left><Left>

" ===============================
" CORES
" ===============================
colorscheme desert
