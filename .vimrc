"   \    /   /   _   _   /   __  /    ____/
"    \  /   /   /   /   /   __  /    /
"   ___/ __/ __/ __/ __/ __/   _\ ______/
"
" linyows <linyows@gmail.com>
" https://github.com/linyows/.vim

" Vundle Plugin {{{
    set nocompatible " Vi互換にしない
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'

    " Edit {{{
        " なめらかにスクロール
        Bundle 'Smooth-Scroll'
        " 最強コメント処理
        Bundle 'scrooloose/nerdcommenter.git'
        " 自動閉じタグ [dump等に影響があるので使用をやめる]
        "Bundle 'AutoClose'
        " 補完
        "Bundle 'AutoComplPop'
        Bundle 'Shougo/neocomplcache'
        " A neocomplcache plugin for English, using look command
        Bundle 'ujihisa/neco-look'
        " -- でメソッドチェーン整形
        Bundle 'c9s/cascading.vim'
        " visually indent guide
        Bundle 'nathanaelkane/vim-indent-guides'
        " XMLとかHTMLとかの編集機能を強化する
        Bundle 'xmledit'
        " 高機能整形・桁揃えプラグイン
        Bundle 'Align'
        " フィルタリングと整形
        Bundle 'godlygeek/tabular'
        " マルチバイト対応の整形
        Bundle 'h1mesuke/vim-alignta'
        " yankの履歴を順番に呼び出せる
        Bundle 'YankRing.vim'
        " undo履歴を追える (need python support)
        Bundle 'Gundo'
        " 外部のgrep利用。:Grepで対話形式でgrep :Rgrepは再帰
        Bundle 'grep.vim'
        " vimの正規表現をrubyやperlの正規表現な入力でできる
        Bundle 'eregex.vim'
        " vimでackを使う
        Bundle 'mileszs/ack.vim'
        " カーソルの下のURLを開くor単語を検索エンジンで検索
        Bundle 'tyru/open-browser.vim'
        " text-object拡張
        "Bundle 'tpope/vim-surround'
        " スニペット機能をvimで(snippetsEmuより使いやすい)
        "Bundle 'msanders/snipmate.vim'
        "Bundle 'linyows/snipmate.vim'
    " }}}

    " Syntax {{{
        " php5.3
        Bundle 'php.vim--Garvin'
        " JavaScript
        Bundle 'JavaScript-syntax'
        " jQuery
        Bundle 'jQuery'
        " nginx conf
        Bundle 'nginx.vim'
        " markdown
        Bundle 'tpope/vim-markdown'
        " jade
        Bundle 'digitaltoad/vim-jade'
        " syntax checking plugins exist for eruby, haml, html, javascript, php, python, ruby and sass.
        Bundle 'scrooloose/syntastic'
    " }}}

    " Programming {{{
        " php用インデント
        Bundle 'php.vim'
        " php使用していない変数をチェック
        Bundle 'php_localvarcheck.vim'
        " phpDocCommentを自動作成
        Bundle 'linyows/PDV--phpDocumentor-for-Vim'
        " ソースコード上のメソッド宣言、変数宣言の一覧を表示
        Bundle 'taglist.vim'
        " tagsを利用したソースコード閲覧・移動補助機能 tagsファイルの自動生成
        Bundle 'Source-Explorer-srcexpl.vim'
        " ディレクトリのファイル一覧、バッファ一覧、タグ一覧を別ウィンドウで表示できる
        Bundle 'winmanager'
        " perldocやphpmanual等のリファレンスをvim上で見る
        Bundle 'thinca/vim-ref'
        " Simple Unit Testing Framework for Vim script
        Bundle 'h1mesuke/vim-unittest'
        " Vim/Ruby Configuration Files
        Bundle 'vim-ruby/vim-ruby'
        " ファイル切替えなど色んな便利機能
        Bundle 'tpope/vim-rails'
        " CoffeeScript support for vim
        Bundle 'kchmck/vim-coffee-script'
        " Vim runtime files for Haml, Sass, and SCSS
        Bundle 'tpope/vim-haml'
    " }}}

    " Git {{{
        " vimからgit操作
        Bundle 'motemen/git-vim'
        " vimからGist
        Bundle 'mattn/gist-vim'
        " git wrapper
        Bundle 'tpope/vim-fugitive'
    " }}}

    " Encording {{{
        Bundle 'banyan/recognize_charcode.vim'
    " }}}

    " Utility {{{
        " vim Interface to Web API
        Bundle 'mattn/webapi-vim'
        " <Leader>beでバッファのリストを表示
        "Bundle 'bufexplorer.zip'
        " tree表示のfiler
        Bundle 'scrooloose/nerdtree'
        " vim上でスクリプト実行、結果表示。コマンドモードで\r
        Bundle 'thinca/vim-quickrun'
        " svn commit をした時に表示されるログの編集画面と一緒に、svn diff の内容も表示
        Bundle 'svn-diff.vim'
        " Vimでの対話コマンドの実行 (要コンパイル / Mac $ make -f make_mac.mak / Linux $ make -f make_gcc.mak)
        Bundle 'Shougo/vimproc'
        " 補完もしてくれるvim上でshell (要vimproc)
        Bundle 'Shougo/vimshell'
        " vimでssh
        Bundle 'ujihisa/vimshell-ssh'
    " }}}

    " Unite {
        Bundle 'Shougo/unite.vim'
        "see more plugin http://bit.ly/m5PKnU
        Bundle 'Shougo/unite-grep'
        Bundle 'tsukkee/unite-help'
        Bundle 'h1mesuke/unite-outline'
        Bundle 'linyows/unite-li3'
        Bundle 'heavenshell/unite-zf'
        "Bundle 'heavenshell/unite-sf2'
        Bundle 'oppara/vim-unite-cake'
        Bundle 'basyura/unite-rails'
        Bundle 'thinca/vim-unite-history'
        Bundle 'osyo-manga/unite-env'
        Bundle 'tungd/unite-session'
        Bundle 'tsukkee/unite-tag'
        Bundle 'tacroe/unite-alias'
        Bundle 'ujihisa/unite-font'
        Bundle 'ujihisa/unite-colorscheme'
        Bundle 'ujihisa/unite-locate'
        Bundle 'mattn/unite-remotefile'
        Bundle 'mattn/unite-mcdonalds-vim'
        Bundle 'mattn/unite-genpatsu-fukushima-vim'
    " }}}

    " Others {
        " vimでevernote (need python support)
        Bundle 'kakkyz81/evervim'
    " }}}

    " Color {{{
    if &t_Co >= 88 || has('gui_running')
        let g:isMultiColor = 'true'
        " 88/256色ターミナルでGUI用カラースキームを使用できる
        ""Bundle 'thinca/vim-guicolorscheme'
        " フルカラーなカラースキームを88/256色対応ターミナル上のVimで有効化
        Bundle 'godlygeek/csapprox'
        " Scheme
        Bundle 'larssmit/getafe'
        Bundle 'altercation/vim-colors-solarized'
        Bundle 'tomasr/molokai'
        " カラースキーム集
        Bundle 'Slashbunny/vim-colorsamplerpack'
        " CSSの色をプレビュー (重い？)
        "Bundle 'skammer/vim-css-color'
    endif
    " }}}
" }}}

" Appearance {{{
    set helpfile=$VIMRUNTIME/doc/help.txt
    filetype plugin indent on

    set background=dark
    if exists('g:isMultiColor')
        set t_Co=256
        try
            "colorscheme dw_red
            "colorscheme ironman
            "colorscheme ikvoli
            colorscheme matrix
            "colorscheme oceandeep
            "colorscheme summerfruit256
            "colorscheme molokai
            "colorscheme moss
            "colorscheme getafe
            "colorscheme Tomorrow-Night
            "colorscheme solarized
            "let g:solarized_termcolors=256
        catch /^Vim\%((\a\+)\)\=:E185/
            colorscheme desert
        endtry
    else
        colorscheme desert
    endif

    set textwidth=0                " 自動折り返しをoffにするため無制限に設定 (段落整形したい時はgq,gwとかすればいい)
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
    set clipboard=unnamed,autoselect " yank時にclipboardにcopy (要+clipboard)
    "set nobackup                   " ファイル〜のバックアップファイルを作らない
    set viminfo+=n~/.vim/tmp/viminfo.txt " viminfo保存先指定
    set backupdir=~/.vim/tmp/backup " backupファイルのディレクトリ指定
    "set directory=~/.vim/tmp/swap  " swapファイルのディレクトリ指定
    set hlsearch                   " 検索結果文字列のハイライトを有効にする
    " シンタックスハイライトを有効にする
    if has('syntax')
        syntax on
    endif

    " ステータスラインに文字コードと改行文字を表示する
    "set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
    set statusline=%<\ %f\                             " filename
    set statusline+=%w%h%m%r                           " options
    set statusline+=%{fugitive#statusline()}           " current git branch ;)
    set statusline+=\[%{&ff}]                          " fileformat
    set statusline+=\%y                                " filetype
    set statusline+=\%{'['.(&fenc!=''?&fenc:&enc).']'} " encoding
    set statusline+=\[%{getcwd()}]                     " current dir
    set statusline+=\[%p%%]                            " current position
    "set statusline+=\ [A=\%03.3b/H=\%02.2B]            " ASCII / Hexadecimal value of char
    set statusline+=%=%-14.(%l,%c%V%)\                 " right aligned file nav info

    " Color {{{
        " ctermbg   コンソールの背景色
        " ctermfg   コンソールのテキストの色
        " term      コンソールのフォントフォーマット（太字など）
        " guibg     Gvimの背景色
        " guifg     Gvimのテキストの色
        " gui       Gvimのフォントフォーマット
        " 特殊文字(SpecialKey)の見える化。listcharsはlcsでも設定可能。trailは行末スペース。
        set list
        set listchars=tab:>.,trail:_,nbsp:%,extends:>,precedes:<
        highlight SpecialKey term=underline ctermfg=darkgray guifg=darkgray

        highlight Pmenu       ctermbg=darkgray guibg=darkgray
        highlight PmenuSel    ctermbg=brown    ctermfg=white  guibg=brown   guifg=white
        highlight PmenuSbar   ctermbg=black    guibg=black
        highlight TabLine     term=reverse     cterm=reverse  ctermfg=black ctermbg=white
        highlight TabLineSel  term=bold        cterm=bold     ctermfg=black ctermbg=white
        highlight TabLineFill term=reverse     cterm=reverse  ctermfg=black ctermbg=white
        " 入力モード時、ステータスラインのカラーを変更
        augroup InsertHook
            autocmd!
            autocmd InsertEnter * highlight StatusLine ctermfg=black      ctermbg=lightgreen guifg=#2E4340 guibg=#ccdc90
            autocmd InsertLeave * highlight StatusLine ctermfg=lightgreen ctermbg=black      guifg=black   guibg=#c2bfa5
        augroup END
    " }}}

    " IME {{{
        " IMEのon/offを確認できるようにする
        "hi CursorIM  guifg=black  guibg=red  gui=NONE  ctermfg=black  ctermbg=white  cterm=reverse

        " ノーマルモードでIME OFF
        "augroup InsModeAu
        "    autocmd!
        "    autocmd InsertEnter,CmdwinEnter * set noimdisable
        "    autocmd InsertLeave,CmdwinLeave * set imdisable
        "augroup END

        if has('multi_byte_ime') || has('xim') || has('gui_macvim')
            " カーソル上の文字色は文字の背景色にする。
            " IME Off
            "hi Cursor guifg=bg guibg=Green gui=NONE
            hi CursorIM guifg=NONE guibg=Purple gui=NONE
            " IME On
            "highlight CursorIM guibg=Purple guifg=NONE
            highlight CursorIM guibg=lightgreen guifg=NONE

            " 挿入モード・検索モードでのデフォルトのIME状態設定
            set iminsert=0 imsearch=0

            "if has('xim') && has('GUI_GTK')
                " XIMの入力開始キーを設定:
                " 下記の s-space はShift+Spaceの意味でkinput2+canna用設定
                "set imactivatekey=s-space
            "endif
            " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
            "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
        endif
    " }}}

    " Mac {{{
        if has('gui_macvim')
            if has('gui_running')
                " full screen
                "set fuoptions=maxvert,maxhorz
                au GUIEnter * set fullscreen
                " hidden scroll bar
                set guioptions-=r
                set guioptions-=R
                set guioptions-=l
                set guioptions-=L
                "winpos 70 70               " ウィンドウの左上隅の位置をピクセル単位で指定で表示
                set columns=200            " window横
                set lines=50               " window縦
                "set showtabline=2         " タブを常に表示
                "set imdisable             " IMを無効化
                set transparency=10       " 透明度
                set antialias             " アンチエイリアス
                set guifont=VL_Gothic:h12 " フォント
            endif
        endif
    " }}}

    " Windows {{{
        if has('win32')
            set guifont=VL_Gothic:h10:cSHIFTJIS       " フォント
            if has('printer')
                set printfont=VL_Gothic:h10:cSHIFTJIS     " 印刷時のフォント
                set printoptions=wrap:y,number:y,header:0 " 印刷
            endif
        endif
    " }}}
" }}}

" Japanese {{{
    " euc-jpがlatin1で表示される対策
    if &encoding !=# 'utf-8'
    else
        "ucs-bom,utf-8,default,latin1 デフォの状態
        set fileencodings-=latin1
        set fileencodings+=euc-jp
        set fileencodings+=latin1
    endif
" }}}

" Mouse {{{
    set mouse=a      " マウスモード有効
    set nomousefocus " マウスの移動でフォーカスを自動的に切替えない (mousefocus:切替る)
    set mousehide    " 入力時にマウスポインタを隠す (nomousehide:隠さない)
" }}}

" Searching {{{
    set ignorecase  " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
    set smartcase   " 検索文字列に大文字が含まれている場合は区別して検索する
    set incsearch   " インクリメンタルサーチ 検索文字を打っている途中で、目的の単語を見つけたらEnterを押下 検索をやめたい場合はEscを押下
    set wrapscan    " 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
    set noincsearch " 検索文字列入力時に順次対象文字列にヒットさせない
" }}}

" Remap {{{
    ":noremap  ノーマルモード、ビジュアルモード、オペレータ待機モード
    ":vnoremap ビジュアルモード
    ":nnoremap ノーマルモード
    ":onoremap オペレータ待機モード
    ":noremap! インサートモード、コマンドライン
    ":inoremap インサートモード
    ":cnoremap コマンドライン

    " .vimrc {{{
        " 開く
        nnoremap <Space>. :<C-u>edit $MYVIMRC<Enter>
        " 再読みこみ
        nnoremap <Space>s. :<C-u>source $MYVIMRC<Enter>
    " }}}

    " Help {{{
        " helpを引きやすく
        nnoremap <C-h> :<C-u>help<Space>
        " カーソル下のキーワードでhelpを引く
        nnoremap <C-h><C-h> :<C-u>help<Space><C-r><C-w><Enter>
    " }}}

    " Moving {{{
        "nnoremap <Space>j <C-f>" 次表示
        "nnoremap <Space>k <C-b>" 前表示
    " }}}

    " Encording {{{
        " ファイルをshift_jisで改行コードをCRLFにする
        nnoremap <Space>w :<C-u>set ff=dos fenc=shift_jis<Enter>
        " ファイルをutf-8で改行コードをLFにする
        nnoremap <Space>u :<C-u>set ff=unix fenc=utf-8<Enter>
        " euc-jpで開く
        nnoremap <Space>e :<C-u>e ++enc=euc-jp<Enter>
        " euc-jpにする
        nnoremap <Space>E :<C-u>set fileencoding=euc-jp<Enter>
    " }}}

    " Window {{{
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
    " }}}

    " Tab {{{
        " 新規タブを開く
        nnoremap <Space>t :<C-u>tabnew<Enter>
        " 左のタブへ移動
        nnoremap <Space>hh :<C-u>tabp<Enter>
        " 右のタブへ移動
        nnoremap <Space>ll :<C-u>tabn<Enter>
    " }}}

    " Completion {{{
        " omni補完
        imap <Space>o <C-x><C-o>
        "inoremap <A-(> ()<LEFT>" (), {} 補完
        "inoremap <A-{> <ESC>A<SPACE>{}<Left><CR><ESC>O
        "nnoremap <A-{> A<SPACE>{}<Left><CR><ESC>O
    " }}}

    " Color {{{
        " see@http://d.hatena.ne.jp/connvoi_tyou/20080306
        " 今、何色を表示できるのか表示
        cnoremap CA so $VIMRUNTIME/syntax/colortest.vim<Enter>
        " 今の色設定を表示
        cnoremap CS so $VIMRUNTIME/syntax/hitest.vim<Enter>
    " }}}

    " Others {{{
        " 空行を挿入
        "nnoremap <Space>0 :<C-u>call append(expand('.'), '')<Cr>j
        " 検索ハイライトを非表示
        nnoremap <Esc><Esc> :<C-u>nohlsearch<Enter>
        " vimをバックグラウンドへ
        nnoremap <Space>bg :<C-u>suspend<Enter>
    " }}}
" }}}

" Plugin Settings {{{
    " Scroll {{{
        " 次表示をスムーススクロール
        nnoremap <Space>jj :call SmoothScroll("d",2, 2)<Enter>
        nnoremap <Space>j :call SmoothScroll("d",1, 1)<Enter>
        " 前表示をスムーススクロール
        nnoremap <Space>kk :call SmoothScroll("u",2, 2)<Enter>
        nnoremap <Space>k :call SmoothScroll("u",1, 1)<Enter>
    " }}}

    " bufexplorer.vim バッファ一覧を表示 {{{
        "cnoremap LS BufExplorer<Enter>
    " }}}

    " vim-indent-guides {{{
        nnoremap <silent> <Space>id :<C-u>IndentGuidesToggle<Enter>
        let g:indent_guides_auto_colors = 0
        let g:indent_guides_start_level = 4
        let g:indent_guides_guide_size = 1
        autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=3
        autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
        if 'dark' == &background
            hi IndentGuidesOdd  ctermbg=black
            hi IndentGuidesEven ctermbg=darkgrey
        else
            hi IndentGuidesOdd  ctermbg=white
            hi IndentGuidesEven ctermbg=lightgrey
        endif
    " }}}

    " nerdtree {{{
        nnoremap <Space>tr :<C-u>NERDTreeToggle<Enter>
        let NERDTreeShowHidden=1
    " }}}

    " autofmt 自動的に日本語入力(IM)をoffにする機能を有効 {{{
        "set imdisableactivate
    " }}}

    " Git {{{
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
    " }}}

    " Align {{{
        let g:Align_xstrlen = 3
        vmap <Space>s <Leader>tsp
        smap <Space>s <Leader>tsp
        vmap <Space>a : Align
        smap <Space>a : Align
    " }}}

    " NERD_commenter.vim {{{
        "let g:NERDCreateDefaultMappings = 0 " デフォルトのマッピングを無効にする
        "let g:NERDSpaceDelims = 1 " 行頭に1スペースを作ってコメントアウトする
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
    " }}}

    " YankRing.vim {{{
        " yank_historyファイル場所指定
        let g:yankring_history_file = '.vim/tmp/plugin/.yankring_history'
        " 履歴のリストを表示
        nmap Y :<C-u>YRShow<CR>
        " 履歴をクリア
        nnoremap <silent> ,yc :<C-u>YRClear<CR>
        " 数値の引数を取り、履歴のリストの指定した番号のデータを取り出してペースト
        nnoremap <silent> ,yp :<C-u>YRGetElem
        " 数値の引数を取り、履歴のリストの指定した番号目の履歴が先頭に
        nnoremap <silent> ,yt :<C-u>:YRSetTop
    " }}}

    " evervim {{{
        " 作業用ワークディレクトリ指定
        let g:evervim_workdir = $HOME . '/.vim/tmp/plugin/.evervim'
        " ノートの一覧表示
        nnoremap <silent> ,el :<C-u>EvervimNotebookList<CR>
        " タグ一覧表示
        nnoremap <silent> ,et :<C-u>EvervimListTags<CR>
        " 新規ノート
        nnoremap <silent> ,en :<C-u>EvervimCreateNote<CR>
    " }}}

    " gundo.Vim {{{
        nmap U :<C-u>GundoToggle<CR>
    " }}}

    " taglist.vim {{{
        " 関数一覧
        set tags=tags
        "set tags+=~/.tags
        "let Tlist_Ctags_Cmd = '/Applications/MacVim.app/Contents/MacOS/ctags' " ctagsのパス
        let Tlist_Show_One_File = 1               " 現在編集中のソースのタグしか表示しない
        let Tlist_Exit_OnlyWindow = 1             " taglistのウィンドーが最後のウィンドーならばVimを閉じる
        let Tlist_Use_Right_Window = 1            " 右側でtaglistのウィンドーを表示
        let Tlist_Enable_Fold_Column = 1          " 折りたたみ
        let Tlist_Auto_Open = 1                   " 自動表示
        let Tlist_Auto_Update = 1
        let Tlist_WinWidth = 50
        "map <silent> <leader>tl :Tlist<CR>        " taglistを開くショットカットキー
    " }}}

    " Srcexpl {{{
        " [Srcexpl] tagsを利用したソースコード閲覧・移動補助機能
        let g:SrcExpl_UpdateTags    = 1         " tagsをsrcexpl起動時に自動で作成（更新）
        let g:SrcExpl_RefreshTime   = 0         " 自動表示するまでの時間(0:off)
        let g:SrcExpl_WinHeight     = 9         " プレビューウインドウの高さ
        let g:SrcExpl_RefreshMapKey = "<Space>" " 手動表示のMAP
        let g:SrcExpl_GoBackMapKey  = "<C-b>"   " 戻る機能のMAP
        nmap <F8> :SrcExplToggle<CR>            " Source Explorerの機能ON/OFF
    " }}}

    " vimshell {{{
        let g:vimshell_temporary_directory = expand('~/.vim/tmp/plugin/.vimshell')
        " シェルを起動
        nnoremap <silent> ,vs :<C-u>VimShell<CR>
        " pythonを非同期で起動
        nnoremap <silent> ,vp :<C-u>VimShellInteractive python<CR>
        " irbを非同期で起動
        nnoremap <silent> ,vr :<C-u>VimShellInteractive irb<CR>
        " 非同期で開いたインタプリタに現在の行を評価させる
        vmap <silent> ,ss :<C-u>VimShellSendString<CR>
        " 選択中に,ss: 非同期で開いたインタプリタに選択行を評価させる
        nnoremap <silent> ,ss <S-v>:<C-u>VimShellSendString<CR>
    " }}}

    " quickrun.vim {{{
        "let mapleader = ' e'
        au Filetype ruby nnoremap <buffer><leader> :!ruby %<Space>
        au Filetype php nnoremap <buffer><leader> :!php %<Space>
        au Filetype perl nnoremap <buffer><leader> :!perl %<Space>
        au Filetype python nnoremap <buffer><leader> :!python %<Space>
        au Filetype sh nnoremap <buffer><leader> :!sh %<Space>
        au Filetype scala nnoremap <buffer><leader> :!scala %<Space>
        au Filetype zsh nnoremap <buffer><leader> :!zsh %<Space>
        au Filetype haskell nnoremap <buffer><leader> :!runghc %<Space>
        au Filetype scheme nnoremap <buffer><leader> :!gosh %<Space>
        au Filetype javascript nnoremap <buffer><leader> :!js %<Space>
        au Filetype vim nnoremap <silent><leader> :source %<Return>
    " }}}

    " neocomplcache.vim {{{
        let g:acp_enableAtStartup = 0                        " Disable AutoComplPop.
        let g:neocomplcache_enable_at_startup = 1            " Use neocomplcache.
        let g:neocomplcache_enable_smart_case = 1            " Use smartcase.
        let g:neocomplcache_enable_camel_case_completion = 1 " Use camel case completion
        let g:neocomplcache_enable_underbar_completion = 1   " Use underbar completion.
        let g:neocomplcache_min_syntax_length = 3            " Set minimum syntax keyword length.
        let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
        let g:neocomplcache_temporary_dir = $HOME . '/.vim/tmp/plugin/.neocon'
        "let g:neocomplcache_enable_auto_select = 1           " AutoComplPop like behavior.
        "let g:NeoComplCache_SkipInputTime = '1.5'            " 勝手にオムニ補完しない時間を設定

        " Recommended key-mappings.
        " inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>" " doesn't work o_O
        " <C-h>, <BS>: close popup and delete backword char.
        inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
        inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
        inoremap <expr><C-y> neocomplcache#close_popup()
        inoremap <expr><C-e> neocomplcache#cancel_popup()
        " inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
        inoremap <expr><C-l> neocomplcache#complete_common_string()

        let tmp = '~/.vim/bundle/snipmate.vim/snippets'
        if isdirectory(tmp)
            let g:neocomplcache_snippets_dir = tmp;
        endif

        " Enable omni completion.
        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
        autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

        " Enable heavy omni completion.
        if !exists('g:neocomplcache_omni_patterns')
            let g:neocomplcache_omni_patterns = {}
        endif
        let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
        "autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
        let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
        let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
        let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
    " }}}

    " unite.vim {{{
        let g:unite_data_directory = expand('~/.vim/tmp/plugin/.unite')
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
    " }}}

    " unite-plugins {{{
        cnoremap UO Unite help<Enter>
        cnoremap UO Unite outline<Enter>
        cnoremap UC Unite colorscheme<Enter>
        cnoremap UF Unite font<Enter>
        cnoremap UB Unite hamburger<Enter>
        cnoremap UD Unite drink<Enter>
    " }}}

    " ack.vim {{{
    " }}}

    " snipmate.vim {{{
        "inoremap <silent> <c-b> <c-r>=TriggerSnippet()<cr>
        "snoremap <silent> <c-b> <esc>i<right><c-r>=TriggerSnippet()<cr>
    " }}}

    " Vundle {{{
        cnoremap BI BundleInstall<Enter>
        cnoremap BC BundleClean<Enter>
    " }}}

    " open-browser.vim {{{
        nmap <Leader>w :<C-u>call openbrowser#_keymapping_smart_search('n')<CR>
    " }}}
" }}}

" Others {{{
    " Vim で"gf"をスラッシュで始まる相対URLに対応させる
    " see@http://hail2u.net/blog/software/support-slash-started-relative-url-in-vim-gf.html
    autocmd FileType html :setlocal path+=;/

    " Mac Quick Look {{{
        " ファイル保存時に拡張属性を設定するコマンド
        " see@http://d.hatena.ne.jp/uasi/20110523/1306079612
        au BufWritePost * call SetUTF8Xattr(expand("<afile>"))

        function! SetUTF8Xattr(file)
            let isutf8 = &fileencoding == "utf-8" || ( &fileencoding == "" && &encoding == "utf-8")
            if has("unix") && match(system("uname"),'Darwin') != -1 && isutf8
                call system("xattr -w com.apple.TextEncoding 'utf-8;134217984' '" . a:file . "'")
            endif
        endfunction
    " }}}

    " Omni Mapping <tab>で補完 {{{
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
        inoremap <silent> <tab> <c-r>=InsertTabWrapper()<CR>
    " }}}

    " Omnifunc {{{
        " 注意: この内容は:filetype onよりも後に記述すること。
        autocmd FileType *
        \   if &l:omnifunc == ''
        \ |   setlocal omnifunc=syntaxcomplete#Complete
        \ | endif
    " }}}

    " Save Option {{{
        " 行末の空白除去
        autocmd BufWritePre * :%s/\s\+$//ge
        " tabをスペースに変換
        autocmd BufWritePre * :%s/\t/  /ge
    " }}}

    " VimrcLocalFile {{{
        if filereadable(expand('~/.vimrc.local'))
            source ~/.vimrc.local
        endif
    " }}}
" }}}
