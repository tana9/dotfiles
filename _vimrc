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

"" �g�������v���O�C���̃��|�W�g���𗅗�BSubversion �Ƃ� Mercurial ��
"" ��������炵���B
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

" �����N���֎~
"call singleton#enable()
"colorscheme desert
set encoding=japan
set nobackup	"�o�b�N�A�b�v
set number		"�s�ԍ�
set hidden		"�ҏW���Ƀo�b�t�@�ړ�
set nowrap		"�܂�Ԃ�
set clipboard+=unnamed  "�N���b�v�{�[�h���g�p����
set guioptions+=b       "���X�N���[���o�[
set noautochdir          "�J�����g�f�B���N�g���������ňړ�
set smarttab
set nf=""   "Ctrl-A����0���߂̕�����10�i���Ƃ��Ĉ���
set nocursorline
"Tab��
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
"set softtabstop=4
"Tab����
set list
set listchars=tab:>-,trail:�,extends:>,precedes:<,nbsp:%
"hi NonText guibg=NONE guifg=Gray40
"hi SpecialKey guibg=NONE guifg=Gray40
" �S�p�X�y�[�X�\��
augroup highlightIdegraphicSpace
    autocmd!
    autocmd ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=Gray40
    autocmd VimEnter,WinEnter * match IdeographicSpace /�@/
"    autocmd ColorScheme * highlight SpecialKey guibg=NONE guifg=Gray40
"    autocmd ColorScheme * highlight NonText    guibg=NONE guifg=Gray40
augroup END

" StatusLine
set laststatus=2 "��ɃX�e�[�^�X�s��\��
set statusline=%F%m%r%h%w\%=[type=%Y]\[format=%{&ff}]\[enc=%{&fileencoding}]\[low=%l/%L]

" �R�}���h���[�h
set wildmode=longest:list,full

"GREP
"CYGWIN��grep���g�p
set grepprg=grep\ -nH
let $CYGWIN = 'nodosfilewarning'

"Esc2�񉟂��Ńn�C���C�g����
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" �p�X��؂���X���b�V���ɂ��邩
" �Q�� http://sites.google.com/site/fudist/Home/qfixhowm#downloads
set noshellslash

"matchit.vim �L����
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
"�R�}���h���C����Emacs���ɂ���
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <C-E> <End>

" �C���T�[�g���[�h���� Emacs �L�[�o�C���h
" �Q�l
" http://gravity-crim.blogspot.jp/2011/06/vimemacs-2_20.html
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-e> <End>
imap <C-a> <Home>
imap <C-h> <Backspace>
imap <C-d> <Del>
"�J�[�\���ʒu�̍s���E�B���h�E�̒����ɃX�N���[��
inoremap <C-l> <C-o>zz
"�J�[�\���ȑO�̕������폜
inoremap <C-u> <C-o>d0
"�J�[�\���ȍ~�̕������폜
inoremap <C-k> <C-o>D
"�A���h�D
inoremap <C-x>u <C-o>u
"�\���
inoremap <C-y> <C-o>P
"�J�[�\������P�ꖖ���܂ō폜
inoremap <F1>d <C-o>dw
"�t�@�C���̐擪�Ɉړ�
inoremap <F1>< <Esc>ggI
"�t�@�C���̖����Ɉړ�
inoremap <F1>> <Esc>GA
"���ɃX�N���[��
inoremap <C-v> <C-o><C-f>
"��ɃX�N���[��
inoremap <F1>v <C-o><C-b>
" Ctrl-Space �ŕ⊮
" Windows�� <Nul>�łȂ� <C-Space> �Ƃ���
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
"qfixapp��runtimepath��ʂ�(�p�X�͊��ɍ��킹�Ă�������)
set rtp+=~\.vim\bundle\qfixhowm
"�L�[�}�b�v���[�_�[
let QFixHowm_Key = 'g'
"howm_dir�̓t�@�C����ۑ��������f�B���N�g����ݒ�B
let howm_dir		= '~\Howm'
" 1��1�t�@�C���ŊǗ�����B
"let howm_filename   = '%Y/%m/%Y-%m-%d-000000.howm'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.howm'
let howm_fileencoding    = 'cp932'
let howm_fileformat      = 'dos'
" QFixMemo�V���^�b�N�X�n�C���C�g�ݒ�
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
"�C���T�[�g���[�h�ŊJ�n
"let g:unite_enable_start_insert = 1
let g:unite_enable_start_insert = 0
"�ŋߊJ�����t�@�C�������̕ۑ���
let g:unite_source_file_mru_limit = 50

"file_mru�̕\���t�H�[�}�b�g���w��B��ɂ���ƕ\���X�s�[�h�������������
let g:unite_source_file_mru_filename_format = ''

"���݊J���Ă���t�@�C���̃f�B���N�g�����̃t�@�C���ꗗ�B
"�J���Ă��Ȃ��ꍇ�̓J�����g�f�B���N�g��
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"�o�b�t�@�ꗗ
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"���W�X�^�ꗗ
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"�ŋߎg�p�����t�@�C���ꗗ
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"�u�b�N�}�[�N�ꗗ
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"�u�b�N�}�[�N�ɒǉ�
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"unite���J���Ă���Ԃ̃L�[�}�b�s���O
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
	"ESC��unite���I��
	nmap <buffer> <ESC> <Plug>(unite_exit)
	"���̓��[�h�̂Ƃ�jj�Ńm�[�}�����[�h�Ɉړ�
	imap <buffer> jj <Plug>(unite_insert_leave)
	"���̓��[�h�̂Ƃ�ctrl+w�Ńo�b�N�X���b�V�����폜
	imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
	"ctrl+j�ŏc�ɕ������ĊJ��
	nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
	inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
	"ctrl+j�ŉ��ɕ������ĊJ��
	nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
	inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
	"ctrl+o�ł��̏ꏊ�ɊJ��
	nnoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
	inoremap <silent> <buffer> <expr> <C-o> unite#do_action('open')
endfunction"}}}

"===========================================
" vimplenote-vim
"===========================================
let g:VimpleNoteUsername = "m@tana9.net"
let g:VimpleNotePassword = "tana9ara"

"===========================================
" �[������vim�ݒ�
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
