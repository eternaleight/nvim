-- nvim config

-- key bind
-- ------------------------------------------------------------
-- Normal Mode
-- ------------------------------------------------------------

-- init.vim呼び出し
vim.api.nvim_set_keymap('c', 'init', ':edit $MYVIMRC<CR>', { noremap = true })
-- init.vim読み込み
vim.api.nvim_set_keymap('n', '<Space>s', ':source $MYVIMRC<CR>', { noremap = true })
-- ファイル保存
-- vim.api.nvim_set_keymap('n', '<Space>w', ':w<CR>', { noremap = true })
-- ファイル終了
vim.api.nvim_set_keymap('n', '<Space>q', ':q<CR>', { noremap = true })
-- nerdtree開く
-- vim.api.nvim_set_keymap('n', '<Space>j', ':NERDTreeToggle<CR>', { noremap = true })
-- nerdtree nj キーマップ無効化
-- vim.api.nvim_set_keymap('n', 'nj', '<Nop>', { noremap = true })

-- NERDTree SETTINGS
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeToggle<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<Space>f', ':ClangFormat<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Space>p', ':Prettier<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>f', ':GoFmt<CR>', { noremap = true })

vim.g.NERDTreeWinSize = 18

-- ------------------------------------------------------------
-- Insert Mode
-- ------------------------------------------------------------
-- esc保存
vim.api.nvim_set_keymap('i', 'jj', '<ESC>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jf', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })

-- Inset mode movekey bind
vim.api.nvim_set_keymap('i', '<C-d>', '<BS>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-b>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-f>', '<Right>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })

-- ------------------------------------------------------------
-- encode setting
-- ------------------------------------------------------------

vim.o.encoding = 'utf-8'
-- edita setting
vim.wo.number = true -- 行番号表示
vim.o.splitbelow = true -- 水平分割時に下に表示
vim.o.splitright = true -- 縦分割時を右に表示
vim.o.equalalways = false -- 分割時に自動調整を無効化
vim.o.wildmenu = true -- コマンドモードの補完
-- cursor setting
vim.o.ruler = true -- カーソルの位置表示
vim.wo.cursorline = true -- カーソルハイライト
-- tab setting
vim.o.expandtab = true -- tabを複数のspaceに置き換え
vim.o.tabstop = 2 -- tabは半角2文字
vim.o.shiftwidth = 2 -- tabの幅

-- ------------------------------------------------------------
-- 2022 options
-- ------------------------------------------------------------

vim.o.encoding = 'UTF-8'
vim.o.backspace = 'indent,eol,start' -- バックスペースを有効にする
vim.o.updatetime = 250 -- 反映時間を短くする(デフォルトは4000ms)

-- Plugin management
vim.call('plug#begin', '~/.config/nvim/plugged')

-- === UI関連 ===
vim.fn['plug#']('vim-airline/vim-airline') -- ステータスラインを強化
vim.fn['plug#']('tomasiser/vim-code-dark') -- カラースキーム
vim.fn['plug#']('cormacrelf/vim-colors-github') -- カラースキーム
vim.fn['plug#']('cocopon/iceberg.vim') -- カラースキーム
vim.fn['plug#']('rafi/awesome-vim-colorschemes') -- カラースキーム
vim.fn['plug#']('EdenEast/nightfox.nvim') -- カラースキーム
vim.fn['plug#']('azumakuniyuki/vim-colorschemes') -- カラースキーム
vim.fn['plug#']('higashi000/dps-kakkonan') -- カラースキーム
vim.fn['plug#']('simeji/winresizer') -- 画面分割サイズ調整
vim.fn['plug#']('uguu-org/vim-matrix-screensaver') -- マトリックススクリーンセーバー
vim.fn['plug#']('ryanoasis/vim-devicons')

-- === ファイル管理 & サイドバー ===
vim.fn['plug#']('lambdalisue/fern.vim') -- ファイルツリー
vim.fn['plug#']('lambdalisue/fern-git-status.vim') -- Gitのdiff表示
vim.fn['plug#']('lambdalisue/nerdfont.vim') -- アイコン表示
vim.fn['plug#']('lambdalisue/fern-renderer-nerdfont.vim') -- ファイルツリーのアイコンレンダリング
vim.fn['plug#']('preservim/nerdtree') -- ファイルツリー
vim.fn['plug#']('Shougo/defx.nvim', { ['do'] = ':UpdateRemotePlugins' }) -- ファイルツリー
vim.fn['plug#']('junegunn/fzf', { ['do'] = function() vim.fn['fzf#install']() end }) -- ファイル検索
vim.fn['plug#']('junegunn/fzf.vim') -- ファイル検索

-- === Git関連 ===
vim.fn['plug#']('airblade/vim-gitgutter') -- Git diff表示
vim.fn['plug#']('tpope/vim-fugitive') -- Gitコマンド
vim.fn['plug#']('tpope/vim-rhubarb') -- GitHub関連機能

-- === コード編集ユーティリティ ===
vim.fn['plug#']('tpope/vim-commentary') -- コメント操作
vim.fn['plug#']('numToStr/Comment.nvim') -- コメント操作
vim.fn['plug#']('cohama/lexima.vim') -- オートクローズペア
vim.fn['plug#']('easymotion/vim-easymotion') -- 移動強化
vim.fn['plug#']('prettier/vim-prettier') -- コード整形
vim.fn['plug#']('skanehira/jumpcursor.vim') -- ショートカット
vim.fn['plug#']('jackMort/ChatGPT.nvim') -- ショートカット

-- === スニペット関連 ===
vim.fn['plug#']('Shougo/neosnippet-snippets')

-- === 実行 & テストツール ===
vim.fn['plug#']('thinca/vim-quickrun')

-- === 言語サポート: JavaScript & TypeScript ===
vim.fn['plug#']('pangloss/vim-javascript', { ['for'] = { 'javascript', 'javascript.jsx' } }) -- JavaScriptのシンタックスハイライトとインデントを強化
vim.fn['plug#']('othree/yajs.vim', { ['for'] = { 'javascript', 'javascript.jsx' } }) -- ES6以上のJavaScriptシンタックスハイライト
vim.fn['plug#']('othree/es.next.syntax.vim', { ['for'] = { 'javascript', 'javascript.jsx' } }) -- 最新のJavaScriptのシンタックスサポート
vim.fn['plug#']('othree/javascript-libraries-syntax.vim', { ['for'] = { 'javascript', 'javascript.jsx' } }) -- 人気のあるJavaScriptライブラリのシンタックスハイライト
vim.fn['plug#']('maxmellon/vim-jsx-pretty', { ['for'] = { 'javascript', 'javascript.jsx' } }) -- JSXのシンタックスハイライトとインデント
vim.fn['plug#']('ternjs/tern_for_vim', { ['for'] = { 'javascript', 'javascript.jsx' }, ['do'] = 'npm install' }) -- JavaScriptのコード解析ツール
vim.fn['plug#']('neoclide/coc.nvim', { ['branch'] = 'release' }) -- 補完、診断、Lint、IntelliSenseのサポートを提供
vim.fn['plug#']('iamcco/coc-tailwindcss', { ['do'] = 'yarn install --frozen-lockfile && yarn run build' }) -- Tailwind CSSの補完とLint
vim.fn['plug#']('mxw/vim-jsx') -- JSXのシンタックスとインデントサポート

-- === 言語サポート: HTML/CSS ===
vim.fn['plug#']('othree/html5.vim') -- HTML5のシンタックスとスニペットサポート
vim.fn['plug#']('hail2u/vim-css3-syntax') -- CSS3のシンタックスハイライト
vim.fn['plug#']('mattn/emmet-vim') -- HTML/CSSのための高速な記述ツール

-- === 言語サポート: C/C++ ===
vim.fn['plug#']('justmao945/vim-clang') -- C/C++のオートコンプリートとシンタックスチェック

-- === 言語サポート: C# ===
vim.fn['plug#']('OmniSharp/omnisharp-vim') -- C#のインテリセンスと補完

-- === 言語サポート: Go ===
vim.fn['plug#']('darrikonn/vim-gofmt', { ['do'] = ':GoUpdateBinaries' }) -- Go言語のフォーマッター

-- === 言語サポート: Dart & Flutter ===
vim.fn['plug#']('thosakwe/vim-flutter', { ['for'] = { 'dart', 'flutter' } }) -- FlutterのコマンドとDartのサポート
vim.fn['plug#']('dart-lang/dart-vim-plugin', { ['for'] = 'dart' }) -- Dart言語のサポート

-- === 言語サポート: YAML & Ansible ===
vim.fn['plug#']('chase/vim-ansible-yaml', { ['for'] = 'yaml' }) -- AnsibleのためのYAMLシンタックスハイライト

-- === 言語サポート: Vue ===
vim.fn['plug#']('leafOfTree/vim-vue-plugin', { ['for'] = 'vue' }) -- Vue.jsのシンタックスハイライトとスニペット

-- === エディタユーティリティ ===
vim.fn['plug#']('Shougo/neocomplete.vim') -- 補完機能の提供
vim.fn['plug#']('alvan/vim-closetag') -- HTML/XMLの閉じタグを自動で補完
vim.fn['plug#']('simeji/winresizer') -- ウィンドウのリサイズユーティリティ
vim.fn['plug#']('tyru/caw.vim') -- コメントの追加/削除のユーティリティ
vim.fn['plug#']('skanehira/jumpcursor.vim') -- カーソルのジャンプユーティリティ
vim.fn['plug#']('numToStr/Comment.nvim') -- コメントの追加/削除のユーティリティ

-- === エディタ拡張 ===
vim.fn['plug#']('Shougo/defx.nvim', { ['do'] = ':UpdateRemotePlugins' }) -- モダンなファイルエクスプローラ
vim.fn['plug#']('roxma/nvim-yarp') -- NeovimのRPCサポート
vim.fn['plug#']('roxma/vim-hug-neovim-rpc') -- NeovimのPython3 RPCサポート
vim.fn['plug#']('SirVer/ultisnips') -- スニペットエンジン
vim.fn['plug#']('Shougo/unite.vim') -- 非同期検索&表示ツール
vim.fn['plug#']('ujihisa/unite-colorscheme') -- カラースキームの検索&適用ツール
vim.fn['plug#']('EdenEast/nightfox.nvim') -- カラースキーム
vim.fn['plug#']('prettier/vim-prettier') -- コードフォーマッター
vim.fn['plug#']('nikvdp/ejs-syntax') -- EJSのシンタックスハイライト
vim.fn['plug#']('jackMort/ChatGPT.nvim') -- ChatGPTとのインタラクション
vim.fn['plug#']('thosakwe/vim-flutter') -- Flutterのサポート
vim.fn['plug#']('reisub0/hot-reload.vim') -- Flutterのホットリロードサポート
vim.fn['plug#']('dart-lang/dart-vim-plugin') -- Dartのサポート
vim.fn['plug#']('prisma/vim-prisma') -- Prismaのサポート

vim.fn['plug#']('hashivim/vim-terraform')

vim.call('plug#end')

-- Somewhere after plug#end()
require('Comment').setup()

-- vim-airline
-- VSCodeのテーマ
vim.g.airline_theme = 'codedark'

vim.g.airline_extensions_default_layout = {
  { 'a', 'b', 'c' },
  { 'z' }
}
vim.g.airline_section_c = '%t %M'

-- アイコンを表示する
vim.g.fern_renderer = 'nerdfont'

-- git操作
-- 前の変更箇所へ移動する
vim.api.nvim_set_keymap('n', 'g[', ':GitGutterPrevHunk<CR>', { noremap = true })
-- 次の変更箇所へ移動する
vim.api.nvim_set_keymap('n', 'g]', ':GitGutterNextHunk<CR>', { noremap = true })
-- diffをハイライトする
vim.api.nvim_set_keymap('n', 'gh', ':GitGutterLineHighlightsToggle<CR>', { noremap = true })
-- カーソル行のdiffを表示する
vim.api.nvim_set_keymap('n', 'gp', ':GitGutterPreviewHunk<CR>', { noremap = true })
-- 記号の色を変更する
vim.cmd('highlight GitGutterAdd ctermfg=green')
vim.cmd('highlight GitGutterChange ctermfg=blue')
vim.cmd('highlight GitGutterDelete ctermfg=red')

-- fzf
-- ファイル検索を開く
function FzfOmniFiles()
  local is_git = vim.fn.system('git status')
  if vim.v.shell_error then
    vim.cmd(':Files')
  else
    vim.cmd(':GitFiles')
  end
end
vim.api.nvim_set_keymap('n', 'fi', ':lua FzfOmniFiles()<CR>', { noremap = true })

-- 文字列検索を開く
vim.cmd([[
command! -bang -nargs=* Rg call fzf#vim#grep(
\ 'rg --column --line-number --hidden --ignore-case --no-heading --color=always '.shellescape(<q-args>), 1,
\ <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 3..'}, 'up:60%')
\ : fzf#vim#with_preview({'options': '--exact --delimiter : --nth 3..'}, 'right:50%:hidden', '?'),
\ <bang>0)
]])
vim.api.nvim_set_keymap('n', '<C-g>', ':Rg<CR>', { noremap = true })

-- カーソル位置の単語をファイル検索する
vim.api.nvim_set_keymap('n', 'fr', 'vawy:Rg <C-R>"<CR>', { noremap = true })
-- 選択した単語をファイル検索する
vim.api.nvim_set_keymap('x', 'fr', 'y:Rg <C-R>"<CR>', { noremap = true })

-- バッファ検索を開く
vim.api.nvim_set_keymap('n', 'fb', ':Buffers<CR>', { noremap = true })
-- fpでバッファの中で1つ前に開いたファイルを開く
vim.api.nvim_set_keymap('n', 'fp', ':Buffers<CR><CR>', { noremap = true })
-- 開いているファイルの文字列検索を開く
vim.api.nvim_set_keymap('n', 'fl', ':BLines<CR>', { noremap = true })
-- マーク検索を開く
vim.api.nvim_set_keymap('n', 'fm', ':Marks<CR>', { noremap = true })
-- ファイル閲覧履歴検索を開く
vim.api.nvim_set_keymap('n', 'fh', ':History<CR>', { noremap = true })
-- コミット履歴検索を開く
vim.api.nvim_set_keymap('n', 'fc', ':Commits<CR>', { noremap = true })

-- ------------------------------------------------------------
-- new
-- ------------------------------------------------------------
-- モード  再割当無し  再割当有り
-- ノーマルモード＋ビジュアルモード  noremap map
-- コマンドラインモード＋インサートモード  noremap!  map!
-- ノーマルモード  nnoremap  nmap
-- ビジュアル(選択)モード  vnoremap  vmap
-- コマンドラインモード  cnoremap  cmap
-- インサート(挿入)モード  inoremap  imap

-- 検索文字列のハイライト解除
vim.api.nvim_set_keymap('n', 'm', ':nohlsearch<CR><Esc>', { noremap = true })

-- 検索語が画面の真ん中に来るようにする
vim.api.nvim_set_keymap('n', 'n', 'nhzz', { noremap = true })
vim.api.nvim_set_keymap('n', 'N', 'Nhzz', { noremap = true })

-- NERDTree SETTINGS
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeToggle<CR>', { noremap = true })
vim.g.airline_extensions_tabline_enabled = 1

-- Airline SETTINGS
vim.g.airline_powerline_fonts = 1

-- java QuickRun ショートカット
vim.api.nvim_set_keymap('n', '<Space>j', ':QuickRun<CR>', { noremap = true })

-- ウィンドウ分割を楽にする設定
vim.api.nvim_set_keymap('n', ',-', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',=', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',x', ':close<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',q', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',Q', ':bd<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',J', '<C-w>J', { noremap = true })
vim.api.nvim_set_keymap('n', ',K', '<C-w>K', { noremap = true })
vim.api.nvim_set_keymap('n', ',L', '<C-w>L', { noremap = true })
vim.api.nvim_set_keymap('n', ',H', '<C-w>H', { noremap = true })
vim.api.nvim_set_keymap('n', ',w', ':set lines=80<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',e', ':set columns=200<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',d', ':set columns=115<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', ',c', ':set columns=80<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '-', '$', { noremap = true })
vim.api.nvim_set_keymap('', '<Left>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Down>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Up>', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', '<Right>', '<Nop>', { noremap = true })

-- Anywhere SID.
function SID_PREFIX()
  return vim.fn.matchstr(vim.fn.expand('<sfile>'), '<SNR>\\d\\+_\\zeSID_PREFIX$')
end

-- Set tabline.
_G.my_tabline = function()
  local s = ''
  for i = 1, vim.fn.tabpagenr('$') do
    local bufnrs = vim.fn.tabpagebuflist(i)
    local bufnr = bufnrs[vim.fn.tabpagewinnr(i) - 1] -- first window, first appears
    local no = i -- display 0-origin tabpagenr.
    local mod = (vim.fn.getbufvar(bufnr, '&modified') == 1) and '!' or ' '
    local title = vim.fn.fnamemodify(vim.fn.bufname(bufnr), ':t')
    title = '[' .. title .. ']'
    s = s .. '%' .. i .. 'T'
    s = s .. '%#' .. (i == vim.fn.tabpagenr() and 'TabLineSel' or 'TabLine') .. '#'
    s = s .. no .. ':' .. title
    s = s .. mod
    s = s .. '%#TabLineFill# '
  end
  s = s .. '%#TabLineFill#%T%=%#TabLine#'
  return s
end
vim.o.tabline = '%!v:lua.my_tabline()'
vim.o.showtabline = 2 -- 常にタブラインを表示

-- The prefix key.
vim.api.nvim_set_keymap('n', '[Tag]', '<Nop>', { noremap = true })
vim.api.nvim_set_keymap('', 't', '[Tag]', { noremap = true })

-- Tab jump
for n = 1, 9, 1 do
  vim.api.nvim_set_keymap('n', '[Tag]' .. n, ':tabnext' .. n .. '<CR>', { noremap = true, silent = true })
end

-- tb 新しいタブを一番右に作る
vim.api.nvim_set_keymap('', '[Tag]b', ':tablast | tabnew<CR>', { noremap = true, silent = true })
-- tx タブを閉じる
vim.api.nvim_set_keymap('', '[Tag]x', ':tabclose<CR>', { noremap = true, silent = true })
-- tn 次のタブ
vim.api.nvim_set_keymap('', '[Tag]n', ':tabnext<CR>', { noremap = true, silent = true })
-- tp 前のタブ
vim.api.nvim_set_keymap('', '[Tag]p', ':tabprevious<CR>', { noremap = true, silent = true })

-- 識別子ヘルプ
vim.api.nvim_set_keymap('n', '<C-k>', 'K', { noremap = true })
-- 10行下移動
vim.api.nvim_set_keymap('n', 'J', '10j', { noremap = true })
-- 10行左移動
vim.api.nvim_set_keymap('n', 'H', '15h', { noremap = true })
-- 10行右移動
vim.api.nvim_set_keymap('n', 'L', '15l', { noremap = true })
-- 10行上移動
vim.api.nvim_set_keymap('n', 'K', '10k', { noremap = true })
-- easymotion
vim.api.nvim_set_keymap('n', ';j', '<Plug>(easymotion-prefix)', { noremap = false })
vim.api.nvim_set_keymap('n', "'j", '<Plug>(easymotion-prefix)', { noremap = false })
vim.api.nvim_set_keymap('n', '[j', '<Plug>(jumpcursor-jump)', { noremap = false })

-- html閉じタグ<>自動補完
vim.g.closetag_filenames = '*.js,*.jsx,*.html,*.xhtml,*.phtml,*.erb,*.php,*.vue'

-- js 拡張子でも有効にする
vim.g.jsx_ext_required = 0
-- @jsx React.DOM プラグマがある場合のみ有効にする
vim.g.jsx_pragma_required = 1

-- カラースキーム
vim.cmd('colorscheme iceberg')

vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu = 1
vim.g.did_indent_on = 1
vim.g.did_load_filetypes = 1
vim.g.did_load_ftplugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_man = 1
vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_remote_plugins = 1
vim.g.loaded_shada_plugin = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.skip_loading_mswin = 1

-- esc
vim.api.nvim_set_keymap('i', '<C-j>', '<ESC>', { noremap = true })

vim.o.ambiwidth = 'single'

-- ファイラdefx.nvim設定
-- vim.api.nvim_set_keymap('n', 'sf', ':Defx -listed -resume -columns=indent:mark:icon:icons:filename:git:size -buffer-name=tab' .. vim.fn.tabpagenr() .. ' ' .. vim.fn.expand('%:p:h') .. ' -search=' .. vim.fn.expand('%:p') .. '<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'fi', ':Defx -new ' .. vim.fn.expand('%:p:h') .. ' -search=' .. vim.fn.expand('%:p') .. '<CR>', { noremap = true, silent = true })

-- bg-color
vim.cmd('hi Normal guifg=#e2e2e5 guibg=#202020 guisp=#202020 gui=NONE ctermfg=254 ctermbg=234 cterm=NONE')

-- Diagnosticsの、左横のアイコンの色設定
vim.cmd('highlight CocErrorSign ctermfg=15 ctermbg=196')
vim.cmd('highlight CocWarningSign ctermfg=0 ctermbg=172')

-- 以下ショートカット
-- ノーマルモードで
-- スペース2回でCocList
vim.api.nvim_set_keymap('n', '<space>co', ':CocList<CR>', { noremap = true, silent = true })
-- スペースhでHover
vim.api.nvim_set_keymap('n', '<space>h', ":call CocAction('doHover')<CR>", { noremap = true, silent = true })
-- スペースdfでDefinition
vim.api.nvim_set_keymap('n', '<space>df', '<Plug>(coc-definition)', { noremap = false })
-- スペースrfでReferences
vim.api.nvim_set_keymap('n', '<space>rf', '<Plug>(coc-references)', { noremap = false })
-- スペースrnでRename
vim.api.nvim_set_keymap('n', '<space>rn', '<Plug>(coc-rename)', { noremap = false })
-- スペースfmtでFormat
-- vim.api.nvim_set_keymap('n', '<space>fmt', '<Plug>(coc-format)', { noremap = false })

-- coc imprement warning 文字色
vim.cmd('highlight CocWarningSign ctermfg=0 ctermbg=172')

-- キーマップ
-- タブを作成する
vim.api.nvim_set_keymap('n', '<C-c>', ':tabnew<CR>', { noremap = true })
-- 前のタブを開く
vim.api.nvim_set_keymap('n', '<C-j>', ':tabp<CR>', { noremap = true })
-- 次のタブを開く
vim.api.nvim_set_keymap('n', '<C-k>', ':tabn<CR>', { noremap = true })
-- タブを閉じる
vim.api.nvim_set_keymap('n', 'tx', ':tabclose<CR>', { noremap = true })

-- tab切り替え
vim.api.nvim_set_keymap('n', '<C-j>', '<Plug>AirlineSelectPrevTab', { noremap = false })
vim.api.nvim_set_keymap('n', '<C-k>', '<Plug>AirlineSelectNextTab', { noremap = false })

-- バッファ切り替え
vim.api.nvim_set_keymap('n', '<C-o>', ':bprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':bw<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-z>', ':bw<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>', { noremap = true })

-- for coc.nvim
vim.g.UltiSnipsExpandTrigger = '<Nop>'
vim.g.UltiSnipsJumpForwardTrigger = '<C-n>'
vim.g.UltiSnipsJumpBackwardTrigger = '<C-p>'
vim.g.coc_snippet_next = '<C-n>'
vim.g.coc_snippet_prev = '<C-p>'

-- coc.nvim
vim.api.nvim_set_keymap('i', '<C-l>', '<Plug>(coc-snippets-expand)', { noremap = false })

function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
end
vim.api.nvim_set_keymap('i', '<Tab>', [[pumvisible() ? "\<C-n>" : v:lua.check_back_space() ? "\<Tab>" : coc#refresh()]], { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]], { noremap = true, silent = true, expr = true })

-- emmet key
vim.g.user_emmet_leader_key = '<C-e>'

-- window移動
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })

-- window resize size
vim.g.winresizer_vert_resize = 2
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true })

-- ejs
vim.cmd([[
autocmd BufNewFile,BufRead *.ejs set filetype=ejs
autocmd BufNewFile,BufRead *._ejs set filetype=ejs

function! s:DetectEjs()
    if getline(1) =~ '^#!.*\<ejs\>'
        set filetype=ejs
    endif
endfunction

autocmd BufNewFile,BufRead * call s:DetectEjs()
]])

-- neovimからクリップボードへのアクセス
vim.o.clipboard = 'unnamedplus'
vim.cmd([[
"*y クリップボードにヤンク
:silent !pbcopy

"*p クリップボードにペースト
:r !pbpaste
]])

-- Neovim performance settings
vim.o.lazyredraw = true
vim.o.ttyfast = true
vim.o.confirm = true
vim.o.hidden = true
vim.o.updatetime = 100
vim.o.backup = false

-- Coc.nvim settings
vim.g.coc_global_extensions = { 'coc-omnisharp' }

-- Dartファイルに対してのみsmartindentを有効
vim.cmd('autocmd FileType dart setlocal smartindent')

-- ClangFormat設定
vim.g.clang_format_style_options = {
  BasedOnStyle = "LLVM",
  IndentWidth = 2,
  TabWidth = 2,
  BreakBeforeBraces = "Attach",
  AllowShortFunctionsOnASingleLine = "None",
  AccessModifierOffset = -2,
  ColumnLimit = 0,
  SortIncludes = "false",
  BreakConstructorInitializersBeforeComma = "true",
  AlignOperands = "false"
}
vim.g.clang_format_command = 'clang-format'

-- C++ ClangFormat
-- 保存で現在編集しているファイルの整形
-- vim.cmd('autocmd BufWritePost *.cpp,*.h silent! !clang-format -i %')

-- 保存でdir内のファイル全体整形
-- vim.cmd([[autocmd BufWritePost *.cpp,*.h silent! !find . -name '*.cpp' -or -name '*.h' | xargs clang-format -i]])

-- Terraformの設定
vim.cmd('autocmd BufNewFile,BufRead *.tf set filetype=terraform')

vim.o.shadafile = 'NONE'

