set list
set listchars=tab:>-

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
" Syntax highlight
Plug 'sheerun/vim-polyglot'
Plug 'ajh17/VimCompletesMe'
Plug 'nelstrom/vim-visual-star-search'
" Aligning text by some character
Plug 'tommcdo/vim-lion'
" Text objects based on indentation levels
Plug 'michaeljsmith/vim-indent-object'
" Python docstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
" Jump to any defition and references
Plug 'pechorin/any-jump.vim'

call plug#end()

let g:polyglot_disabled = ['latex']

filetype off                  " required

let g:airline#extensions#tabline#enabled = 1

" Set Latex's PDF viewer to Skim
"let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r 1'
"let g:vimtex_view_general_options_latexmk = '-synctex=1 -interaction=nonstopmode --shell-escape %O %S'
"let g:vimtex_quickfix_autojump = 1
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_automatic = 0
let g:vimtex_quickfix_latexlog = {
          \ 'default' : 0,
          \ 'general' : 0,
          \ 'references' : 0,
          \ 'overfull' : 0,
          \ 'underfull' : 0,
          \ 'font' : 0,
          \ 'packages' : {
          \   'default' : 0,
          \   'natbib' : 0,
          \   'biblatex' : 0,
          \   'babel' : 0,
          \   'hyperref' : 0,
          \   'scrreprt' : 0,
          \   'fixltx2e' : 0,
          \   'titlesec' : 0,
          \ },
          \}
let g:vimtex_toc_config = {
          \ 'split_width': 80,
          \ 'layer_status': {
            \'content': 1,
            \'label': 0,
            \'todo': 1,
            \'include': 0,
            \},
          \}

" ## FZF
"let g:fzf_command_prefix = 'Fz'
"let g:fzf_commands_expect = 'alt-enter'
"let g:fzf_history_dir = '~/.local/share/fzf-history'
command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-y': 'vsplit' }


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'junegunn/fzf'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/vimtex'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" To fix conflict between NERDTree and bd command
Plugin 'qpkorr/vim-bufkill'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
syntax on
au BufRead,BufNewFile *.py set expandtab

set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

"set lcs+=space:.
"set lcs+=eol:¬

" make backspaces more powerfull
set backspace=indent,eol,start

autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 autoindent


set ruler                           " show line and column number
set number
"set number relativenumber

"augroup numbertoggle
  "autocmd!
  "autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  "autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END

" folding
set foldmethod=indent

" quick split navigation 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tab navigation
"nnoremap tk :tabnext<CR>
"nnoremap tj :tabprev<CR>
"nnoremap th :tabfirst<CR>
"nnoremap tl :tablast<CR>

" buffer navigation
nnoremap tk :bnext<CR>
nnoremap tj :bprevious<CR>
nnoremap th :bfirst<CR>
nnoremap tl :blast<CR>

" color scheme
"autocmd BufEnter *.py colorscheme molokai
"autocmd BufEnter *.tex colorscheme molokai
colorscheme Tomorrow-Night-Eighties

"inoremap <C-A> <C-X><C-O>

" Map jj to Escape key
imap jj <Esc>

" Less keystrokes 
nnoremap fz :FZF<CR>
nnoremap db :BD<CR>
nnoremap ur :call UltiSnips#RefreshSnippets()<CR>
"inoremap <Esc> <Esc>:w<CR>
inoremap <C-A> <C-X><C-O>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '\.aux$', '\.fls$', '\.fdb_latexmk$', '\.synctex.gz$', '__pycache__', 'node_modules']

" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-n>"
"let g:UltiSnipsJumpBackwardTrigger="<c-p>"
"let g:tex_flavor = "latex"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"
"let airline_powerline_fonts = 1
" No need to save buffer when switching to a new one
set hidden

augroup markdownSpell
    autocmd!
    autocmd FileType tex setlocal spell
    autocmd BufRead,BufNewFile *.tex setlocal spell
augroup END

vmap <C-C> "+y

" Kite settings
let g:kite_supported_languages = ['python']
let g:kite_snippets=1
set completeopt+=menuone   " show the popup menu even when there is only 1 match
set completeopt+=noinsert  " don't insert any text until user chooses a match
set completeopt-=longest   " don't insert the longest common text
set completeopt-=noselect   " Highlight the first completion automatically
set completeopt+=preview
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg  " if vim beeps during completion

" docstring
let g:pydocstring_formatter = 'google'
nnoremap pd :Pydocstring<CR>
nnoremap apd :PydocstringFormat<CR>
nmap <silent> <C-m> <Plug>(pydocstring)

" any-jump
let g:any_jump_search_prefered_engine = 'ag'
let g:any_jump_results_ui_style = 'filename_first'
let g:any_jump_ignored_files = ['htmlcov/*', '*.pyc']
let g:any_jump_disable_vcs_ignore = 1
