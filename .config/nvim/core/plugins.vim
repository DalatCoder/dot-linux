call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-gruvbox8'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

call plug#end()


" -------------------------------------------------------------------------------------------------
" vim-go settings
" -------------------------------------------------------------------------------------------------

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC] (coc.nvim)
let g:go_def_mapping_enabled = 0

" -------------------------------------------------------------------------------------------------
" easymotion settings
" -------------------------------------------------------------------------------------------------


" -------------------------------------------------------------------------------------------------
" vim-airline settings
" -------------------------------------------------------------------------------------------------
let g:airline_powerline_fonts = 1


" -------------------------------------------------------------------------------------------------
" vim-airline themes settings
" -------------------------------------------------------------------------------------------------
let g:airline_theme='gruvbox8'
