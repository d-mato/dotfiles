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

" 矢印禁止
" function! HardMode ()
"   noremap <Up> <Nop>
"   noremap <Down> <Nop>
"   noremap <Left> <Nop>
"   noremap <Right> <Nop>
" endfunction
"
" function! EasyMode ()
"   noremap <Up> <Up>
"   noremap <Down> <Down>
"   noremap <Left> <Left>
"   noremap <Right> <Right>
" endfunction
"
" command! HardMode call HardMode()
" command! EasyMode call EasyMode()
"

" カーソル移動のマッピング
nnoremap <S-h> 0
nnoremap <S-l> $

" escを置換
noremap <C-j> <esc>
noremap! <C-j> <esc>

" タブ関連のキーバインド
" ************************************************


" ************************************************
" NeoBundle

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
"
" ***********************************
" textobj
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'lucapette/vim-textobj-underscore'

" ***********************************
" snippet
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" ***********************************
" color scheme
NeoBundle 'sickill/vim-monokai'
NeoBundle 'sjl/badwolf'
NeoBundle 'vim-scripts/proton'
NeoBundle 'flazz/vim-colorschemes'

" ***********************************
" markdown
"NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
au BufRead,BufNewFile *.md set filetype=markdown
let g:previm_open_cmd = 'open'

" ***********************************
" comment out
NeoBundle 'tomtom/tcomment_vim'

" ***********************************
" Unite
NeoBundle 'Shougo/unite.vim'
nnoremap <C-u> :Unite<CR>

" ***********************************
" NERD Tree
NeoBundle "scrooloose/nerdtree"
nnoremap <C-n> :NERDTreeToggle<CR>:NERDTreeMirror<CR>

" ***********************************
" javascrip syntax
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'posva/vim-vue'
" NeoBundle 'jelera/vim-javascript-syntax'
" NeoBundle 'othree/javascript-libraries-syntax.vim'
"
" ***********************************
" coffee-script syntax
NeoBundle "kchmck/vim-coffee-script"
"
" ***********************************
" jsx syntax
NeoBundle 'mxw/vim-jsx'
NeoBundle 'mtscout6/vim-cjsx'
" riot syntax
NeoBundle 'nicklasos/vim-jsx-riot'

" ***********************************
" es2015 syntax
" NeoBundle 'othree/yajs.vim'
" NeoBundle 'isRuslan/vim-es6'
"
" ***********************************
" typescript syntax
NeoBundle 'leafgarland/typescript-vim'

" ***********************************
" blade syntax
NeoBundle 'jwalton512/vim-blade'

" ***********************************
" html5&css syntax
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'

" ***********************************
" elixir
NeoBundle 'elixir-editors/vim-elixir'

" ***********************************
" indent
NeoBundle 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" ***********************************
" misc
NeoBundle 'bronson/vim-trailing-whitespace'

" ***********************************
" wakatime
NeoBundle 'wakatime/vim-wakatime'

" ***********************************
NeoBundle 'tpope/vim-surround'

" ***********************************
" ruby, rails
NeoBundle 'slim-template/vim-slim'
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

NeoBundle 'tpope/vim-rails'

if !exists('loaded_matchit')
  runtime macros/matchit.vim
endif

" ***********************************
" syntacx test
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'pmsorhaindo/syntastic-local-eslint.vim'
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

" ***********************************
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

colorscheme github
" hi Normal ctermbg=none
" hi NonText ctermbg=none
hi Search guibg=orange guifg=white

" status line.
set laststatus=2
set statusline=%<%f\%m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%4v\ %l/%L
set showcmd

