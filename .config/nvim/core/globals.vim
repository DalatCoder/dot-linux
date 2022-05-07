"{ Global Variable
"{{ Custom variables
let g:is_win = (has('win32') || has('win64')) ? v:true : v:false
let g:is_linux = (has('unix') && !has('macunix')) ? v:true : v:false
let g:is_mac = has('macunix') ? v:true : v:false
let g:logging_level = 'info'
"}}


"{{ Builtin variables
" Disable perl provider
let g:loaded_perl_provider = 0

" Disable ruby provider
let g:loaded_ruby_provider = 0

" Path to Python 3 interpreter (must be an absolute path), make startup
" faster. See https://neovim.io/doc/user/provider.html.
if executable('python')
   if g:is_win
    let g:python3_host_prog=substitute(exepath('python'), '.exe$', '', 'g')
  elseif g:is_linux || g:is_mac
    let g:python3_host_prog=exepath('python')
  endif
else
  echoerr 'Python 3 executable not found! You must install Python 3 and set its PATH correctly!'
endif

" NodeJS provider 
let g:node_host_prog = '/home/dalatcoder/.nvm/versions/node/v14.15.0/bin/neovim-node-host'


" Custom mapping <leader> (see `:h mapleader` for more info)
let g:mapleader = ','

"{{ Disable loading certain plugins
" Whether to load netrw by default, see
" https://github.com/bling/dotvim/issues/4
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1
let g:netrw_liststyle 	 = 3

" Do not load tohtml.vim
let g:loaded_2html_plugin = 1

" Do not load zipPlugin.vim, gzip.vim and tarPlugin.vim 
" (all these plugins are related to checking files inside compressed files)
let g:loaded_zipPlugin 	= 1
let loaded_gzip 	= 1
let g:loaded_tarPlugin 	= 1

let g:loaded_tutor_mode_plugin = 1  " do not load the tutor plugin

" Do not use builtin matchit.vim and matchparen.vim since we use vim-matchup
let g:loaded_matchit = 1
let g:loaded_matchparen = 1
"}}

