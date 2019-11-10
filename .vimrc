version 7.0

""" Vundle Entries
" NOTE: comments after Bundle command are not allowed..
set nocompatible               " be iMproved
filetype off                   " required!

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'c9s/perlomni.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'sillybun/vim-repl'
  map <Leader>t :CtrlPBuffer<CR>
  let g:ctrlp_map = '<C-t>'
  let g:ctrlp_working_path_mode = 0 " don’t manage working directory.
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v\c\.(git|svn)$|cgi/t/sandbox|cover_db',
  \ 'file': '\v\c\.(swf|bak|png|gif|js|mov|ico|jpg|pdf|jrxml)$',
  \ }
Bundle 'Lokaltog/vim-powerline'
  let g:Powerline_symbols = 'fancy'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'cakebaker/scss-syntax.vim'

Bundle 'scrooloose/nerdtree'
nmap <C-n> :NERDTreeToggle<CR>

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"  let g:fuf_coveragefile_exclude = '\c\.\(swf\|bak\|png\|gif\|js\|mov\|ico\|jpg\|pdf\|jrxml\)$\|cgi\/t\/sandbox\|\/cover_db\/'
"  map <Leader>t :FufBuffer<CR>
"  map <C-t> :FufCoverageFile<CR>

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...


filetype plugin indent on     " required!

""" vimrc resumes :-)
execute pathogen#infect()
set autoindent
set backspace=indent,eol,start
set cindent " set smartindent
set cmdheight=2
set cursorcolumn
set cursorline
set errorformat=\"../../%f\"\\,%*[^0-9]%l:\ %m
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>-,trail:-
set nowrap
set number
set ruler

set shiftwidth=4
set showcmd
set showmatch
set smarttab
"set statusline=%F%m%r%h%w\ [%{&ff}]\ %y\ [CHR=%b/0x%B]\ [POS=%04l,%03c(%03v)]\ [%p%%]\ [LEN=%L]\ %{fugitive#statusline()}
set tags=tags;/
set virtualedit=block
set wrap
set path=.,/usr/include,,**
syntax on

set termguicolors
colorscheme space-vim-dark
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:ale_perl_perlcritic_profile = "/home/git/regentmarkets/cpan/rc/.perlcriticrc"
let g:ale_perl_perltidy_profile = "/home/git/regentmarkets/cpan/rc/.perltidyrc"
let g:ale_linters = { 'perl': ['perl','perlcritic','perltidy'] }
let g:ale_fixers = { 'perl':['perltidy'] }
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 1 " Less distracting when opening a new file




set bg=dark
highlight   CursorColumn  term=NONE    cterm=none ctermbg=232
highlight   CursorLine    term=NONE    cterm=none ctermbg=232
highlight   FoldColumn                            ctermbg=8  ctermfg=14
highlight   Folded                                ctermbg=8  ctermfg=14
highlight   Search        term=reverse cterm=bold ctermbg=11 ctermfg=0
highlight   Visual        term=NONE    cterm=bold ctermbg=10 ctermfg=8
"
"" makes Omni Completion less pinky :P
highlight   Pmenu                                 ctermbg=2  ctermfg=0
highlight   PmenuSel                              ctermbg=7  ctermfg=0
highlight   PmenuSbar                             ctermbg=0  ctermfg=7
highlight   PmenuThumb                            ctermbg=7  ctermfg=0

" :help last-position-jump
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

nnoremap <C-L> :noh<CR><C-L>
inoremap jj <Esc>
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader><Leader>r :e ~/.vimrc<CR>

map <Leader>rd :!perl -d %<CR>
map <Leader>sc :!perl -c %<CR>
map <Leader>rc :!perl %<CR>
map <Leader>pt :%! perltidy -pro=/home/git/regentmarkets/cpan/rc/.perltidyrc --backup-and-modify-in-place -bext=tidyup<CR>
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gm :Gcommit --amend<CR>
map <Leader>gll :Git log<CR>
map <Leader>glp :Git log -p<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gdd :Git diff<CR>
map <Leader>gdm :Git diff %<CR>
map <Leader>gdf :Gdiff<CR>
map <Leader>gg :Git 

set noswapfile
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1
let g:mapleader='r'
nnoremap <leader>r :REPLToggle<Cr>
set splitbelow


nmap <F1> <Esc>
imap <F1> <Esc>


