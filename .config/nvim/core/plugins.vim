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


" -------------------------------------------------------------------------------------------------
" LeaderF settings
" -------------------------------------------------------------------------------------------------


" Do not use cache file
let g:Lf_UseCache = 0
" Refresh each time we call leaderf
let g:Lf_UseMemoryCache = 0

" Ignore certain files and directories when searching files
let g:Lf_WildIgnore = {
  \ 'dir': ['.git', '__pycache__', '.DS_Store'],
  \ 'file': ['*.exe', '*.dll', '*.so', '*.o', '*.pyc', '*.jpg', '*.png',
  \ '*.gif', '*.svg', '*.ico', '*.db', '*.tgz', '*.tar.gz', '*.gz',
  \ '*.zip', '*.bin', '*.pptx', '*.xlsx', '*.docx', '*.pdf', '*.tmp',
  \ '*.wmv', '*.mkv', '*.mp4', '*.rmvb', '*.ttf', '*.ttc', '*.otf',
  \ '*.mp3', '*.aac']
  \}

" Only fuzzy-search files names
let g:Lf_DefaultMode = 'FullPath'

" Popup window settings
let w = float2nr(&columns * 0.8)
if w > 140
  let g:Lf_PopupWidth = 140
else
  let g:Lf_PopupWidth = w
endif

let g:Lf_PopupPosition = [0, float2nr((&columns - g:Lf_PopupWidth)/2)]

" Do not use version control tool to list files under a directory since
" submodules are not searched by default.
let g:Lf_UseVersionControlTool = 0

" show dot files
let g:Lf_ShowHidden = 1

" set up working directory for git repository
let g:Lf_WorkingDirectoryMode = 'a'

" Disable default mapping 
let g:Lf_ShortcutF = '' 
let g:Lf_ShortcutB = ''

" Search files in popup window
nnoremap <silent> <C-p> :<C-U>Leaderf file --popup<CR>
nnoremap <silent> <leader>ff :<C-U>Leaderf file --popup<CR>

" Search vim help files
nnoremap <silent> <leader>fh :<C-U>Leaderf help --popup<CR>

" Search recent files
nnoremap <silent> <leader>fr :<C-U>Leaderf mru --popup --absolute-path<CR>

let g:Lf_PopupColorscheme = 'gruvbox8'

" Change keybinding in LeaderF prompt mode, use ctrl-n and ctrl-p to navigate
" items.
let g:Lf_CommandMap = {'<C-J>': ['<C-N>'], '<C-K>': ['<C-P>']}

