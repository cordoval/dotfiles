""""""""""""""""""""""""""""""""""""""""
"
"  BUNDLES (PATHOGEN)
"
"     `call pathogen#helptags()` to
"     regenerate docs
"
silent! call pathogen#runtime_append_all_bundles()

"
""""""""""""""""""""""""""""""""""""""""
"
"  HIGHLIGHTING
"
syntax on
colo mustango
se cursorline
se listchars=tab:▸\ ,trail:□,eol:¬

"
""""""""""""""""""""""""""""""""""""""""
"
"  ENVIRONMENT
"
se enc=utf8
se bs=2
se ff=unix
se ffs=unix
se nocompatible
se hidden
se nobackup
se dir=/tmp,/var/tmp
se autoread
se nu
se vb
se ch=1
se laststatus=2
se nosmd
se mousehide
se ttyfast
se autoindent
se copyindent
se smartindent
se smarttab
se nolist
se nofoldenable
se backspace=indent,eol,start
se wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*cache,*/logs,.DS_Store

"
""""""""""""""""""""""""""""""""""""""""
"
"  SEARCH
"
se incsearch
se hlsearch
se showmatch
se ignorecase
se smartcase
se gdefault

"
""""""""""""""""""""""""""""""""""""""""
"
"  SCROLLING
"
se scrolljump=3
se scrolloff=3

"
""""""""""""""""""""""""""""""""""""""""
"
"  TABS
"
se tabstop=4
se shiftwidth=4
se expandtab
se softtabstop=4
se showtabline=0

"
""""""""""""""""""""""""""""""""""""""""
"
"  AUTOCOMPLETION
"
se wcm=<Tab>
se wildmenu
se wildmode=list:longest

"
""""""""""""""""""""""""""""""""""""""""
"
"  WRAPPING
"
se wrap linebreak
se textwidth=100
se colorcolumn=100
se formatoptions=qrn1
"se formatprg=par
"se formatoptions+=tca


"
"+>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"|
"|  > CUSTOM MAPPINGS
"|
"|
""""""""""""""""""""""""""""""""""""""""
"
"  COPY-PASTE
"
set clipboard=unnamed
nmap ,p "0p
vmap ,p "0p

"
"
"  GENERAL OVERRIDINGS
"
inoremap jj     <esc>
nnoremap \      :
let mapleader = ","

"
""""""""""""""""""""""""""""""""""""""""
"
"  HIGHLIGHTING MAPPINGS
"
nmap <leader>ll :set list!<cr>
nnoremap <leader><space> :noh<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  LINES MOVEMENT
"
nmap <S-up>   [e
nmap <S-down> ]e
vmap <S-up>   [egv
vmap <S-down> ]egv

"
""""""""""""""""""""""""""""""""""""""""
"
"  FS NAVIGATION
"
nmap <leader>ep :e <c-r>=expand("%:p:h")."/"<cr>
nmap <leader>es :vsp <c-r>=expand("%:p:h")."/"<cr>
nmap <leader>se :Vex<cr><c-w>=
nmap <leader>mk :!mkdir <c-r>=expand("%:p:h")."/"<cr>
nmap <leader>rm :!rm -rf <c-r>=expand("%:p:h")."/"<cr>
cmap w!!        w !sudo tee % >/dev/null

"
""""""""""""""""""""""""""""""""""""""""
"
"  WINDOWS MANAGEMENT
"
nmap <leader>we <C-w>v<C-w>l
nmap <leader>ws <C-w>s<C-w>j
nmap <leader>wq <C-w>v<C-w>h
nmap <leader>w2 <C-w>s<C-w>k
nmap <leader>wo :on<cr>
nmap <leader>w= <C-w>=
nmap <leader>w0 <C-w>\|
nmap <leader>w- <C-w>_
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-x> <C-w>x

"
""""""""""""""""""""""""""""""""""""""""
"
"  BUFFERS MANAGEMENT
"
nmap <leader>bo :BufOnly<cr>
nmap <leader>bc :bd<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  MOVEMENT TUNING
"
nnoremap j     gj
nnoremap k     gk
nnoremap <tab> %
vnoremap <tab> %
vnoremap <     <gv
vnoremap >     >gv

"
""""""""""""""""""""""""""""""""""""""""
"
"  MOVEMENT COMBINATIONS TUNING
"
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
vnoremap <S-h>   <nop>
vnoremap <S-j>   <nop>
vnoremap <S-k>   <nop>
vnoremap <S-l>   <nop>

"
""""""""""""""""""""""""""""""""""""""""
"
"  SEARCH TUNING
"
nnoremap / /\v
vnoremap / /\v


"
"+>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"|
"|  > PLUGINS CONFIGURATION
"|
"|
""""""""""""""""""""""""""""""""""""""""
"
"  POWERLINE
"
call Pl#Theme#RemoveSegment('fileformat')

"
""""""""""""""""""""""""""""""""""""""""
"
"  FUGITIVE
"
nmap <leader>gs     :Gstatus<cr>
nmap <leader>gd     :Gdiff<cr>
nmap <leader>ga     :Gwrite<cr>
nmap <leader>gh     :Gbrowse!<cr>
nmap <leader>gc     :Gcommit<cr>
nmap <leader>gre    :Gremove<cr>
nmap <leader>gmo    :Gmove<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  ACK
"
nnoremap <leader>a :Ack 

"
""""""""""""""""""""""""""""""""""""""""
"
"  CTRLP
"
"map <c-r> :CtrlPBuffer<cr>
"let g:ctrlp_map = '<c-t>'
"let g:ctrlp_working_path_mode = 2
"let g:ctrlp_max_height = 15
"let g:ctrlp_open_multi = '1v'

"
""""""""""""""""""""""""""""""""""""""""
"
"  COMMAND-T
"
map <c-t> :CommandT<cr>
map <d-t> :CommandT<cr>
map <d-r> :CommandTBuffer<cr>
map <s-t> :CommandTFlush<cr> 
let g:CommandTMatchWindowReverse = 1
let g:CommandTMaxHeight = 15

"
""""""""""""""""""""""""""""""""""""""""
"
"  LUSTY
"
let g:LustyJugglerShowKeys = '1'

"
""""""""""""""""""""""""""""""""""""""""
"
"  TABULAR
"
nmap <leader><tab><tab> :Tab /
vmap <leader><tab> :Tab /
nmap <leader><tab>= :Tab /=<cr>
vmap <leader><tab>= :Tab /=<cr>
nmap <leader><tab>: :Tab /:\zs<cr>
vmap <leader><tab>: :Tab /:\zs<cr>
nmap <leader><tab>> :Tab /=><cr>
vmap <leader><tab>> :Tab /=><cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  YANKRING
"
let g:yankring_replace_n_pkey = '<c-n>'
let g:yankring_history_file = '.yankring_history'
nmap <leader>y :YRShow<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  EASYMOTION
"
let g:EasyMotion_leader_key='t'

"
""""""""""""""""""""""""""""""""""""""""
"
"  SURROUND
"
let g:surround_{char2nr("t")} = "{% block\1 \r..*\r &\1 %}\r{% endblock %}"
let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1 %}\r{% endif %}"
let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\ 1%}\r{% endfor %}"

"
""""""""""""""""""""""""""""""""""""""""
"
"  PHP
"
map <leader>u :call PhpInsertUse()<cr>
"nmap <c-p>   :call PhpDocSingle()<cr>
"nmap <c-p>   :call PhpDocRange()<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  BEHAT
"
let feature_filetype='behat'


"
"+>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"|
"|  > CUSTOM FUNCTIONS
"|
"|
""""""""""""""""""""""""""""""""""""""""
"
"  STRIP TRAILING SPACES
"
nmap <silent> <leader>c :call <SID>StripTrailingWhitespaces()<cr>
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

"
""""""""""""""""""""""""""""""""""""""""
"
"  RENAME CURRENT BUFFER FILE
"
nmap <leader>mv :Rename %:p:h<tab>
command! -nargs=1 -complete=file Rename call <SID>Rename(<q-args>)
function! <SID>Rename(newfile)
    let l:newfile = a:newfile
    let l:oldfile = expand('%:p')

    exe 'saveas! '.l:newfile
    call system('rm '.shellescape(l:oldfile))

    let l:lastbuf = bufnr(l:oldfile)
    exe 'bd! '.l:lastbuf
endfunction

"
""""""""""""""""""""""""""""""""""""""""
"
"  CREATE DIRECTORY FOR CURRENT BUFFER
"
function! <SID>MkdirsIfNotExists(directory)
    if(!isdirectory(a:directory))
        call system('mkdir -p '.shellescape(a:directory))
    endif
endfunction

"
"+>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"|
"|  > AUTOCMD
"|
"|
filetype on
filetype plugin on
filetype indent on

if has('autocmd')
    au BufWinEnter *     set foldlevel=999999 
    au FocusLost silent! :wa
    au FileType helpfile setlocal nonumber

    """"""""""""""""""""""""""""""""""""""""
    "
    "  FILE TYPES
    "
    au BufRead,BufNewFile *.php         setlocal filetype=php iskeyword-=$
    au BufRead,BufNewFile *.twig        setlocal filetype=jinja
    au BufRead,BufNewFile *.html.twig   setlocal filetype=htmljinja
    au BufRead,BufNewFile *.ejs         setlocal filetype=html
    au BufRead,BufNewFile *.json        setlocal filetype=javascript

    """"""""""""""""""""""""""""""""""""""""
    "
    "  TABS
    "
    au BufRead,BufNewFile *.class.php   setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au BufRead,BufNewFile *.jade        setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au BufRead,BufNewFile *.yml         setlocal tabstop=4 shiftwidth=4 softtabstop=4
    au BufRead,BufNewFile *.feature     setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au BufRead,BufNewFile *.css         setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au BufRead,BufNewFile *.scss        setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au BufRead,BufNewFile *.js          setlocal tabstop=2 shiftwidth=2 softtabstop=2
    au BufRead,BufNewFile *.coffee      setlocal tabstop=2 shiftwidth=2 softtabstop=2

    """"""""""""""""""""""""""""""""""""""""
    "
    "  COMMANDS
    "
    au BufWrite *.php,*.js,*.feature,*.json :call <SID>StripTrailingWhitespaces()
    au BufWrite * :call <SID>MkdirsIfNotExists(expand('<afile>:h'))
endif
