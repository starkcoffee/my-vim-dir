if has("gui_running")
        if has("gui_win32")
                set guifont=Lucida_Sans_Typewriter:h10:cANSI
        else
                set guifont=Monospace\ 10
        endif

        set mouse=a                     "allow mouse in normal, visual and insert mode"
        set lines=50
        set columns=160
        set guioptions-=T
        set guioptions-=m
        set guioptions-=b
        set guioptions-=r
        set guioptions-=R
        set guioptions-=l
        set guioptions-=L
endif

call pathogen#infect()
call pathogen#helptags()

set linebreak                           "use linebreak in case of wrapping
set nowrap                              "don't wrap long lines
set number                              "show linenumbers
set nocompatible                        "don't mimick vi
set backspace=indent,eol,start
set history=500                         "command history buffer
set autoindent
set ruler                               "show line and column of cursor position
set showcmd                             "show command
set noshowmode                          "do not show vim mode
set incsearch                           "start search while typing
set hlsearch                            "mark search results
set fdm=indent                          "fold method
set fdc=2                               "fold column width showing fold marks
set nofoldenable                        "turn folding off (toggle with zi)
set nostartofline                       "keep cursor in the same column when changing lines
set expandtab                           "replace tabs with spaces
set visualbell                          "use visual bell instead of beep
set tags=tags;/
set hidden                              "enable buffers without disk access
set wildmenu                            "use bash like tab completion for files
set wildmode=list:longest
set smartcase                           "unless the first character is uppercase
set scrolloff=3                         "context around moving cursor
set laststatus=2                        "Always show the statusline
"set textwidth=80                       "maximum line length

syntax on
filetype plugin indent on

autocmd FileType text setlocal textwidth=80

autocmd BufWrite * :call Cleanup()
autocmd Syntax * syn match ErrorMsg /\s\+$/

let mapleader = ","
let maplocalleader = ","

" Switch buffers with Shift-Right and Shift-Left
nnoremap <S-Right> :bnext<CR>
nnoremap <S-Left>  :bprevious<CR>

" <leader>g = :tjump
" <leader>x exit ctags stack
map <leader>g g<C-]>
map <leader>x <C-o>

map <silent> <F5> :call UpdateIndexes()<CR>

" idutils
map <leader>w :call g:IDSearchCurrentWord()<CR>
map <leader>i :call g:IDSearchCustom()<CR>

" Completion
set completeopt=menu

" Recursive grep
nnoremap <silent> <F4> :Rgrep<CR>

" Window management
nnoremap <M-Right> <C-W>>
nnoremap <M-Left>  <C-W><
nnoremap <M-Down>  <C-W>+
nnoremap <M-Up>    <C-W>-

" Map cut, copy and paste to standard
" shortcuts when in visual mode
vmap <C-c> "+y
vmap <C-x> "+x
nmap <C-v> "+gP

" Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Hex conversion
nmap <silent> <leader>hex :%!xxd<CR>
nmap <silent> <leader>txt :%!xxd -r<CR>

" Highlight current line in input mode
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" Tab settings
set tabstop=4
set shiftwidth=4
set expandtab

" Haskell Settings
au BufEnter *.hs compiler ghc
let g:haddock_browser = "firefox"
let g:haddock_docdir="~/.cabal/share/doc/"
let g:haddock_indexfiledir="~/.vim/bundle/haskell"
let g:hs_highlight_boolean = 1
let g:hs_highlight_types = 1
let g:hs_highlight_debug = 1
let g:hs_allow_hash_operator = 1
let g:hs_highlight_delimiters = 1

" Ion Settings
au BufEnter,BufNewFile *.ion setfiletype ion
au BufEnter,BufNewFile *.ion setl lisp

" Scala settings
au FileType scala setlocal tabstop=4
au FileType scala setlocal shiftwidth=4

" Java settings
au FileType java setlocal tabstop=4
au FileType java setlocal shiftwidth=4

" Clojure Settings
let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#DynamicHighlighting = 1
let g:vimclojure#ParenRainbow = 0
let g:vimclojure#WantNailgun = 0
au BufEnter,BufNewFile *.clj setfiletype clojure
au BufEnter,BufNewFile *.clj setl lisp

" Protocol buffers
au BufEnter,BufNewFile *.proto setfiletype proto

" JSON
au BufRead,BufNewFile *.json set filetype=json foldmethod=syntax

" NERDTree
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>

" FuzzyFinder
nmap <C-b> :FufBuffer<CR>
nmap <C-o> :FufFile **/<CR>

" MultiSearch current word under cursor
map <leader>h :execute 'Search ' . expand("<cword>")<CR>
let g:MultipleSearchMaxColors = 64

map <leader>s :call ToggleScratch()<CR>
map <leader>c :call Cleanup()<CR>

" Shortcut to rapidly toggle 'set list'
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,trail:·,eol:↵

" Highlight lines longer than textwidth
nnoremap <silent> <Leader>L
  \ :if exists('w:long_line_match') <Bar>
  \   silent! call matchdelete(w:long_line_match) <Bar>
  \   unlet w:long_line_match <Bar>
  \ elseif &textwidth > 0 <Bar>
  \   let w:long_line_match = matchadd('Visual', '\%>'.&tw.'v.\+', -1) <Bar>
  \ else <Bar>
  \   let w:long_line_match = matchadd('Visual', '\%>80v.\+', -1) <Bar>
  \ endif<CR>

set t_Co=256 " force 256 colours (for CSApprox)
colorscheme mylo

" Tagbar Scala Support
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:abstract classes',
        \ 'c:classes',
        \ 'r:case classes',
        \ 'm:methods'
    \ ]
\ }

