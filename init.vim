"""""""""""""""
"-nvim cnfig-"
"""""""""""""""
 

"  key bind
" ------------------------------------------------------------
" Normal Mode
" ------------------------------------------------------------
 
" init.vim呼び出し
cnoremap init :<C-u>edit $MYVIMRC<CR>                           
" init.vim読み込み
noremap <Space>s :source $MYVIMRC<CR>                           
" ファイル保存
noremap <Space>w :<C-u>w<CR>                                    
" ファイル終了
noremap <Space>q :<C-u>q<CR>                                    
" nerdtree開く
"noremap <Space>j :<C-u>:NERDTreeToggle<CR>                       
" nerdtree nj キーマップ無効化
" noremap nj <Nop>                       

" NERDTree SETTINGS
nmap <C-f> :NERDTreeToggle<CR>


let NERDTreeWinSize=26
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


"" ------------------------------------------------------------
"" dein.vim set up
"" ------------------------------------------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"" Required:
"set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
"
"" Required:
"if dein#load_state('~/.vim/dein')
"  call dein#begin('~/.vim/dein')
"
"  " Let dein manage dein
"  " Required:
"  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
"
"  " Add or remove your plugins here like this:
"  "call dein#add('Shougo/neosnippet.vim')
"  "call dein#add('Shougo/neosnippet-snippets')
"
"  " Required:
"  call dein#end()
"  call dein#save_state()
"endif      
"
"" Required:
"filetype plugin indent on
"syntax enable
"
"" If you want to install not installed plugins on startup.
""if dein#check_install()
""  call dein#install()
""endif
"
"
"if &compatible    
"  set nocompatible               " Be iMproved    
"endif    
"
"" Pluginディレクトリのパス    
"let s:dein_dir = expand('~/.vim/dein')    
"" dein.vimのパス    
"let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
"" tomlのディレクトリへのパス    
"let s:toml_dir = expand('~/.config/nvim')    
" 
"" Required:    
"execute 'set runtimepath^=' . s:dein_repo_dir    
"
"" Required:    
"if dein#load_state(s:dein_dir)    
"  call dein#begin(s:dein_dir)    
"
"  " 起動時に読み込むプラグイン群のtoml    
"  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
"
"  " 利用時に読み込むプラグインのtoml
"  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})
"
"  " Required:               
"  call dein#end()           
"  call dein#save_state()    
"endif                        
"
"" Required:                  
"filetype plugin indent on                                   
"
"" If you want to install not installed plugins on startup.    
"if dein#check_install()                                       
"  call dein#install()      
"endif
"
""set number
"set guifont=DroidSansMono\ Nerd\ Font\ 13
"set guifontwide=DroidSansMono\ Nerd\ Font\ 13
"set hlsearch
"set smartindent
"set laststatus=2
"set wildmenu
"set lines=80 columns=115
"set ruler
"set history=1000
"set encoding=utf8
"syntax enable
"
"
""""""""
"-2022-"
""""""""


"" options
set number  " 行番号を表示する
set encoding=UTF-8
set backspace=indent,eol,start  " バックスペースを有効にする
set updatetime=250  " 反映時間を短くする(デフォルトは4000ms)


""""""""""
""Plugin""
""""""""""

call plug#begin('~/.config/nvim/plugged')

"" vim-airline
" ステータスラインを表示する
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
"" fern.vim
Plug 'lambdalisue/fern.vim'
" diffを表示する
Plug 'lambdalisue/fern-git-status.vim'
" アイコンを表示する
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" アイコンに色をつける
"Plug 'lambdalisue/glyph-palette.vim'

"" git
" diffを表示する
Plug 'airblade/vim-gitgutter'
" gitコマンドを使う
Plug 'tpope/vim-fugitive'
" GitHubを開く
Plug 'tpope/vim-rhubarb'

"" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" PLUGIN SETTINGS
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'thinca/vim-quickrun', {'on': 'QuickRun'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'cohama/lexima.vim'

"matrix"
Plug 'uguu-org/vim-matrix-screensaver'

"c/c++ コンパイラ
Plug 'justmao945/vim-clang'

"カラーテーマ　ネブカドネザル"
Plug 'azumakuniyuki/vim-colorschemes'
Plug 'cormacrelf/vim-colors-github'

"c# plugin"
Plug 'OmniSharp/omnisharp-vim'


Plug 'Shougo/neosnippet-snippets'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/yajs.vim'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier'
Plug 'othree/es.next.syntax.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'easymotion/vim-easymotion'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
Plug 'cocopon/iceberg.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'higashi000/dps-kakkonan'

Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'maxmellon/vim-jsx-pretty', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'], 'do': 'npm install' }


Plug 'Shougo/neocomplete.vim'

Plug 'alvan/vim-closetag'

  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'

Plug 'simeji/winresizer'
Plug 'SirVer/ultisnips'
Plug 'tyru/caw.vim'
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'


call plug#end()

"defx
"nnoremap <silent>sf :<C-u>Defx -listed -resume
"      \ -columns=indent:mark:icon:icons:filename:git:size
"      \ -buffer-name=tab`tabpagenr()`
"      \ `expand('%:p:h')` -search=`expand('%:p')`<CR>
"nnoremap <silent>fi :<C-u>Defx -new `expand('%:p:h')` -search=`expand('%:p')`<CR>
"html閉じタグ<>自動補完 let g:closetag_filenames = '*.js,*.jsx,*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'

"""""""""
"""End"""
"""""""""

"" vim-airline
" VSCodeのテーマ
let g:airline_theme = 'codedark'
" powerlineを有効にする
"let g:airline_powerline_fonts = 1
" タブラインを表示する
"let g:airline#extensions#tabline#enabled = 1
" ステータスラインに表示する項目を変更する
" 参考: https://original-game.com/vim-airline/
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ ['z']
  \ ]
let g:airline_section_c = '%t %M'
"let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
"let g:airline#extensions#hunks#non_zero_only = 1 " 変更がなければdiffの行数を表示しない
"" タブラインの表示を変更する
"" 参考: https://www.reddit.com/r/vim/comments/crs61u/best_airline_settings/
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#show_buffers = 1
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_tabs = 1
"let g:airline#extensions#tabline#show_tab_nr = 0
"let g:airline#extensions#tabline#show_tab_type = 1
"let g:airline#extensions#tabline#show_close_button = 0


"" ferm.vim
" ファイルツリーを表示/非表示する
"nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
" アイコンを表示する
let g:fern#renderer = 'nerdfont'
" アイコンに色をつける
"augroup my-glyph-palette
"  autocmd! *
"  autocmd FileType fern call glyph_palette#apply()
"  autocmd FileType nerdtree,startify call glyph_palette#apply()
"augroup END


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
nnoremap gb :Gbrowse<CR>
vnoremap gb :Gbrowse<CR>


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
nnoremap <C-p> :call FzfOmniFiles()<CR>

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""new""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""モード  再割当無し  再割当有り
"""ノーマルモード＋ビジュアルモード  noremap map
"""コマンドラインモード＋インサートモード  noremap!  map!
"""ノーマルモード  nnoremap  nmap
"""ビジュアル(選択)モード  vnoremap  vmap
"""コマンドラインモード  cnoremap  cmap
"""インサート(挿入)モード  inoremap  imap
""
""コマンド名([n/v/c/i][nore]map]) <オプション> ユーザーが入力する操作 Vimが解釈する操作
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
""検索文字列のハイライト解除                                                                             
nnoremap m :<C-u>nohlsearch<cr><Esc>
"
"
""検索語が画面の真ん中に来るようにする
noremap n nhzz 
noremap N Nhzz 
"nmap * *zz 
"nmap # #zz 
"nmap g* g*zz 
"nmap g# g#zz 






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" NERDTree SETTINGS
nmap <C-f> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1



" Airline SETTINGS
let g:airline_powerline_fonts = 1

" Esc SETTINGS

" /// Enable Netrw (default file browser)
" filetype plugin on
" /// Netrw SETTINGS
" let g:netwr_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_winsize = 30
" let g:netrw_sizestyle = "H"
" let g:netrw_timefmt = "%Y/%m/%d(%a) %H:%M:%S"
" let g:netrw_preview = 1

"/// SPLIT BORDER SETTINGS

"/// java QuickRun ショートカット
noremap <Space>t :<C-u>QuickRun<CR>



" ウィンドウ分割を楽にする設定
nnoremap <C-w>- :<C-u>sp<CR>
nnoremap <C-w>= :<C-u>vs<CR>
nnoremap <C-w>x :<C-u>q<CR>
nnoremap ,q :<C-u>q<CR>
nnoremap ,Q :<C-u>bd<CR>
nnoremap ,j <C-w>j
nnoremap ,k <C-w>k
nnoremap ,l <C-w>l
nnoremap ,h <C-w>h
nnoremap ,J <C-w>J
nnoremap ,K <C-w>K
nnoremap ,L <C-w>L
nnoremap ,H <C-w>H
nnoremap ,w :<C-u>set lines=80<CR>
nnoremap ,e :<C-u>set columns=200<CR>
nnoremap ,d :<C-u>set columns=115<CR>
nnoremap ,c :<C-u>set columns=80<CR>
"nnoremap <C-w>> 50<C-w>>
"nnoremap <C-w>< 50<C-w><
"nnoremap ,+<C-w>+
"nnoremap ,-<C-w>-
"タブ操作
"nnoremap st :<C-u>tabnew<CR>
"nnoremap sn gt
"nnoremap asp gT

" redocommand 設定
"nnoremap m <C-r>

nnoremap - $


noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>

" Vim color file - BusyBee
" Generated by http://bytefluent.com/vivify 2021-11-10
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
"let g:colors_name = "BusyBee"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
"i Normal guifg=#e2e2e5 guibg=#202020 guisp=#202020 gui=NONE ctermfg=254 ctermbg=234 cterm=NONE
"hi CTagsImport -- no settings --
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi DiffChange -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Underlined -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
"hi default -- no settings --
hi SpecialComment guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Typedef guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Title guifg=#f6f3e8 guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi Folded guifg=#a0a8b0 guibg=#384048 guisp=#384048 gui=NONE ctermfg=103 ctermbg=238 cterm=NONE
hi PreCondit guifg=#faf4c6 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Include guifg=#faf4c6 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#939395 guibg=#303030 guisp=#303030 gui=NONE ctermfg=246 ctermbg=236 cterm=NONE
hi NonText guifg=#808080 guibg=#202020 guisp=#202020 gui=NONE ctermfg=8 ctermbg=234 cterm=NONE
hi Debug guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#202020 guisp=#202020 gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi Identifier guifg=#b1d631 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Conditional guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Todo guifg=#8f8f8f guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
hi Special guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi LineNr guifg=#303030 guibg=#202020 guisp=#202020 gui=NONE ctermfg=236 ctermbg=234 cterm=NONE
hi StatusLine guifg=#d3d3d5 guibg=#303030 guisp=#303030 gui=NONE ctermfg=188 ctermbg=236 cterm=NONE
hi Label guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#000000 guibg=#b1d631 guisp=#b1d631 gui=NONE ctermfg=NONE ctermbg=149 cterm=NONE
hi Delimiter guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Statement guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Comment guifg=#808080 guibg=NONE guisp=NONE gui=italic ctermfg=8 ctermbg=NONE cterm=NONE
hi Character guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Float guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Number guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=170 ctermbg=NONE cterm=NONE
hi Boolean guifg=#b1d631 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Operator guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#202020 guisp=#202020 gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi CursorColumn guifg=NONE guibg=#202020 guisp=#202020 gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi Define guifg=#faf4c6 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Function guifg=#ffff00 guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
hi PreProc guifg=#faf4c6 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi Visual guifg=#faf4c6 guibg=#3c414c guisp=#3c414c gui=NONE ctermfg=230 ctermbg=239 cterm=NONE
hi VertSplit guifg=#444444 guibg=#303030 guisp=#303030 gui=NONE ctermfg=238 ctermbg=236 cterm=NONE
hi Exception guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Type guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Cursor guifg=NONE guibg=#626262 guisp=#626262 gui=NONE ctermfg=NONE ctermbg=241 cterm=NONE
hi PMenu guifg=#ffffff guibg=#202020 guisp=#202020 gui=NONE ctermfg=15 ctermbg=234 cterm=NONE
hi SpecialKey guifg=#808080 guibg=#343434 guisp=#343434 gui=NONE ctermfg=8 ctermbg=236 cterm=NONE
hi Constant guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Tag guifg=#ff9800 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi String guifg=#606060 guibg=NONE guisp=NONE gui=NONE ctermfg=170 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#303030 guisp=#303030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi MatchParen guifg=#d0ffc0 guibg=#202020 guisp=#202020 gui=bold ctermfg=193 ctermbg=234 cterm=bold
hi Repeat guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Structure guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Macro guifg=#faf4c6 guibg=NONE guisp=NONE gui=NONE ctermfg=230 ctermbg=NONE cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi pythonimport guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#f00000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#7e8aa2 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#009000 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=252 ctermbg=234 cterm=underline
hi lcursor guifg=#404040 guibg=#8fff8b guisp=#8fff8b gui=NONE ctermfg=238 ctermbg=120 cterm=NONE
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi keyword guifg=#CCEE00 guibg=NONE guisp=NONE gui=NONE ctermfg=122 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi plsqlconditional guifg=#99CCFF guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlstorage guifg=#f5deb3 guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#F0D0C0 guibg=NONE guisp=NONE gui=italic ctermfg=224 ctermbg=NONE cterm=NONE
hi plsqlrepeat guifg=#99CCFF guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi plsqlfunction guifg=#FFAAAA guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi attribute guifg=#CCCCCC guibg=NONE guisp=NONE gui=italic ctermfg=252 ctermbg=NONE cterm=NONE
hi rubypseudovariable guifg=#339999 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi rubystringdelimiter guifg=#66FF00 guibg=NONE guisp=NONE gui=NONE ctermfg=82 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#339999 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi rubyinterpolation guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=170 ctermbg=NONE cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=170 ctermbg=NONE cterm=NONE


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
" html 閉じタグ補完<>
"augroup MyXML
"    autocmd!
"    autocmd Filetype html inoremap <buffer> </ </<C-x><C-o><ESC>F>a<CR><ESC>O
"augroup END
" easymotion \  バックスラッシュ1回
map <C-l> <Plug>(easymotion-prefix)
"
" js 閉じタグ補完<>
"augroup MyXML
"    autocmd!
"    autocmd Filetype javascript inoremap <buffer> </ </<C-x><C-o><ESC>F>a<CR><ESC>O
"augroup END

" js 拡張子でも有効にする
let g:jsx_ext_required = 0
" @jsx React.DOM プラグマがある場合のみ有効にする
let g:jsx_pragma_required = 1

"colorscheme
colorscheme iceberg
colorscheme 256_noir
colorscheme two-firewatch
colorscheme fogbell
colorscheme fogbell_lite
colorscheme orbital 
colorscheme sierra
colorscheme snow
colorscheme nord 
colorscheme lucid 
colorscheme scheakur 
colorscheme minimalist 
colorscheme rdark-terminal2

"default"""""""""""""""
colorscheme sunbather 
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


"if &compatible
"  set nocompatible
"endif
"set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
"if dein#load_state('~/.cache/dein')
"  call dein#begin('~/.cache/dein')
"  call dein#end()
"  call dein#save_state()
"endif
"filetype plugin indent on
"syntax enable
"
"
" if &compatible
"   set nocompatible
" endif
" set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
" if dein#load_state('~/.cache/dein')
"   call dein#begin('~/.cache/dein')
"   call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
"   call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
"   call dein#end()
"   call dein#save_state()
" endif
" filetype plugin indent on
" syntax enable
"
"
"   if &compatible
"    set nocompatible
"  endif
"  set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
"  if dein#load_state('~/.cache/dein')
"    call dein#begin('~/.cache/dein')
"    call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
"    call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
"    call dein#end()
"    call dein#save_state()
"  endif
" if dein#check_install()
"  call dein#install()
" endif
"  filetype plugin indent on
"  syntax enable
"
""python2 停止
"let g:loaded_python_provider = 0
"

"

"LightLineにcoc.nvimのステータスを載せます
"let g:lightlce
"fline = {
"  \'active': {
"    \'right': [
"      \['coc']
"    \]
"  \},
"  \'component_function': {
"    \'coc': 'coc#status'
"  \}
"\}

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
nmap <silent> <space>fmt <Plug>(coc-format)

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
let g:user_emmet_leader_key = '<C-e>'
