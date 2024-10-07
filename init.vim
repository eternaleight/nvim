"""""""""""""""
"-nvim config-"
"""""""""""""""
 

" key bind
" ------------------------------------------------------------
" Normal Mode
" ------------------------------------------------------------
 
" init.vim呼び出し
cnoremap init :<C-u>edit $MYVIMRC<CR>                           
" init.vim読み込み
noremap <Space>s :source $MYVIMRC<CR>                           
" ファイル保存
" noremap <Space>w :<C-u>w<CR>                                    
" ファイル終了
noremap <Space>q :<C-u>q<CR>                                    
" nerdtree開く
"noremap <Space>j :<C-u>:NERDTreeToggle<CR>                       
" nerdtree nj キーマップ無効化
" noremap nj <Nop>                       

" NERDTree SETTINGS
nmap <C-f> :NERDTreeToggle<CR>
" noremap <Space>f :ClangFormat<CR>

" noremap <Space>f :silent! !clang-format -i %<CR>
"
noremap <Space>p :Prettier<CR>
noremap <Space>f :GoFmt<CR>


let NERDTreeWinSize=18
""""""""""""""""""""""""""""""""""""""
"":<C-u>w<CR>:" InsertMode抜けて保存""
""""""""""""""""""""""""""""""""""""""

" ------------------------------------------------------------
" Insert Mode
" ------------------------------------------------------------
"esc
"inoremap <silent> jj <ESC>
"esc保存
inoremap <silent> jj <ESC>:<C-u>w<CR>
inoremap <silent> jf <ESC>
" inoremap <silent> fj <ESC>:<C-u>w<CR>
inoremap <silent> jk <ESC>
" inoremap <silent> fj <ESC>:<C-u>w<CR>

" Inset mode movekey bind
inoremap <C-d> <BS>
inoremap <C-b> <Left>
inoremap <C-f> <Right>

inoremap <C-k> <Up>                          
inoremap <C-j> <Down>


" ------------------------------------------------------------
" encode setting
" ------------------------------------------------------------

set encoding=utf-8
" edita setting
set number                                                      " 行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完
" cursorl setting
set ruler                                                       " カーソルの位置表示
set cursorline                                                  " カーソルハイライト
" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=2                                                   " tabは半角2文字
set shiftwidth=2                                                " tabの幅


""""""""
"-2022-"
""""""""


"" options
set encoding=UTF-8
set backspace=indent,eol,start  " バックスペースを有効にする
" set updatetime=250  " 反映時間を短くする(デフォルトは4000ms)


""""""""""
""Plugin""
""""""""""

call plug#begin('~/.config/nvim/plugged')

" === UI関連 ===
Plug 'vim-airline/vim-airline'            " ステータスラインを強化
Plug 'tomasiser/vim-code-dark'            " カラースキーム
Plug 'cormacrelf/vim-colors-github'       " カラースキーム
Plug 'cocopon/iceberg.vim'                " カラースキーム
Plug 'rafi/awesome-vim-colorschemes'      " カラースキーム
Plug 'EdenEast/nightfox.nvim'             " カラースキーム
Plug 'azumakuniyuki/vim-colorschemes'     " カラースキーム
Plug 'higashi000/dps-kakkonan'            " カラースキーム
Plug 'simeji/winresizer'                  " 画面分割サイズ調整
Plug 'uguu-org/vim-matrix-screensaver'    " マトリックススクリーンセーバー
Plug 'ryanoasis/vim-devicons'

" === ファイル管理 & サイドバー ===
Plug 'lambdalisue/fern.vim'               " ファイルツリー
Plug 'lambdalisue/fern-git-status.vim'    " Gitのdiff表示
Plug 'lambdalisue/nerdfont.vim'           " アイコン表示
Plug 'lambdalisue/fern-renderer-nerdfont.vim' " ファイルツリーのアイコンレンダリング
Plug 'preservim/nerdtree'                 " ファイルツリー
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " ファイルツリー
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " ファイル検索
Plug 'junegunn/fzf.vim'                   " ファイル検索

" === Git関連 ===
Plug 'airblade/vim-gitgutter'             " Git diff表示
Plug 'tpope/vim-fugitive'                 " Gitコマンド
Plug 'tpope/vim-rhubarb'                  " GitHub関連機能

" === コード編集ユーティリティ ===
Plug 'tpope/vim-commentary'               " コメント操作
Plug 'numToStr/Comment.nvim'              " コメント操作
Plug 'cohama/lexima.vim'                  " オートクローズペア
Plug 'easymotion/vim-easymotion'          " 移動強化
Plug 'prettier/vim-prettier'              " コード整形
Plug 'skanehira/jumpcursor.vim'           " ショートカット
Plug 'jackMort/ChatGPT.nvim'              " ショートカット

" === スニペット関連 ===
Plug 'Shougo/neosnippet-snippets'

" === 実行 & テストツール ===
Plug 'thinca/vim-quickrun'

" === 言語サポート: JavaScript & TypeScript ===
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }               " JavaScriptのシンタックスハイライトとインデントを強化
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }                       " ES6以上のJavaScriptシンタックスハイライト
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }            " 最新のJavaScriptのシンタックスサポート
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] } " 人気のあるJavaScriptライブラリのシンタックスハイライト
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx'] }              " JSXのシンタックスハイライトとインデント
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' } " JavaScriptのコード解析ツール
Plug 'neoclide/coc.nvim', {'branch': 'release'}                                          " 補完、診断、Lint、IntelliSenseのサポートを提供
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'} " Tailwind CSSの補完とLint
Plug 'mxw/vim-jsx'                                                                       " JSXのシンタックスとインデントサポート

" === 言語サポート: HTML/CSS ===
Plug 'othree/html5.vim'                   " HTML5のシンタックスとスニペットサポート
Plug 'hail2u/vim-css3-syntax'             " CSS3のシンタックスハイライト
Plug 'mattn/emmet-vim'                    " HTML/CSSのための高速な記述ツール

" === 言語サポート: C/C++ ===
Plug 'justmao945/vim-clang'               " C/C++のオートコンプリートとシンタックスチェック

" === 言語サポート: C# ===
Plug 'OmniSharp/omnisharp-vim'            " C#のインテリセンスと補完

" === 言語サポート: Go ===
Plug 'darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' } " Go言語のフォーマッター

" === 言語サポート: Dart & Flutter ===
Plug 'thosakwe/vim-flutter', { 'for': ['dart', 'flutter'] } " FlutterのコマンドとDartのサポート
Plug 'dart-lang/dart-vim-plugin', { 'for': 'dart' } " Dart言語のサポート

" === 言語サポート: YAML & Ansible ===
Plug 'chase/vim-ansible-yaml', { 'for': 'yaml' } " AnsibleのためのYAMLシンタックスハイライト

" === 言語サポート: Vue ===
Plug 'leafOfTree/vim-vue-plugin', { 'for': 'vue' } " Vue.jsのシンタックスハイライトとスニペット

" === エディタユーティリティ ===
Plug 'Shougo/neocomplete.vim'             " 補完機能の提供
Plug 'alvan/vim-closetag'                 " HTML/XMLの閉じタグを自動で補完
Plug 'simeji/winresizer'                  " ウィンドウのリサイズユーティリティ
Plug 'tyru/caw.vim'                       " コメントの追加/削除のユーティリティ
Plug 'skanehira/jumpcursor.vim'           " カーソルのジャンプユーティリティ
Plug 'numToStr/Comment.nvim'              " コメントの追加/削除のユーティリティ

" === エディタ拡張 ===
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " モダンなファイルエクスプローラ
Plug 'roxma/nvim-yarp'                    " NeovimのRPCサポート
Plug 'roxma/vim-hug-neovim-rpc'           " NeovimのPython3 RPCサポート
Plug 'SirVer/ultisnips'                   " スニペットエンジン
Plug 'Shougo/unite.vim'                   " 非同期検索&表示ツール
Plug 'ujihisa/unite-colorscheme'          " カラースキームの検索&適用ツール
Plug 'EdenEast/nightfox.nvim'             " カラースキーム
Plug 'nikvdp/ejs-syntax'                  " EJSのシンタックスハイライト
Plug 'jackMort/ChatGPT.nvim'              " ChatGPTとのインタラクション
Plug 'thosakwe/vim-flutter'               " Flutterのサポート
Plug 'reisub0/hot-reload.vim'             " Flutterのホットリロードサポート
Plug 'dart-lang/dart-vim-plugin'          " Dartのサポート
Plug 'prisma/vim-prisma'                  " Prismaのサポート

Plug 'hashivim/vim-terraform'

" Rust 開発用プラグイン
Plug 'rust-lang/rust.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mrcjkb/rustaceanvim'

Plug 'hrsh7th/nvim-cmp'  " 補完エンジン
Plug 'hrsh7th/cmp-nvim-lsp'  " LSP補完用のソース
Plug 'hrsh7th/cmp-buffer'  " バッファ補完用のソース
Plug 'hrsh7th/cmp-path'  " パス補完用のソース
Plug 'hrsh7th/cmp-cmdline'  " コマンドライン補完用のソース

call plug#end()

" Somewhere after plug#end()
lua require('Comment').setup()

"""""""""
"""End"""
"""""""""


"" vim-airline
" VSCodeのテーマ
let g:airline_theme = 'codedark'

let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
let g:airline_section_c = '%t %M'

" アイコンを表示する
let g:fern#renderer = 'nerdfont'


"" git操作
" 前の変更箇所へ移動する
nnoremap g[ :GitGutterPrevHunk<CR>
" 次の変更箇所へ移動する
nnoremap g] :GitGutterNextHunk<CR>
" diffをハイライトする
nnoremap gh :GitGutterLineHighlightsToggle<CR>
" カーソル行のdiffを表示する
nnoremap gp :GitGutterPreviewHunk<CR>
" 記号の色を変更する
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red
" 該当のファイルをGitHubで開く
" nnoremap gb :Gbrowse<CR>
" vnoremap gb :Gbrowse<CR>


"" fzf
" ファイル検索を開く
" git管理されていれば:GFiles、そうでなければ:Filesを実行する
fun! FzfOmniFiles()
  let is_git = system('git status')
  if v:shell_error
    :Files
  else
    :GitFiles
  endif
endfun
nnoremap fi :call FzfOmniFiles()<CR>

" 文字列検索を開く
" <S-?>でプレビューを表示/非表示する
command! -bang -nargs=* Rg
\ call fzf#vim#grep(
\ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
\ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 3..'}, 'up:60%')
\ : fzf#vim#with_preview({'options': '--exact --delimiter : --nth 3..'}, 'right:50%:hidden', '?'),
\ <bang>0)
nnoremap <C-g> :Rg<CR>

" カーソル位置の単語をファイル検索する
nnoremap fr vawy:Rg <C-R>"<CR>
" 選択した単語をファイル検索する
xnoremap fr y:Rg <C-R>"<CR>

" バッファ検索を開く
nnoremap fb :Buffers<CR>
" fpでバッファの中で1つ前に開いたファイルを開く
nnoremap fp :Buffers<CR><CR>
" 開いているファイルの文字列検索を開く
nnoremap fl :BLines<CR>
" マーク検索を開く
nnoremap fm :Marks<CR>
" ファイル閲覧履歴検索を開く
nnoremap fh :History<CR>
" コミット履歴検索を開く
nnoremap fc :Commits<CR>

" ------------------------------------------------------------
" new
" ------------------------------------------------------------
" モード  再割当無し  再割当有り
" ノーマルモード＋ビジュアルモード  noremap map
" コマンドラインモード＋インサートモード  noremap!  map!
" ノーマルモード  nnoremap  nmap
" ビジュアル(選択)モード  vnoremap  vmap
" コマンドラインモード  cnoremap  cmap
" インサート(挿入)モード  inoremap  imap
"
" コマンド名([n/v/c/i][nore]map]) <オプション> ユーザーが入力する操作 Vimが解釈する操作
" ------------------------------------------------------------
"
""検索文字列のハイライト解除                                                                             
nnoremap m :<C-u>nohlsearch<cr><Esc>
"
"
""検索語が画面の真ん中に来るようにする
noremap n nhzz 
noremap N Nhzz 

" ------------------------------------------------------------

" NERDTree SETTINGS
nmap <C-f> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1

" Airline SETTINGS
let g:airline_powerline_fonts = 1

"/// java QuickRun ショートカット
noremap <Space>j :<C-u>QuickRun<CR>


" ウィンドウ分割を楽にする設定
nnoremap ,- :<C-u>sp<CR>
nnoremap ,= :<C-u>vs<CR>
nnoremap ,x :<C-u> :close<CR>
nnoremap ,q :<C-u>q<CR>
nnoremap ,Q :<C-u>bd<CR>
nnoremap ,J <C-w>J
nnoremap ,K <C-w>K
nnoremap ,L <C-w>L
nnoremap ,H <C-w>H
nnoremap ,w :<C-u>set lines=80<CR>
nnoremap ,e :<C-u>set columns=200<CR>
nnoremap ,d :<C-u>set columns=115<CR>
nnoremap ,c :<C-u>set columns=80<CR>
nnoremap - $
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>



" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

" tb 新しいタブを一番右に作る
map <silent> [Tag]b :tablast <bar> tabnew<CR>
" tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tag]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tag]p :tabprevious<CR>
"
" 識別子ヘルプ
nnoremap <C-k> K
" 10行下移動
nnoremap J 10<Down>
" 10行左移動
nnoremap H 15<Left>
" 10行右移
nnoremap L 15<Right>
" 10行上移動
nnoremap K 10<Up>
" easymotion \  バックスラッシュ1回
nmap ;j <Plug>(easymotion-prefix)
nmap 'j <Plug>(easymotion-prefix)
nmap [j <Plug>(jumpcursor-jump)
" html閉じタグ<>自動補完
let g:closetag_filenames = '*.js,*.jsx,*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'

" js 拡張子でも有効にする
let g:jsx_ext_required = 0
" @jsx React.DOM プラグマがある場合のみ有効にする
let g:jsx_pragma_required = 1

"colorscheme"""""""""""
"colorscheme sunbather 
"colorscheme 256_noir
"colorscheme two-firewatch
"colorscheme fogbell
"colorscheme fogbell_lite
"colorscheme orbital 
"colorscheme sierra
"colorscheme snow
"colorscheme nord 
"colorscheme lucid 
"colorscheme scheakur 
"colorscheme minimalist 
"colorscheme rdark-terminal2
"自作カラースキーム bubblegum
"colorscheme bubblegum-colorscheme 

"default"""""""""""""""
colorscheme iceberg
"""""""""""""""""""""""

let g:did_install_default_menus = 1
let g:did_install_syntax_menu   = 1
let g:did_indent_on             = 1
let g:did_load_filetypes        = 1
let g:did_load_ftplugin         = 1
let g:loaded_2html_plugin       = 1
let g:loaded_gzip               = 1
let g:loaded_man                = 1
let g:loaded_matchit            = 1
let g:loaded_matchparen         = 1
let g:loaded_netrwPlugin        = 1
let g:loaded_remote_plugins     = 1
let g:loaded_shada_plugin       = 1
let g:loaded_spellfile_plugin   = 1
let g:loaded_tarPlugin          = 1
let g:loaded_tutor_mode_plugin  = 1
let g:loaded_zipPlugin          = 1
let g:skip_loading_mswin        = 1

"esc
inoremap <C-j> <esc>

set ambiwidth=single

""ファイラdefx.nvim設定
"nnoremap <silent>sf :<C-u>Defx -listed -resume
"      \ -columns=indent:mark:icon:icons:filename:git:size
"      \ -buffer-name=tab`tabpagenr()`
"      \ `expand('%:p:h')` -search=`expand('%:p')`<CR>
"nnoremap <silent>fi :<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>

"bg-color
hi Normal guifg=#e2e2e5 guibg=#202020 guisp=#202020 gui=NONE ctermfg=254 ctermbg=234 cterm=NONE


"Diagnosticsの、左横のアイコンの色設定
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172

"以下ショートカット

"ノーマルモードで
"スペース2回でCocList
nmap <silent> <space>co :<C-u>CocList<cr>
"スペースhでHover
nmap <silent> <space>h :<C-u>call CocAction('doHover')<cr>
"スペースdfでDefinition
nmap <silent> <space>df <Plug>(coc-definition)
"スペースrfでReferences
nmap <silent> <space>rf <Plug>(coc-references)
"スペースrnでRename
nmap <silent> <space>rn <Plug>(coc-rename)
"スペースfmtでFormat
" nmap <silent> <space>fmt <Plug>(coc-format)

"coc imprement warning 文字色
highlight CocWarningSign ctermfg=0 ctermbg=172
"172

"" キーマップ
" タブを作成する
nnoremap <C-c> :tabnew<CR>
" 前のタブを開く
nnoremap <C-j> :tabp<CR>
" 次のタブを開く
nnoremap <C-k> :tabn<CR>
" タブを閉じる
nnoremap tx :tabclose<CR>

"tab切り替え
nmap <C-j> <Plug>AirlineSelectPrevTab
nmap <C-k> <Plug>AirlineSelectNextTab

"バッファ切り替え
nnoremap <silent> <C-o> :bprev<CR>
nnoremap <silent> <C-p> :bnext<CR>
nnoremap <silent> <C-x> :bw<CR>
nnoremap <silent> <C-z> :bw<CR>

inoremap <C-c> <Esc>

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-n>"
"let g:UltiSnipsJumpBackwardTrigger="<c-p>"

""" for coc.nvim
let g:UltiSnipsExpandTrigger="<Nop>"
let g:UltiSnipsJumpForwardTrigger="<C-n>"
let g:UltiSnipsJumpBackwardTrigger="<C-p>"
let g:coc_snippet_next = '<C-n>'
let g:coc_snippet_prev = '<C-p>'

"" coc.nvim
imap <C-l> <Plug>(coc-snippets-expand)
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"emmet key
" let g:user_emmet_leader_key = '<C-e>'
imap <C-e> <Plug>(emmet-expand-abbr)


"window移動
"window右
nnoremap <C-h> <C-w>h
"window左
nnoremap <C-l> <C-w>l
"tab右
nnoremap <C-j> <C-w>j
"tab左
nnoremap <C-k> <C-w>k
"window resize size
let g:winresizer_vert_resize = 2

" set fillchars+=vert:\

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

""ejs""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.ejs set filetype=ejs
autocmd BufNewFile,BufRead *._ejs set filetype=ejs

function! s:DetectEjs()
    if getline(1) =~ '^#!.*\<ejs\>'
        set filetype=ejs
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectEjs()
"""""""""""""""""""""""""""""""""""""""""""""""

"neovimからクリップボードへのアクセス
set clipboard=unnamed
"*y クリップボードにヤンク
:silent !pbcopy

"*p クリップボードにペースト
:r !pbpaste

" Neovim performance settings
set lazyredraw
set ttyfast
set confirm
set clipboard+=unnamedplus
set hidden
set updatetime=100
set nobackup

" Coc.nvim settings
let g:coc_global_extensions = ['coc-omnisharp']

" Dartファイルに対してのみsmartindentを有効
autocmd FileType dart setlocal smartindent

" ClangFormat設定
let g:clang_format#style_options = {
 \ "BasedOnStyle" : "LLVM",
 \ "IndentWidth" : 2,
 \ "TabWidth" : 2,
 \ "BreakBeforeBraces" : "Attach",
 \ "AllowShortFunctionsOnASingleLine" : "None",
 \ "AccessModifierOffset" : -2,
 \ "ColumnLimit" : 0,
 \ "SortIncludes" : "false",
 \ "BreakConstructorInitializersBeforeComma": "true",
 \ "AlignOperands": "false"}
let g:clang_format#command = 'clang-format'

" C++ ClangFormat
" 保存で現在編集しているファイルの整形
" autocmd BufWritePost *.cpp,*.h silent! !clang-format -i %

" 保存でdir内のファイル全体整形
" autocmd BufWritePost *.cpp,*.h silent! !find . -name '*.cpp' -or -name '*.h' | xargs clang-format -i

" Terraformの設定
autocmd BufNewFile,BufRead *.tf set filetype=terraform

" WinSeparator(旧VertSplit)の色を設定
highlight WinSeparator ctermfg=233 ctermbg=235 guifg=#000000 guibg=#000000

" Rustファイルを保存時に自動でフォーマット
let g:rustfmt_autosave = 1

" " RustのLSP設定
" lua << EOF
" require'lspconfig'.rust_analyzer.setup({
"   on_attach = function(client, bufnr)
"     -- キーマッピングやその他の設定をここに記述
"   end,
"   settings = {
"     ["rust-analyzer"] = {
"       cargo = { loadOutDirsFromCheck = true },
"       procMacro = { enable = true },
"     },
"   }
" })
" EOF

"cmp コード補完
lua << EOF

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      -- スニペットエンジンの設定。例えば `vim-vsnip` を使用する場合
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
   -- ['<C-b>'] = cmp.mapping.scroll_docs(-4),
   -- ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-n>'] = cmp.mapping.select_next_item(), -- 次の項目を選択
    ['<C-l>'] = cmp.mapping.select_prev_item(), -- 前の項目を選択
   -- ['<Tab>'] = cmp.mapping.select_next_item(), -- 次の項目を選択
   -- ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- 前の項目を選択
    ['<C-o>'] = cmp.mapping.select_prev_item(), -- 前の項目を選択
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer' },
  })
})
EOF

" Pmenuの背景色を変更する
highlight Pmenu ctermbg=250 guibg=#3c3836

source ~/.config/nvim/fzf_colors.vim

" Scroll down in hover window
nnoremap <silent> <C-j> :call coc#float#scroll(1)<CR>
" Scroll up in hover window
nnoremap <silent> <C-k> :call coc#float#scroll(0)<CR>
