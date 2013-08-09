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
