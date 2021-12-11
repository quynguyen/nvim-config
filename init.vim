set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
source ~/.config/nvim/plug.vim
colorscheme dracula

"================================================================================
" Treesitter
"================================================================================
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

"================================================================================
" Telescope - fuzzy finder 
"================================================================================
" Loads ./lua/telescope-config/init.lua
lua require("telescope-config") 

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"================================================================================
" CoC - Language Client
"================================================================================
"inoremap <silent><expr> <TAB>
"			\ pumvisible() ? "\<C-n>" :
"			\ <SID>check_back_space() ? "\<TAB>" :
"			\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"function! s:check_back_space() abort
"	let col = col('.') - 1
"	return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"let g:coc_global_extensions = ['coc-solargraph']
"
"================================================================================
" Ruby Sorbet
"================================================================================
lua require("lspconfig").sorbet.setup{}

"================================================================================
" Neovim Auto Complete
"================================================================================
" Loads ./lua/nvim-compe-config/init.lua
lua require("nvim-compe-config")  

"================================================================================
" Neovim Native LSP - Language Server Protocol
"================================================================================
" Loads ./lua/nvim-lsp-config/init.lua
lua require("nvim-lsp-config")  
