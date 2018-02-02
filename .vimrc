execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme vividchalk
set hlsearch

set t_Co=256

set tabstop=2 " a tab is two spaces
set shiftwidth=2 " an autoindent (with <<) is two spaces
set expandtab " use spaces, not tabs
set list " Show invisible characters
set backspace=indent,eol,start " backspace through everything in insert mode

set number

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*

""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup// " where to put backup files.
set directory^=~/.vim/_temp// " where to put swap files.

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

:nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

inoremap kj <ESC>

""
"" Additions from Hashrocket's Rock@VIM workshop
""

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

set guifont=Monaco:h12
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=zsh

" if filereadable(expand('~/.vimrc.local'))
"   source ~/.vimrc.local
" endif

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" gist-vim settings
let g:gist_clip_command = 'pbcopy'
let g:gist_get_multiplefile = 1

map ,t :!bundler exec rspec --format doc --tag focus<cr>
map ,c :exe "!bundler exec rspec --format doc --line " . line(".") @%<cr>
map ,x :!mix test<cr>

let g:pymode_python = 'python3'

set encoding=utf-8

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
