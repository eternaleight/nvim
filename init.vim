"""""""""""""""
"-nvim config-"
"""""""""""""""

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'thinca/vim-quickrun', {'on': 'QuickRun'}
Plug 'higashi000/dps-kakkonan'

call plug#end()
 
" NERDTree SETTINGS
"
nmap <C-f> :NERDTreeToggle<CR>

" Airline SETTINGS
"""let g:airline_powerline_fonts = 1
"""let g:airline#extensions#tabline#enabled = 1
"""nmap <C-p> <Plug>AirlineSelectPrevTab
"""nmap <C-n> <Plug>AirlineSelectNextTaball plug#end()
"""let mapleader = ","

"  key bind
" ------------------------------------------------------------
" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>                           " init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>                           " init.vim読み込み
noremap <Space>w :<C-u>w<CR>                                    " ファイル保存

" Insert Mode
inoremap <silent> jj <ESC>
inoremap <S-Space> <Esc>

""""""""""""""""""""""""""""""""""""""
"":<C-u>w<CR>:" InsertMode抜けて保存""
""""""""""""""""""""""""""""""""""""""

" Inset mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>                                                                                                                     
inoremap <C-l> <Right>
inoremap <C-k> <Up>                          
inoremap <C-j> <Down>

" encode setting                                                                                                                                     
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


" ------------------------------------------------------------
" dein.vim set up
" ------------------------------------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif      

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif


if &compatible    
  set nocompatible               " Be iMproved    
endif    

" Pluginディレクトリのパス    
let s:dein_dir = expand('~/.vim/dein')    
" dein.vimのパス    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
" tomlのディレクトリへのパス    
let s:toml_dir = expand('~/.config/nvim')    
 
" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir    

" Required:    
if dein#load_state(s:dein_dir)    
  call dein#begin(s:dein_dir)    

  " 起動時に読み込むプラグイン群のtoml    
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  " Required:               
  call dein#end()           
  call dein#save_state()    
endif                        

" Required:                  
filetype plugin indent on                                   

" If you want to install not installed plugins on startup.    
if dein#check_install()                                       
  call dein#install()      
endif

"set number
set guifont=DroidSansMono\ Nerd\ Font\ 13
set guifontwide=DroidSansMono\ Nerd\ Font\ 13
set hlsearch
set smartindent
set laststatus=2
set wildmenu
set lines=70 columns=110
set ruler
set history=1000
set encoding=utf8
syntax enable

" PLUGIN SETTINGS
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'thinca/vim-quickrun', {'on': 'QuickRun'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'cohama/lexima.vim'

"matrix"
Plug 'uguu-org/vim-matrix-screensaver'

"c/c++ コンパイラ
Plug 'justmao945/vim-clang'

"カラーテーマ　ネブカドネザル"
Plug 'azumakuniyuki/vim-colorschemes'


"c# plugin"
Plug 'OmniSharp/omnisharp-vim'



call plug#end()

" NERDTree SETTINGS
nmap <C-f> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab


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
nnoremap ,t :<C-u>QuickRun<CR>

"/// コメントアウト色 設定
hi Comment ctermfg=gray
"/// :so $VIMRUNTIME/syntax/colortest.vim カラー表                                                                                     


" ウィンドウ分割を楽にする設定
nnoremap ,f :<C-u>sp<CR>
nnoremap ,v :<C-u>vs<CR>
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
nnoremap ,w :<C-u>set lines=70<CR>
nnoremap ,e :<C-u>set columns=135<CR>
nnoremap ,d :<C-u>set columns=115<CR>
nnoremap ,c :<C-u>set columns=80<CR>
"nnoremap ,<<C-w><
"nnoremap ,><C-w>>
"nnoremap ,+<C-w>+
"nnoremap ,-<C-w>-
"タブ操作
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt
nnoremap asp gT

" redocommand 設定
nnoremap m <C-r>
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
let g:colors_name = "BusyBee"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi TabLineSel -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#e2e2e5 guibg=#202020 guisp=#202020 gui=NONE ctermfg=254 ctermbg=234 cterm=NONE
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
hi Comment guifg=#808080 guibg=NONE guisp=NONE gui=italic ctermfg=5 ctermbg=NONE cterm=NONE
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
hi keyword guifg=#CCEE00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
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
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE

