"echo "_vimrc"
"===========================================
" neobundle
"===========================================
set nocompatible
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Use https protocol over proxy.
" let g:neobundle#types#git#default_protocol = 'https'
call neobundle#begin(expand('~/.vim/bundle/'))

" Let neobundle manage neobundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Use neobundle standard recipes.
NeoBundle 'Shougo/neobundle-vim-scripts'

"" 使いたいプラグインのリポジトリを羅列。Subversion とか Mercurial で
"" もいけるらしい。
NeoBundle 'https://github.com/Shougo/unite.vim.git'
"NeoBundle 'https://github.com/Shougo/vimproc.git'
NeoBundle 'https://github.com/Shougo/vimshell.git'
NeoBundle 'https://github.com/Shougo/vimfiler.git'
NeoBundle 'https://github.com/Shougo/neocomplete.git'
NeoBundle 'EnhCommentify.vim'
"NeoBundle 'neocomplcache'
NeoBundle 'surround.vim'
NeoBundle 'changelog'
NeoBundle 'https://github.com/fuenor/qfixhowm.git'
NeoBundle 'https://github.com/vim-scripts/YankRing.vim.git'
NeoBundle 'https://github.com/kien/ctrlp.vim.git'
NeoBundle 'https://github.com/thinca/vim-singleton.git'
NeoBundle 'Align'
NeoBundle 'smartchr'
NeoBundle 'hsitz/VimOrganizer'
NeoBundle 'chrisbra/NrrwRgn.git'
NeoBundle 'calendar.vim'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'mattn/vimplenote-vim'
NeoBundle 'mattn/webapi-vim'
"NeoBundle 'https://github.com/vim-scripts/Align.vim.git'
"NeoBundle 'Vimball'
"NeoBundle 'https://github.com/thinca/vim-quickrun.git'
"NeoBundle 'https://github.com/jelera/vim-javascript-syntax.git'
"NeoBundle 'https://github.com/pangloss/vim-javascript.git'
"NeoBundle 'http://github.com/othree/html5.vim.git'
"NeoBundle 'http://github.com/PProvost/vim-ps1.git'
"NeoBundle 'http://github.com/yuruyoro/monday.vim'
"NeoBundle 'https://github.com/tyru/open-browser.vim.git'
"NeoBundle 'http://github.com/h1mesuke/unite-outline.git'
"NeoBundle 'https://github.com/mattn/mkdpreview-vim'
"NeoBundle 'http://github.com/davidoc/taskpaper.vim.git'
"NeoBundle 'vimwiki'
"NeoBundle 'https://github.com/glidenote/memolist.vim.git'
"NeoBundle 'https://github.com/vim-jp/vital.vim'
NeoBundle 'gh:itchyny/lightline.vim.git', {
      \ 'gui' : 1
       \ }
NeoBundle 'https://github.com/nanotech/jellybeans.vim.git'
NeoBundle 'https://github.com/w0ng/vim-hybrid.git'
NeoBundle 'https://gist.github.com/3278077.git'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'https://github.com/tomasr/molokai'
"NeoBundle 'https://github.com/istepure/vim-toolbar-icons-silk'
"Python
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'kevinw/pyflakes-vim'
NeoBundle 'nvie/vim-flake8'

filetype plugin indent on
call neobundle#end()
NeoBundleCheck

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
"hi NonText guibg=NONE guifg=Gray40
"hi SpecialKey guibg=NONE guifg=Gray40
" 全角スペース表示
augroup highlightIdegraphicSpace
    autocmd!
    autocmd ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=Gray40
    autocmd VimEnter,WinEnter * match IdeographicSpace /　/
"    autocmd ColorScheme * highlight SpecialKey guibg=NONE guifg=Gray40
"    autocmd ColorScheme * highlight NonText    guibg=NONE guifg=Gray40
augroup END

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
" lightline
"==========================================
"let g:lightline.colorscheme = 'default'
"let g:lightline.colorscheme = 'jellybeans'

"==========================================
" vim-indent-guide
"==========================================
"IndentGuideEnable

"==========================================
" FileType
"==========================================
"autocmd FileType php :set dictionary=$HOME/.vim/dict/wordpress.dict
autocmd FileType perl,cgi :compiler perl
au BufNewFile,BufRead *.ps1 setf ps1
autocmd Filetype ps1 set ts=4 sw=4 autoindent
"markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
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
"let g:quickrun_config['markdown'] = {
"            \ 'type': 'markdown/kramdown',
"            \ 'cmdopt': '-s',
"            \ 'outputter': 'browser'
"            \ }
"let g:quickrun_config['markdown'] = {
"            \ 'type': 'markdown/kramdown',
"            \ 'command': 'D://Ruby193//bin//kramdown',
"            \ 'outputter': 'browser',
"            \ }
let g:quickrun_config['markdown']= {
			\ 'type': 'markdown/pandoc',
			\ 'command': 'D://Program Files//Pandoc//bin/pandoc.exe',
			\ 'cmdopt': '-s',
			\ 'outputter': 'browser'
			\ }
"let g:quickrun_config['markdown']= {
"      \ 'outputter': 'browser'
"      \ }


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

"===========================================
" VimOrgnizer
"===========================================
filetype plugin indent on
" and then put these lines in vimrc somewhere after the line above
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

"===========================================
" ctrlp
"===========================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_use_migemo = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"===========================================
" VimOrgnizer
"===========================================
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()
let g:org_command_for_emacsclient = 'D:\Soft\emacs-24.2\bin\emacsclientw.exe'
let g:org_agenda_select_dirs=["~/.vim_junk/org_files"]
let g:org_agenda_files = split(glob("~/.vim_junk/org_files/*.org"),"\n")

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
" vimplenote-vim
"===========================================
let g:VimpleNoteUsername = "m@tana9.net"
let g:VimpleNotePassword = "tana9ara"

"===========================================
" 端末毎のvim設定
"===========================================
if filereadable(expand('~/_vimrc.local'))
    source ~/_vimrc.local
endif

"Python
let g:jedi#popup_select_first = 0
autocmd FileType python setlocal completeopt-=preview

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

autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#popup_select_first=0
let g:jedi#auto_vim_configuration=0
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif

" let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'



let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'
