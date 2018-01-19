"set nocp
"source /home/teodoro/.vim/autoload/pathogen.vim "location of my pathogen.vim

"syntax on
filetype plugin indent on
set modelines=0
set nocompatible              " be iMproved, required
let g:python_host_prog = '/usr/bin/python3.4'

filetype off
" alternatively, pass a path where Plug should install plugins
" call plug#begin('~/some/path/here')
call plug#begin()

"-------------------------start deoplete-------------------
"auto completion plugin for neo vim
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
"-------------------------end deoplete --------------------
"git support for vim
Plug 'tpope/vim-fugitive'
"this is the statusbar at the bottom (don't know how to describe it)
Plug 'bling/vim-airline'
"Better c++ syntax Highlight
Plug 'octol/vim-cpp-enhanced-highlight'
"like emasc or sublime multiple cursors
Plug 'terryma/vim-multiple-cursors'
"for find files in the current project
Plug 'kien/ctrlp.vim'
"visual indent guides
Plug 'nathanaelkane/vim-indent-guides'
"snippets
Plug 'SirVer/ultisnips'
"More snippets
Plug 'honza/vim-snippets'
"vim support for rails
Plug 'tpope/vim-rails'
"automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'
"Vim plugin for coffee script
Plug 'kchmck/vim-coffee-script'
"Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fireplace'
"Python enhanced syntax highlighting
Plug 'hdima/python-syntax'
"Toedit HTML files fast
Plug 'mattn/emmet-vim'
"syntax highlighting for tmux.conf file
Plug 'tmux-plugins/vim-tmux'
"Enable vim focus events inside tmux
Plug 'tmux-plugins/vim-tmux-focus-events'
"Saves vim session
Plug 'tpope/vim-obsession'
"Scala syntax highlighting and perhaps something more
Plug 'derekwyatt/vim-scala'
"Better syntax highlighting with haskell but surely can do more
Plug 'dag/vim2hs'
"syntax highlighting form haskell
Plug 'vim-scripts/haskell.vim'
"Enhanced Javascript syntax highlighting
Plug 'jelera/vim-javascript-syntax'
"Octave syntax highlighting
Plug 'jvirtanen/vim-octave'
"wisely add "end" in ruby, endfunction/endif/more in vim
Plug 'tpope/vim-endwise'
"syntax highlighting for stylus
Plug 'wavded/vim-stylus'
"Pug syntax highlighting
Plug 'digitaltoad/vim-pug'
"Vim airline themes
Plug 'vim-airline/vim-airline-themes'
"Molokay theme
Plug 'tomasr/molokai'

" All of your Plugins must be added before the following line
call plug#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Put your non-Plugin stuff after this line
set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
syntax on  "Enables syntax highlighting for programming languages
set background=dark
hi Visual cterm=reverse
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=4  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=4  "Assists code formatting
"setlocal spell  "Enables spell checking (CURRENTLY DISABLED because it's kinda annoying). Make sure to uncomment the next line if you use this.
"set spellfile=~/.vimwords.add  "The location of the spellcheck dictionary. Uncomment this line if you uncomment the previous line.
set foldmethod=manual  "Lets you hide sections of code
"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"--- Ends navigation commands
"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
"--- End sweet menu
imap jj <Esc>

set clipboard=unnamed
set number
set tabstop=4 shiftwidth=4 expandtab
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab  "Use to spaces identation in ruby files
autocmd FileType coffee set tabstop=2|set shiftwidth=2|set expandtab  "Use to spaces identation in coffee script files
"--- Tab navigation ---
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

map  <C-Right> :tabn<CR>
map  <C-Left> :tabp<CR>
map  <C-t> :tabnew<CR>

"--- Tab resize
nnoremap <silent> <C-+> :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <C--> :exe "resize " . (winheight(0) * 2/3)<CR>

au FocusLost * silent! wa
map <C-x> :NERDTreeToggle<CR>
"---theme
set t_Co=256  "Enable 256 colors palete
colorscheme molokai
set background=dark

""""""""""""""""""""""""""""""
" airline
"""""""""""""""""""""""""""""""""

set laststatus=2

let g:airline_theme = 'dark'
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set ttimeoutlen=50
"---end airline

"--- to close YouCompleteMe preview window
let g:ycm_autoclose_preview_window_after_completion=1

"---makes gvim looks more like terminal vim
set guioptions-=r  " no scrollbar on the right
set guioptions-=l  " no scrollbar on the left
set guioptions-=m  " no menu
set guioptions-=T  " no toolbar

"UtilSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-d>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"
"
let g:ident_guides_start_level = 1
let g:ident_guides_guide_size = 1

" vertical line indentation
let g:indentLine_color_term = 238
"let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

"Enable python-syntax
"let python_highlight_all = 1

"Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
"deoplete uses tab key to navigate the auto completion menu
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"deoplete uses down arrow key to navigate the auto completion menu
inoremap <expr><Down> pumvisible() ? "\<c-n>" : "\<Down>"
"deoplete uses Up arrow key to navigate the auto completion menu
inoremap <expr><Up> pumvisible() ? "\<c-p>" : "\<Up>"

set regexpengine=1 "solves lag in ruby files

"highlight trailling white spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Deletes trailling white spaces before save
autocmd BufWritePre * :%s/\s\+$//e

"Backup files directories because having they in the working directory is annoying
"set backupdir=~/.vim/backup_files//
"set directory=~/.vim/swap_files//
"set undodir=~/.vim/undo_files//

"Rainbow Parentheses
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['darkred', 'darkblue', 'darkgreen', 'darkmagenta'],
\   'operators': '_,\|=\|+\|\*\|-\|\.\|;\||\|&\|?\|:\|<\|>\|%\|/[^/]_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}

"Neovim Stuffs
set ignorecase          " Make searching case insensitive
"Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif
