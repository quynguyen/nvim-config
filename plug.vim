" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.nvim-plugins')

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'overcache/NeoSolarized'
"
" Vim staples
Plug 'tpope/vim-surround'

" FuzzyFinder
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/plenary.nvim'

" Language Client
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Language Server
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hrsh7th/nvim-compe'

" Icons
Plug 'kyazdani42/nvim-web-devicons'
"
" Lua
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'


call plug#end()
