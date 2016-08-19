"echo "_vimrc"
"===========================================
" dein
"===========================================
if &compatible
    setnocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/unite.vim.git')
call dein#add('Shougo/vimfiler.git')
call dein#add('Shougo/vimshell.git')
call dein#add('calendar.vim')
call dein#add('vim-jp/vimdoc-ja')
call dein#add('EnhCommentify.vim')
call dein#add('surround.vim')
call dein#add('changelog')
call dein#add('fuenor/qfixhowm.git')
call dein#add('LeafCage/yankround.vim')
call dein#add('kien/ctrlp.vim.git')
call dein#add('thinca/vim-singleton.git')
call dein#add('Align')
call dein#add('smartchr')
call dein#add('hsitz/VimOrganizer')
call dein#add('chrisbra/NrrwRgn.git')
"call dein#add('mattn/vimplenote-vim')
call dein#add('mattn/webapi-vim')
call dein#add('https://gist.github.com/3278077.git')
call dein#add('nathanaelkane/vim-indent-guides')
"Theme
call dein#add('itchyny/lightline.vim')
call dein#add('tomasr/molokai')
call dein#add('nanotech/jellybeans.vim.git')
call dein#add('w0ng/vim-hybrid.git')
"Python
call dein#add('davidhalter/jedi-vim')
call dein#add('kevinw/pyflakes-vim')
call dein#add('nvie/vim-flake8')
"Golang
call dein#add('vim-jp/vim-go-extra')
call dein#add('fatih/vim-go')

call dein#end()

filetype plugin indent on

" 複数起動禁止
"call singleton#enable()
"colorscheme desert
set encoding=japan
set nobackup	"バックアップ
set number		"行番号
set hidden		"編集中にバッファ移動
set nowrap		"折り返し
set clipboard+=unnamed  "クリップボードを使用する
set guioptions+=b       "横スクロールバー
set noautochdir          "カレントディレクトリを自動で移動
set smarttab
set nf=""   "Ctrl-A時に0埋めの文字を10進数として扱う
set nocursorline
"Tab幅
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
"set softtabstop=4
"Tab可視化
set list
set listchars=tab:>-,trail:･,extends:>,precedes:<,nbsp:%

" StatusLine
set laststatus=2 "常にステータス行を表示
set statusline=%F%m%r%h%w\%=[type=%Y]\[format=%{&ff}]\[enc=%{&fileencoding}]\[low=%l/%L]

" コマンドモード
set wildmode=longest:list,full

"GREP
"CYGWINのgrepを使用
set grepprg=grep\ -nH
let $CYGWIN = 'nodosfilewarning'

"Esc2回押しでハイライト消去
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" パス区切りをスラッシュにするか
" 参照 http://sites.google.com/site/fudist/Home/qfixhowm#downloads
set noshellslash

"matchit.vim 有効化
source $VIMRUNTIME/macros/matchit.vim


"==========================================
" vim-indent-guide
"==========================================
IndentGuideEnable

"==========================================
" FileType
"==========================================
autocmd! BufNewFile,BufRead *.ps1 setf ps1
autocmd! Filetype ps1 setlocal ts=4 sw=4 autoindent
autocmd! Filetype html setlocal ts=2 sw=2 autoindent
"markdown
autocmd! BufNewFile,BufRead *.md set filetype=markdown
"typescript
"au BufNewFile,BufRead *.ts setf ts

"==========================================
" KeyMap
"==========================================
"コマンドラインをEmacs風にする
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-E> <End>

" インサートモード時の Emacs キーバインド
" 参考
" http://gravity-crim.blogspot.jp/2011/06/vimemacs-2_20.html
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-e> <End>
imap <C-a> <Home>
imap <C-h> <Backspace>
imap <C-d> <Del>
"カーソル位置の行をウィンドウの中央にスクロール
inoremap <C-l> <C-o>zz
"カーソル以前の文字を削除
inoremap <C-u> <C-o>d0
"カーソル以降の文字を削除
inoremap <C-k> <C-o>D
"アンドゥ
inoremap <C-x>u <C-o>u
"貼りつけ
inoremap <C-y> <C-o>P
"カーソルから単語末尾まで削除
inoremap <F1>d <C-o>dw
"ファイルの先頭に移動
inoremap <F1>< <Esc>ggI
"ファイルの末尾に移動
inoremap <F1>> <Esc>GA
"下にスクロール
inoremap <C-v> <C-o><C-f>
"上にスクロール
inoremap <F1>v <C-o><C-b>
" Ctrl-Space で補完
" Windowsは <Nul>でなく <C-Space> とする
"inoremap <Nul> <C-n>
inoremap <C-Space> <C-n>


"===========================================
" Align
" http://vim-users.jp/2009/09/hack77/
"===========================================
let g:Align_xstrlen= 3

"===========================================
" smartchr
"===========================================
inoremap <buffer> <expr> = smartchr#loop(' = ', ' == ', '=')

"===========================================
" Changelog
"===========================================
runtime ftplugin/changelog.vim
let g:changelog_dateformat = "%Y-%m-%d (%a)"
let g:changelog_username = ""
let g:changelog_path = "~/ChangeLogs"
nnoremap <Leader><Leader><Leader> :new ~/ChangeLogs/changelog2013.txt<cr>


"===========================================
" neocomplcache
"===========================================
let g:neocomplcache_enable_at_startup = 1
set makeprg=php\ -l\ % 
set errorformat=%m\ in\ %f\ on\ line\ %l

"===========================================
" VimFiler
"===========================================
let g:vimfiler_as_default_explorer = 1
" Use trashbox.
" Windows only and require latest vimproc.
let g:unite_kind_file_use_trashbox = 1

"===========================================
" QuricRun
"===========================================
let g:quickrun_config = {}
let g:quickrun_config['markdown']= {
            \ 'type': 'markdown/pandoc',
            \ 'command': 'D://Program Files//Pandoc//bin/pandoc.exe',
            \ 'cmdopt': '-s',
            \ 'outputter': 'browser'
            \ }

"===========================================
" qfixhowm
"===========================================
"qfixappにruntimepathを通す(パスは環境に合わせてください)
set rtp+=~\.vim\bundle\qfixhowm
"キーマップリーダー
let QFixHowm_Key = 'g'
"howm_dirはファイルを保存したいディレクトリを設定。
let howm_dir		= '~\Howm'
" 1日1ファイルで管理する。
"let howm_filename   = '%Y/%m/%Y-%m-%d-000000.howm'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let howm_fileencoding    = 'cp932'
let howm_fileformat      = 'dos'
" QFixMemoシンタックスハイライト設定
let g:qfixmemo_syntax = 3
" let QFixHowm_FileType = 'qfix_memo'
let QFixHowm_FileType = 'markdown'
let QFixHowm_Title = '#'
set noundofile "undoファイルを無効にする

"===========================================
" ctrlp
"===========================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_use_migemo = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"===========================================
" unite
"===========================================
"unite prefix key.
nnoremap [unite] <Nop>
nmap <Space>f [unite]

"unite general settings
"インサートモードで開始
"let g:unite_enable_start_insert = 1
let g:unite_enable_start_insert = 0
"最近開いたファイル履歴の保存数
let g:unite_source_file_mru_limit = 50

"file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''

"現在開いているファイルのディレクトリ下のファイル一覧。
"開いていない場合はカレントディレクトリ
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"レジスタ一覧
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"最近使用したファイル一覧
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"ブックマーク一覧
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"ブックマークに追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"uniteを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
    "ESCでuniteを終了
    nmap <buffer> <ESC> <Plug>(unite_exit)
    "入力モードのときjjでノーマルモードに移動
    imap <buffer> jj <Plug>(unite_insert_leave)
    "入力モードのときctrl+wでバックスラッシュも削除
    imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
    "ctrl+jで縦に分割して開く
    nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
    inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
    "ctrl+jで横に分割して開く
    nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
    inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
    "ctrl+oでその場所に開く
    nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
    inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
endfunction"}}}


"===========================================
" 端末毎のvim設定
"===========================================
if filereadable(expand('~/_vimrc.local'))
    source ~/_vimrc.local
endif

"Python
"let g:jedi#popup_select_first = 0
"autocmd FileType python setlocal completeopt-=preview

"neocomplete
let g:neocomplete#enable_at_startup = 1
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    " return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif

" let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

"==========================================
"GO
"==========================================
let g:go_bin_path = expand("~/.go/bin")

"==========================================
"YankRing.vim
"==========================================
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
