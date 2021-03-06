""""""""""""""""""""""""""""""""""""""""
"
"  BUNDLES (PATHOGEN)
"
"    `:Helptags` to regenerate docs
"
call pathogen#infect()

"
""""""""""""""""""""""""""""""""""""""""
"
"  HIGHLIGHTING
"
se cursorline
se listchars=tab:▸\ ,trail:□,eol:¬
"
"""""""""""""""""""""""""""""""""""""""
"
"  THEME OPTIONS
"
let g:solarized_termcolors=256
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
syntax on
set background=dark
colorscheme solarized
"
""""""""""""""""""""""""""""""""""""""""
"
"  ENVIRONMENT
"
se encoding=utf8
se backspace=2
se fileformat=unix
se fileformats=unix
se nocompatible
se hidden
se nobackup
se noswapfile
se dir=/tmp,/var/tmp
se autoread
se number
se relativenumber
se visualbell
se ch=1
se laststatus=2
se noshowmode
se mousehide
se ttyfast
" se autoindent
" se copyindent
" se smartindent
se smarttab
se nolist
se backspace=indent,eol,start
se wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*cache,*/logs,*/web/bundles,.DS_Store
se path=**

"
""""""""""""""""""""""""""""""""""""""""
"
"  FOLDING
"
se foldmethod=syntax
se foldlevel=1

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
se tags+=vendor.tags

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
"  AUTOCOMPLETION
"
"se wildcharm=<tab>
"se wildmenu
"se wildmode=full
"inoremap <c-l> <c-x><c-l>

"
""""""""""""""""""""""""""""""""""""""""
"
"  WRAPPING
"
se wrap
se linebreak
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
"set clipboard=unnamed
"
" Use "+p (in N) or <c-r>+ (in I)

"
""""""""""""""""""""""""""""""""""""""""
"
"  GENERAL OVERRIDINGS
"
let mapleader = ","
let maplocalleader = "\\"
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap Y y$

"
""""""""""""""""""""""""""""""""""""""""
"
"  DASH
"
nnoremap <leader>d :Dash<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  HIGHLIGHTING MAPPINGS
"
nnoremap <leader>ll :set list!<cr>
nnoremap <silent> <leader><space> :nohlsearch<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  LINES MOVEMENT
"
nnoremap <s-up>   [e
nnoremap <s-down> ]e
vnoremap <s-up>   [egv
vnoremap <s-down> ]egv

"
""""""""""""""""""""""""""""""""""""""""
"
"  FS NAVIGATION
"
nnoremap <leader>ep :e <c-r>=expand("%:p:h")."/"<cr>
nnoremap <leader>es :vsp <c-r>=expand("%:p:h")."/"<cr>
nnoremap <leader>se :Vex<cr><c-w>=
nnoremap <leader>mk :!mkdir <c-r>=expand("%:p:h")."/"<cr>
nnoremap <leader>rm :!rm -rf <c-r>=expand("%:p:h")."/"<cr>
cnoremap w!!        w !sudo tee % >/dev/null

"
""""""""""""""""""""""""""""""""""""""""
"
"  TABS MANAGEMENT
"
nnoremap <leader>df :tab split<cr>
nnoremap <leader>dd :tabclose<cr>
nnoremap <leader>do :tabonly<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  WINDOWS MANAGEMENT
"
nnoremap <leader>we <c-w>v<c-w>l
nnoremap <leader>ws <c-w>s<c-w>j
nnoremap <leader>wq <c-w>v<c-w>h
nnoremap <leader>w2 <c-w>s<c-w>k
nnoremap <leader>wo :on<cr>
nnoremap <leader>w= <c-w>=
nnoremap <leader>w0 <c-w>\|
nnoremap <leader>w- <c-w>_
nnoremap <leader>wk <c-w>K
nnoremap <leader>wh <c-w>H
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-x> <c-w>x

"
""""""""""""""""""""""""""""""""""""""""
"
"  BUFFERS MANAGEMENT
"
nnoremap <leader>bo :BufOnly<cr>
nnoremap <leader>bc :bd<cr>

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
vnoremap <s-h>   <nop>
vnoremap <s-j>   <nop>
vnoremap <s-k>   <nop>
vnoremap <s-l>   <nop>

"
""""""""""""""""""""""""""""""""""""""""
"
"  SEARCH TUNING
"
" nnoremap / /\v
" vnoremap / /\v
" nnoremap * *N
nnoremap <CR> :noh<CR><CR>

"
"+>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"|
"|  > PLUGINS CONFIGURATION
"|
"|
""""""""""""""""""""""""""""""""""""""""
"
"  AIRLINE
"
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

"
""""""""""""""""""""""""""""""""""""""""
"
"  FUGITIVE
"
nnoremap <leader>gs  :Gstatus<cr>
nnoremap <leader>ga  :Gwrite<cr>
nnoremap <leader>gh  :Gbrowse!<cr>
nnoremap <leader>gc  :Gcommit --verbose<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gmv :Gmove<cr>
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"
""""""""""""""""""""""""""""""""""""""""
"
"  ACK
"
nnoremap <expr><leader>a ":Ack! "

"
""""""""""""""""""""""""""""""""""""""""
"
"  UltiSnips
"
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"
""""""""""""""""""""""""""""""""""""""""
"
"  CTRLP
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_height = 15
let g:ctrlp_open_multi = '1v'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|\.hg|\.svn|vendor|node_modules)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

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
nnoremap <leader><tab><tab> :Tab /
nnoremap <leader><tab>= :Tab /=<cr>
nnoremap <leader><tab>: :Tab /:\zs<cr>
nnoremap <leader><tab>> :Tab /=><cr>
vnoremap <leader><tab> :Tab /
vnoremap <leader><tab>= :Tab /=<cr>
vnoremap <leader><tab>: :Tab /:\zs<cr>
vnoremap <leader><tab>> :Tab /=><cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  EASYMOTION
"
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"
"""""""""""""""""""""""""""""""""""""
"
"  NERDTREE
"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-\> :NERDTreeToggle<CR>
"
""""""""""""""""""""""""""""""""""""""""
"
"  SYNTASTIC
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_php_checkers = ['php', 'phpmd']

"
""""""""""""""""""""""""""""""""""""""""
"
"  VIMUX
"
nnoremap <leader>vr :VimuxPromptCommand<cr>
nnoremap <leader>vl :VimuxRunLastCommand<cr>
nnoremap <leader>vc :VimuxCloseRunner<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  PHP
"
let g:php_folding=1
let php_noShortTags = 1

nnoremap <leader>u :call PhpInsertUse()<cr>
nnoremap <leader>e :call PhpExpandClass()<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  BEHAT
"
" mandatory if you want the '*.feature' files to be set with behat filetype
let g:feature_filetype='behat'

" The plugin tries successively several behat executables to find the good one
" (php behat.phar, bin/behat, etc). You can define a custom list that will
" be prepended to the default path with g:behat_executables.
" let behat_executables = ['behat.sh']

" if you use neocomplcache add this to enable behat completion
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.behat = '\(When\|Then\|Given\|And\)\s.*$'

" disable omni completion steps cache
" normally you don't want to do this because it's slow (and will prevent neocomplcache from working)
" let g:behat_disable_omnicompl_cache = 1

"
"+>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"|
"|  > CUSTOM FUNCTIONS
"|
"|
""""""""""""""""""""""""""""""""""""""""
"
"  RENAME CURRENT BUFFER FILE
"
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
nnoremap <leader>mv :call RenameFile()<cr>

"
""""""""""""""""""""""""""""""""""""""""
"
"  CREATE DIRECTORY FOR CURRENT BUFFER
"
function! <sid>MkdirsIfNotExists(directory)
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

augroup vimrc_autocmd
    if ! has('gui_running')
        set ttimeoutlen=10
        au InsertEnter * set timeoutlen=500
        au InsertLeave * set timeoutlen=1000
    endif

    if has('autocmd')
        autocmd!

        " General
        au FocusLost silent! :wa
        au FileType helpfile setlocal nonumber

        " File types
        au BufRead,BufNewFile *.php         setlocal filetype=php iskeyword-=$
        au BufRead,BufNewFile *.php         inoremap <buffer> § $
        au BufRead,BufNewFile *.php         inoremap <buffer> ± ->
        au BufRead,BufNewFile *.php         inoremap <buffer> §§ $this->
        au BufRead,BufNewFile *.twig        setlocal filetype=jinja
        au BufRead,BufNewFile *.html.twig   setlocal filetype=htmljinja
        au BufRead,BufNewFile *.js.twig     setlocal filetype=javascript
        au BufRead,BufNewFile *.ejs         setlocal filetype=html
        au BufRead,BufNewFile *.json        setlocal filetype=javascript
        au BufRead,BufNewFile *.pp          setlocal filetype=ruby

        " Autocalls
        au BufWrite * :call <sid>MkdirsIfNotExists(expand('<afile>:h'))
    endif
augroup END

augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
