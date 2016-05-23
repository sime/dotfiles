" Number of spaces that a <Tab> in the file counts for.
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=2

" Indent please!
set autoindent

" Modelines
set modelines=1

" Ruler shows line and character position
set ruler

if has("autocmd")
	autocmd BufEnter *.ctp set syn=php
	autocmd BufEnter *.php.heroku set syn=php
endif

" Syntax highlighting
syntax on

" Highlight search matches
set hlsearch

" Highlights as you type an expression
set incsearch

" ignorecase plus smartcase make searches case-insensitive except when you include upper-case characters (so /foo matches FOO and fOo, but /FOO only matches the former)
set ignorecase
set smartcase

" Default colorscheme
colorscheme elflord

" Allow pasting
set paste

" Restore cursor to last known position
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Highlight whitespace
" Source: http://www.carbon-project.org/Vim__How_to_prevent_trailing_whitespaces.html
highlight TrailWhitespace ctermbg=red guibg=red
match TrailWhitespace /\s\+$\| \+\ze\t/


" Show new newlines, trailing spaces and tabbed lines.
" Source: http://www.carbon-project.org/Vim__automatically_delete_whitespaces_and_CRs.html
"set list lcs=eol:¶,tab:»-,trail:·

" automatically delete trailing whitespace & Dos-returns    {{{2
" Source: http://www.carbon-project.org/Vim__automatically_delete_whitespaces_and_CRs.html
"fun! <SID>MyDeleteTrailingWhitespace()
"  if ! &bin
"    let l:l = line(".")
"    let l:c = col(".")
"    silent! :%s/[\r \t]\+$//
"    call histdel("search", -1)
"    call cursor(l:l, l:c)
"  endif
"endfun
"autocmd BufWritePre,FileWritePre * call <SID>MyDeleteTrailingWhitespace()

set wildmode=longest,list:longest,list:full

" au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

set laststatus=2
set statusline=%t\ %h%m%r%w\ [%{strlen(&ft)?&ft:'none'}\|%{&ff}\|%{strlen(&fenc)?&fenc:&enc}]%=[%l,%L,\ %c]

"Now all operations work with the OS clipboard
" Source: https://twitter.com/vimtips/status/287242155771166720
set clipboard=unnamed

" Source: https://github.com/laktek/distraction-free-writing-vim
let g:fullscreen_colorscheme = "iawriter"
let g:fullscreen_font = "Cousine:h14"
let g:normal_colorscheme = "codeschool"
let g:normal_font="Inconsolata:h14"


" Fortrabbit

syntax on
filetype indent on
set autoindent
set background=dark
set backspace=indent,eol,start
set encoding=utf-8
set ignorecase
set linebreak
set list listchars=tab:⊳\ ,trail:⌑ ",eol:↲
set nobackup
set noswapfile
set ruler
set t_Co=256
set visualbell t_vb=
hi SpecialKey ctermfg=8

filetype indent plugin on

au BufNewFile *.js 0r ~/.vim/skeletons/js.skel

nmap \l :setlocal number!<CR>

au BufRead,BufNewFile *.jspx set filetype=xml
au BufRead,BufNewFile *.tagx set filetype=xml

au BufRead,BufNewFile *.less set filetype=less

au BufRead,BufNewFile *.json set filetype=json

augroup ProjectSetup
  au BufRead,BufEnter /Users/sime/dev/* set et sw=4 sts=4 cindent cinoptions=...
  au BufRead,BufEnter /Users/sime/dev/*.less set et sw=2 sts=2 cindent cinoptions=...
augroup END

augroup CI
  au BufRead,BufEnter /Users/sime/dev/icash-ci/*.rb set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab cindent cinoptions=...
augroup END

execute pathogen#infect()

" Syntastic recommendation
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jscs', 'jshint', 'jslint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_less_checkers = []
let g:syntastic_html_checkers = []
let g:syntastic_scss_checkers = []

set cm=blowfish
