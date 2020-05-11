set tabstop=2
set shiftwidth=2
" set number
set autoindent
set expandtab
set wildmode=list:longest
" set cursorline
" set cursorcolumn
set t_Co=256
set hlsearch
syntax on
if &diff
    syntax off
endif

" 改行文字とタブ文字を表示
set list
"set listchars=tab:>-,eol:<
set listchars=tab:>-

" 改行文字とタブ文字の色設定（NonTextが改行、SpecialKeyがタブ）
" hi NonText guibg=NONE guifg=DarkGreen
" hi SpecialKey guibg=NONE guifg=Gray40

" エンコーディング
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,cp932

" カーソル移動のマッピング
nnoremap <S-h> 0
nnoremap <S-l> $

" escを置換
noremap <C-j> <esc>
noremap! <C-j> <esc>



" ************************************************
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ***********************************
" textobj
Plugin 'kana/vim-textobj-user'
Plugin 'lucapette/vim-textobj-underscore'

" ***********************************
" snippet
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" ***********************************
" color scheme
Plugin 'sickill/vim-monokai'
Plugin 'sjl/badwolf'
Plugin 'vim-scripts/proton'
Plugin 'flazz/vim-colorschemes'

" ***********************************
" markdown
"Plugin 'plasticboy/vim-markdown'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open'

" ***********************************
" comment out
Plugin 'tomtom/tcomment_vim'

" ***********************************
" Unite
Plugin 'Shougo/unite.vim'
nnoremap <C-u> :Unite<CR>

" ***********************************
" NERD Tree
Plugin 'scrooloose/nerdtree'
nnoremap <C-n> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" ***********************************
" javascrip syntax
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'othree/javascript-libraries-syntax.vim'
"
" ***********************************
" coffee-script syntax
Plugin 'kchmck/vim-coffee-script'
"
" ***********************************
" jsx syntax
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
" riot syntax
Plugin 'nicklasos/vim-jsx-riot'

" ***********************************
" es2015 syntax
" Plugin 'othree/yajs.vim'
" Plugin 'isRuslan/vim-es6'
"
" ***********************************
" typescript syntax
Plugin 'leafgarland/typescript-vim'

" ***********************************
" blade syntax
Plugin 'jwalton512/vim-blade'

" ***********************************
" html5&css syntax
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'

" ***********************************
" elixir
Plugin 'elixir-editors/vim-elixir'

" ***********************************
" indent
Plugin 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" ***********************************
" misc
Plugin 'bronson/vim-trailing-whitespace'

" ***********************************
" wakatime
Plugin 'wakatime/vim-wakatime'

" ***********************************
Plugin 'tpope/vim-surround'

" ***********************************
" ruby, rails
Plugin 'slim-template/vim-slim'
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

Plugin 'tpope/vim-rails'

if !exists('loaded_matchit')
  runtime macros/matchit.vim
endif

" ***********************************
" syntacx test
Plugin 'scrooloose/syntastic.git'
Plugin 'pmsorhaindo/syntastic-local-eslint.vim'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby', 'javascript', 'coffee'] }
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_coffee_checkers = ['coffeelint']
" ここから下は Syntastic のおすすめの設定
" ref. https://github.com/scrooloose/syntastic#settings

" エラー行に sign を表示
" let g:syntastic_enable_signs = 1
" " location list を常に更新
" let g:syntastic_always_populate_loc_list = 0
" " location list を常に表示
" let g:syntastic_auto_loc_list = 0
" " ファイルを開いた時にチェックを実行する
" let g:syntastic_check_on_open = 1
" " :wq で終了する時もチェックする
" let g:syntastic_check_on_wq = 0

call vundle#end()
filetype plugin indent on

" ***********************************
" / Vundle

colorscheme github
" hi Normal ctermbg=none
" hi NonText ctermbg=none
hi Search guibg=orange guifg=white

" status line.
set laststatus=2
set statusline=%<%f\%m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%4v\ %l/%L
set showcmd

