" euc-jpがlatin1で表示される対策
if &encoding !=# 'utf-8'
else
    "ucs-bom,utf-8,default,latin1 デフォの状態
    set fileencodings-=latin1
    set fileencodings+=euc-jp
    set fileencodings+=latin1
endif

"-------------------------------------------------------------------------
" GUI
"-------------------------------------------------------------------------
set nocompatible " Vi互換にしない
" Low-Contrast    - http://www.vim.org/scripts/script.php?script_id=1448
" rdark           - http://www.vim.org/scripts/script.php?script_id=1732
" ChocolateLiquor - http://www.vim.org/scripts/script.php?script_id=592
colorscheme desert
set hidden                     " 変更中のファイルでも、保存しないで他のファイルを表示することが出来るようにする
set title                      " ウィンドウのタイトルを変更する設定
set ruler                      " カーソルが何行目の何列目に置かれているかを表示する
set shellslash                 " ファイル名の展開にスラッシュを使う
set wildmenu                   " コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set display=lastline           " テキスト表示の方法を変える
set whichwrap=b,s,[,],<,>      " カーソルを行頭、行末で止まらないようにする
set cmdheight=2                " コマンドラインに使われるスクリーン上の行数
set nonumber                   " 行番号を表示しない
set nowrap                     " 行折り返しをしない
set showcmd                    " 入力中のコマンドをステータスに表示する
set showmatch                  " 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set laststatus=2               " ステータスラインを常に表示
set backspace=indent,eol,start " バックスペースでインデントや改行を削除できるようにする
set lsp=3                      " 行間
"set number                    " 行番号を表示
"set cursorline                " カーソル行を強調表示
set listchars=tab:\ \          " タブの左側にカーソル表示
set list                       " タブ文字、行末など不可視文字を表示する
set expandtab                  " タブをスペースに展開する :retab でタブ・スペースの変換(noexpandtab:展開しない)
set tabstop=4                  " タブスペース数設定
set shiftwidth=4               " 自動的に挿入される量
set softtabstop=0              " <Tab>キーを押した時に挿入される空白の量
set autoindent                 " 自動的にインデントする (noautoindent:インデントしない)
set smartindent                " 新しい行を作ったときに高度な自動インデントを行う
set formatoptions+=mM          " テキスト挿入中の自動折り返しを日本語に対応させる
set guioptions-=T              " ツールバー非表示
"set nobackup                   " ファイル〜のバックアップファイルを作らない
set backupdir=~/.vim/tmp/backup " backupファイルのディレクトリ指定
"set directory=~/.vim/tmp/swap  " swapファイルのディレクトリ指定
set hlsearch                   " 検索結果文字列のハイライトを有効にする
"if &t_Co > 2 || has("gui_running")
  "syntax on
  "set hlsearch " 検索結果をハイライトする
"endif

" 入力モード時、ステータスラインのカラーを変更
" ctermbg   コンソールの背景色
" guibg     Gvimの背景色
" ctermfg   コンソールのテキストの色
" guifg     Gvimのテキストの色
" gui       Gvimのフォントフォーマット
" term      コンソールのフォントフォーマット（太字など）
augroup InsertHook
    autocmd!
    autocmd InsertEnter * highlight StatusLine ctermfg=black ctermbg=white guifg=#2E4340 guibg=#ccdc90
    autocmd InsertLeave * highlight StatusLine ctermfg=black ctermbg=lightgray guifg=black guibg=#c2bfa5
augroup END

" IMEのon/offを確認できるようにする
"hi CursorIM  guifg=black  guibg=red  gui=NONE  ctermfg=black  ctermbg=white  cterm=reverse

" ノーマルモードでIME OFF
"augroup InsModeAu
"    autocmd!
"    autocmd InsertEnter,CmdwinEnter * set noimdisable
"    autocmd InsertLeave,CmdwinLeave * set imdisable
"augroup END

" 特殊文字(SpecialKey)の見える化。listcharsはlcsでも設定可能。trailは行末スペース。
set list
set listchars=tab:>.,trail:_,nbsp:%,extends:>,precedes:<
highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray

" シンタックスハイライトを有効にする
if has("syntax")
    syntax on
endif

" ポップアップカラー
hi Pmenu ctermbg=darkgray guibg=darkgray
hi PmenuSel ctermbg=brown ctermfg=white guibg=brown guifg=white
hi PmenuSbar ctermbg=black guibg=black

" ステータスラインに文字コードと改行文字を表示する
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" MAC指定
if has('gui_macvim')
    if has('gui_running')
        "winpos 70 70               " ウィンドウの左上隅の位置をピクセル単位で指定で表示
        set columns=180            " window横
        set lines=50               " window縦
        "set showtabline=2         " タブを常に表示
        set imdisable             " IMを無効化
        set transparency=10       " 透明度
        set antialias             " アンチエイリアス
        set guifont=VL_Gothic:h12 " フォント
    endif
endif

" WINDOWS指定
if has('win32')
    set guifont=VL_Gothic:h10:cSHIFTJIS       " フォント
    if has('printer')
        set printfont=VL_Gothic:h10:cSHIFTJIS     " 印刷時のフォント
        set printoptions=wrap:y,number:y,header:0 " 印刷
    endif
endif

"-------------------------------------------------------------------------
" JAPANESE
"-------------------------------------------------------------------------
if has('multi_byte_ime') || has('xim') || has('gui_macvim')
  " IME ON時のカーソルの色を設定(設定例:紫)
  highlight CursorIM guibg=Purple guifg=NONE
  " 挿入モード・検索モードでのデフォルトのIME状態設定
  set iminsert=0 imsearch=0
  if has('xim') && has('GUI_GTK')
    " XIMの入力開始キーを設定:
    " 下記の s-space はShift+Spaceの意味でkinput2+canna用設定
    "set imactivatekey=s-space
  endif
  " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
  "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif

"-------------------------------------------------------------------------
" MOUSE
"-------------------------------------------------------------------------
set mouse=a                    " マウスモード有効
set nomousefocus               " マウスの移動でフォーカスを自動的に切替えない (mousefocus:切替る)
set mousehide                  " 入力時にマウスポインタを隠す (nomousehide:隠さない)

"--------------------------------------------------------------------------
" SEARCH
"--------------------------------------------------------------------------
set ignorecase  " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase   " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch   " インクリメンタルサーチ 検索文字を打っている途中で、目的の単語を見つけたらEnterを押下 検索をやめたい場合はEscを押下
set wrapscan    " 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set noincsearch " 検索文字列入力時に順次対象文字列にヒットさせない

"--------------------------------------------------------------------------
" REMAP
"--------------------------------------------------------------------------
":noremap        ノーマルモード、ビジュアルモード、オペレータ待機モード
":vnoremap       ビジュアルモード
":nnoremap       ノーマルモード
":onoremap       オペレータ待機モード
":noremap!       インサートモード、コマンドライン
":inoremap       インサートモード
":cnoremap       コマンドライン

" VIMRC
" 開く
nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter>
" 再読みこみ
nnoremap <Space>s. :<C-u>source $MYVIMRC<Enter>

" HELP
" helpを引きやすく
nnoremap <C-h> :<C-u>help<Space>
" カーソル下のキーワードでhelpを引く
nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><Enter>

" SUSPEND
nnoremap <Space>bg :<C-u>suspend<Enter>

" SCROLL
"nnoremap <Space>j <C-f>" 次表示
"nnoremap <Space>k <C-b>" 前表示
" 次表示をスムーススクロール
map <Space>jj :call SmoothScroll("d",2, 2)<Enter>
map <Space>j :call SmoothScroll("d",1, 1)<Enter>
" 前表示をスムーススクロール
map <Space>kk :call SmoothScroll("u",2, 2)<Enter>
map <Space>k :call SmoothScroll("u",1, 1)<Enter>

" ENCORDING
" ファイルをshift_jisで改行コードをCRLFにする
nnoremap <Space>w :<C-u>set ff=dos fenc=shift_jis<Enter>
" ファイルをutf-8で改行コードをLFにする
nnoremap <Space>u :<C-u>set ff=unix fenc=utf-8<Enter>
" euc-jpで開く
nnoremap <Space>e :<C-u>e ++enc=euc-jp<Enter>
" euc-jpにする
nnoremap <Space>E :<C-u>set fileencoding=euc-jp<Enter>

" WINDOW
" 次のウインドウに移動
nnoremap <Space>l <C-w>w<Enter>
" 前のウインドウに移動
nnoremap <Space>h <C-w>p<Enter>
" 垂直分割でウインドウを作る
nnoremap <Space>n <C-w>v<Enter>
" ウインドウを閉じる
nnoremap <Space>d <C-w>q<Enter>
"nnoremap <Space>a :hide<Enter>" 現在のウインドウを閉じる
"nnoremap <Space>a :only<Enter>" ほかのウインドウをすべて閉じる

" TAB
" 新規タブを開く
nnoremap <Space>t :<C-u>tabnew<Enter>
" 左のタブへ移動
nnoremap <Space>hh :<C-u>tabp<Enter>
" 右のタブへ移動
nnoremap <Space>ll :<C-u>tabn<Enter>

" 検索ハイライトを非表示
nnoremap <Esc><Esc> :<C-u>nohlsearch<Enter>

" 空行を挿入
"nnoremap <Space>0 :<C-u>call append(expand('.'), '')<Cr>j

" Completion
" omni補完
imap <Space>o <C-x><C-o>
"inoremap <A-(> ()<LEFT>" (), {} 補完
"inoremap <A-{> <ESC>A<SPACE>{}<Left><CR><ESC>O
"nnoremap <A-{> A<SPACE>{}<Left><CR><ESC>O

"--------------------------------------------------------------------------
" PLUGIN
"--------------------------------------------------------------------------
filetype off

" PlguinControl
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" Edit
" なめらかにスクロール
" http://www.vim.org/scripts/script.php?script_id=1601
Bundle 'Smooth-Scroll'
" 最強コメント処理
" https://github.com/scrooloose/nerdcommenter
Bundle 'https://github.com/scrooloose/nerdcommenter.git'
" 補完
" https://github.com/vim-scripts/AutoComplPop
Bundle 'AutoComplPop'
" XMLとかHTMLとかの編集機能を強化する
" https://github.com/sukima/xmledit
Bundle 'xmledit'
" 高機能整形・桁揃えプラグイン
" http://vim.sourceforge.net/scripts/script.php?script_id=294
Bundle 'Align'
" yankの履歴を順番に呼び出せる
" http://www.vim.org/scripts/script.php?script_id=1234
Bundle 'YankRing.vim'
" undo履歴を追える
" https://github.com/sjl/gundo.vim
Bundle 'Gundo'
" 外部のgrep利用。:Grepで対話形式でgrep :Rgrepは再帰
" https://github.com/vim-scripts/grep.vim
Bundle 'grep.vim'
" vimの正規表現をrubyやperlの正規表現な入力でできる
" https://github.com/othree/eregex.vim
Bundle 'eregex.vim'

" Syntax
" php5.3対応シンタックス
" http://www.vim.org/scripts/script.php?script_id=2874
Bundle 'https://github.com/vim-scripts/php.vim--Garvin.git'
" JavaScriptシンタックス
" https://github.com/vim-scripts/JavaScript-syntax
Bundle 'JavaScript-syntax'
" jQueryシンタックス
" http://www.vim.org/scripts/script.php?script_id=2416
Bundle 'jQuery'
" nginx conf シンタックス
" http://www.vim.org/scripts/script.php?script_id=1886
Bundle 'nginx.vim'
" markdown シンタックス
Bundle 'https://github.com/tpope/vim-markdown.git'

" Programming
" php用インデント
" http://www.vim.org/scripts/script.php?script_id=346
Bundle 'php.vim'
" php使用していない変数をチェック
" http://www.vim.org/scripts/script.php?script_id=2803
Bundle 'php_localvarcheck.vim'
" phpDocCommentを自動作成
" http://www.vim.org/scripts/script.php?script_id=1355
Bundle 'PDV--phpDocumentor-for-Vim'
" ソースコード上のメソッド宣言、変数宣言の一覧を表示
" https://github.com/mortice/taglist.vim
Bundle 'taglist.vim'
" tagsを利用したソースコード閲覧・移動補助機能 tagsファイルの自動生成
" http://vim.sourceforge.net/scripts/script.php?script_id=2179
Bundle 'Source-Explorer-srcexpl.vim'
" ディレクトリのファイル一覧、バッファ一覧、タグ一覧を別ウィンドウで表示できる
" http://www.vim.org/scripts/script.php?script_id=95
Bundle 'winmanager'
" perldocやphpmanual等のリファレンスをvim上で見るためのプラグイン
" https://github.com/thinca/vim-ref
Bundle 'https://github.com/thinca/vim-ref.git'

" Utility
" <Leader>beでバッファのリストを表示
" http://www.vim.org/scripts/script.php?script_id=42
Bundle 'bufexplorer.zip'
" すべてを破壊し、すべてを繋げ - vim scriptで実装されたanythingプラグイン
" https://github.com/Shougo/unite.vim
Bundle 'unite.vim'
" vim上でスクリプト実行、結果表示。コマンドモードで\r
" https://github.com/thinca/vim-quickrun
Bundle 'quickrun.vim'
" vimからgit操作
" https://github.com/motemen/git-vim
Bundle 'https://github.com/motemen/git-vim.git'
" svn commit をした時に表示されるログの編集画面と一緒に、svn diff の内容も表示
" https://github.com/vim-scripts/svn-diff.vim
Bundle 'svn-diff.vim'
" 補完もしてくれるvim上でshell
" https://github.com/Shougo/vimshell
Bundle 'https://github.com/Shougo/vimshell.git'

" plugin管理（pathoge.vim以外bundleディレクトリ配下で管理）
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

set helpfile=$VIMRUNTIME/doc/help.txt
filetype plugin indent on

" bufexplorer.vim バッファ一覧を表示
cnoremap LS BufExplorer<Enter>

" autofmt 自動的に日本語入力(IM)をオンにする機能を有効
"set imdisableactivate

" GIT
let g:git_no_map_default = 1
let g:git_command_edit = 'rightbelow vnew'
nnoremap <Space>gd :<C-u>GitDiff --cached<Enter>
nnoremap <Space>gD :<C-u>GitDiff<Enter>
nnoremap <Space>gs :<C-u>GitStatus<Enter>
nnoremap <Space>gl :<C-u>GitLog<Enter>
nnoremap <Space>gL :<C-u>GitLog -u \| head -10000<Enter>
nnoremap <Space>ga :<C-u>GitAdd<Enter>
nnoremap <Space>gA :<C-u>GitAdd <cfile><Enter>
nnoremap <Space>gc :<C-u>GitCommit<Enter>
nnoremap <Space>gC :<C-u>GitCommit --amend<Enter>
nnoremap <Space>gp :<C-u>Git push

" Align 整形
let g:Align_xstrlen = 3
vmap <Space>s <Leader>tsp
smap <Space>s <Leader>tsp
vmap <Space>a : Align
smap <Space>a : Align

" NERD_commenter.vim
" Toggle
map <Leader><Leader> <Leader>c<space>_
" Minimal
map <Space><Leader> <Leader>cm
" Invert
"map xxx <leader>ci
" Sexy
"map xxx <leader>cs
" 未対応ファイルタイプのエラーメッセージを表示しない
let NERDShutUp=1

" YankRing.vim
" yank_historyファイルを不可視にする
let g:yankring_history_file = '.yankring_history'

" gundo.Vim
nmap U :<C-u>GundoToggle<CR>

" php-documentation
let g:pdv_cfg_Package   = "SCRAPTURE(tm)"
let g:pdv_cfg_Author    = "Tomohisa Oda <tomohisa@scrapture.org>"
let g:pdv_cfg_Copyright = "2006-2011 SCRAPTURE(tm)"
let g:pdv_cfg_License   = "SCRAPTURE(tm) {@link http://scrapture.org/}"

" php-debug
let g:php_debug_mail    = "linyows@gmail.com"

" 関数一覧
set tags=tags
"set tags+=~/.tags
"let Tlist_Ctags_Cmd = '/Applications/MacVim.app/Contents/MacOS/ctags' " ctagsのパス
let Tlist_Show_One_File = 1               " 現在編集中のソースのタグしか表示しない
let Tlist_Exit_OnlyWindow = 1             " taglistのウィンドーが最後のウィンドーならばVimを閉じる
let Tlist_Use_Right_Window = 1            " 右側でtaglistのウィンドーを表示
let Tlist_Enable_Fold_Column = 1          " 折りたたみ
let Tlist_Auto_Open = 1                   " 自動表示
"map <silent> <leader>tl :Tlist<CR>        " taglistを開くショットカットキー

" [Srcexpl] tagsを利用したソースコード閲覧・移動補助機能
let g:SrcExpl_UpdateTags    = 1         " tagsをsrcexpl起動時に自動で作成（更新）
let g:SrcExpl_RefreshTime   = 0         " 自動表示するまでの時間(0:off)
let g:SrcExpl_WinHeight     = 9         " プレビューウインドウの高さ
let g:SrcExpl_RefreshMapKey = "<Space>" " 手動表示のMAP
let g:SrcExpl_GoBackMapKey  = "<C-b>"   " 戻る機能のMAP
nmap <F8> :SrcExplToggle<CR>            " Source Explorerの機能ON/OFF

" unite.vim
" 入力モードで開始する
"let g:unite_enable_start_insert=1
" バッファ一覧
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
" ファイル一覧
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
" レジスタ一覧
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
" 最近使用したファイル一覧
nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
" 常用セット
nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
" 全部乗せ
nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"--------------------------------------------------------------------------
" OTHERE
"--------------------------------------------------------------------------
" IME
if has('multi_byte_ime') || has('xim')
    " カーソル上の文字色は文字の背景色にする。
    " IME が無効なとき Green
    " IME が有効なとき Purple にする。
    "hi Cursor guifg=bg guibg=Green gui=NONE
    hi CursorIM guifg=NONE guibg=Purple gui=NONE
    " IME ON時のカーソルの色を設定
    highlight CursorIM guibg=lightgreen guifg=NONE
    " 挿入モード・検索モードでのデフォルトのIME状態設定
    set iminsert=0 imsearch=0
endif

" ファイル保存時に拡張属性を設定するコマンド
" see@http://d.hatena.ne.jp/uasi/20110523/1306079612
au BufWritePost * call SetUTF8Xattr(expand("<afile>"))
function! SetUTF8Xattr(file)
    let isutf8 = &fileencoding == "utf-8" || ( &fileencoding == "" && &encoding == "utf-8")
    if has("unix") && match(system("uname"),'Darwin') != -1 && isutf8
        call system("xattr -w com.apple.TextEncoding 'utf-8;134217984' '" . a:file . "'")
    endif
endfunction

" URLをブラウザで開く
if has('win32')
    let BrowserPath = 'C:\Program Files\Mozilla Firefox\firefox.exe'
else
    let BrowserPath = '/Applications/Firefox.app'
endif
function! AL_execute(cmd)
  if 0 && exists('g:AL_option_nosilent') && g:AL_option_nosilent != 0
    execute a:cmd
  else
    silent! execute a:cmd
  endif
endfunction

function! s:AL_open_url_win32(url)
  let url = substitute(a:url, '%', '%25', 'g')
  if url =~# ' '
    let url = substitute(url, ' ', '%20', 'g')
    let url = substitute(url, '^file://', 'file:/', '')
  endif
  " If 'url' has % or #, all of those characters are expanded to buffer name
  " by execute().  Below escape() suppress this.  system() does not expand
  " those characters.
  let url = escape(url, '%#')
  " Start system related URL browser
  if !has('win95') && url !~ '[&!]'
    " for Win NT/2K/XP
    call AL_execute('!start /min cmd /c start ' . url)
    " MEMO: "cmd" causes some side effects.  Some strings like "%CD%" is
    " expanded (may be environment variable?) by cmd.
  else
    " It is known this rundll32 method has a problem when opening URL that
    " matches http://*.html.  It is better to use ShellExecute() API for
    " this purpose, open some URL.  Command "cmd" and "start" on NT/2K?XP
    " does this.
    call AL_execute("!start rundll32 url.dll,FileProtocolHandler " . url)
  endif
endfunction

" LINK BROWSER
function! Browser()
    let line0 = getline(".")
    let line = matchstr(line0, "http[^ ]*")
    if line==""
      let line = matchstr(line0, "ftp[^ ]*")
    endif
    if line==""
      let line = matchstr(line0, "file[^ ]*")
    endif
    exec ":silent !start \"" . g:BrowserPath . "\" \"" . line . "\""
    call s:AL_open_url_win32(line)
endfunction
map <Leader>w :call Browser()<CR>

" Set skip input time
" 勝手にオムニ補完しない時間を設定
let g:NeoComplCache_SkipInputTime = '1.5'

" OMNI MAPPING
function! InsertTabWrapper()
    if pumvisible()
        return "\<c-n>"
    endif
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k\|<\|/'
        return "\<tab>"
    elseif exists('&omnifunc') && &omnifunc == ''
        return "\<c-n>"
    else
        return "\<c-x>\<c-o>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<CR>

" OMNIFUNC
" 注意: この内容は:filetype onよりも後に記述すること。
autocmd FileType *
\   if &l:omnifunc == ''
\ |   setlocal omnifunc=syntaxcomplete#Complete
\ | endif
