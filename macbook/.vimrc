" Number of spaces that a <Tab> in the file counts for.
set tabstop=4
set shiftwidth=4
"set expandtab
"set smarttab
"set softtabstop=4

" Indent please!
set autoindent

" Modelines
set modelines=1

" Ruler shows line and character position
set ruler

if has("autocmd")
	autocmd BufEnter *.ctp set syn=php
endif

" Syntax highlighting
syntax on

" Highlight search matches
set hlsearch

" Default colorscheme
colorscheme elflord

" Restore cursor to last known position
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Highlight whitespace
" Source: http://www.carbon-project.org/Vim__How_to_prevent_trailing_whitespaces.html
highlight TrailWhitespace ctermbg=red guibg=red
match TrailWhitespace /\s\+$\| \+\ze\t/
