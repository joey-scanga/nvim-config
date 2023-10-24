vim.cmd('set nocompatible')
vim.cmd('set relativenumber')
vim.cmd('set showmatch')
vim.cmd('set ignorecase')
vim.cmd('set mouse=v')
vim.cmd('set hlsearch')
vim.cmd('set incsearch')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set expandtab')
vim.cmd('set shiftwidth=4')
vim.cmd('set autoindent')
vim.cmd('set number')
vim.cmd('set wrap')
vim.cmd('set linebreak')
vim.cmd('set nolist')
vim.cmd('set wildmode=longest,list')
vim.cmd('set cc=80')
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')
vim.cmd('set mouse=a')
vim.cmd('set clipboard=unnamedplus')
vim.cmd('filetype plugin on')
vim.cmd('set ttyfast')
vim.cmd('set noswapfile')
vim.cmd('set backupdir=~/.cache/nvim ')
vim.cmd('colorscheme torte')

--Leader
vim.cmd('let mapleader=" "')

--Navigation
vim.cmd('nnoremap j gj')
vim.cmd('nnoremap k gk')
vim.cmd('vnoremap j gj')
vim.cmd('vnoremap k gk')

--Window nav
vim.cmd('nnoremap <M-l> <C-w>l')  
vim.cmd('nnoremap <M-h> <C-w>h')  
vim.cmd('nnoremap <M-k> <C-w>k')  
vim.cmd('nnoremap <M-j> <C-w>j')  

--Split shortcut
vim.cmd('nnoremap <leader>sp :sp<CR>')
vim.cmd('nnoremap <leader>vs :vs<CR>')

--Tab shortcut
vim.cmd('nnoremap <TAB> gt')
vim.cmd('nnoremap <S-TAB> gT')

--Netrw shortcuts
vim.cmd('nnoremap <leader>dd :Vexplore %:p:h<CR>')
vim.cmd('nnoremap <leader>dl :Lexplore %:p:h<CR>')
vim.cmd('nnoremap <leader>da :Vexplore<CR>')

--Terminal shortcut
vim.cmd('nnoremap <leader>tt :sp term://bash<CR> <bar> <C-w>20-')
vim.cmd('nnoremap <leader>vt :vs term://bash<CR>')
--Escape from terminal
vim.cmd(':tnoremap <Esc> <C-\\><C-n>')



