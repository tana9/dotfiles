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
let g:quickrun_config['markdown']= {
            \ 'type': 'markdown/pandoc',
            \ 'command': 'D://Program Files//Pandoc//bin/pandoc.exe',
            \ 'cmdopt': '-s',
            \ 'outputter': 'browser'
            \ }

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
let QFixHowm_Title = '#'
set noundofile "undo�t�@�C���𖳌��ɂ���

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
" �[������vim�ݒ�
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
