let s:core_conf_files = [
			\ 'globals.vim',
			\ 'plugins.vim',
			\ 'options.vim',
			\ 'autocommands.vim',
			\ 'mappings.vim',
			\ 'coc_configs.vim',
			\ 'themes.vim'
			\ ]

for s:fname in s:core_conf_files
	execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor
