if has("gui_running")
  if has("gui_win32")
    set guifont=Lucida_Sans_Typewriter:h10:cANSI
  else
    set guifont=Monaco:h14
  endif

  set mouse=a                     "allow mouse in normal, visual and insert mode"
  set lines=40
  set columns=300
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
set textwidth=80

syntax on
filetype plugin indent on

autocmd FileType text setlocal textwidth=80

autocmd BufWrite * :call Cleanup()
autocmd Syntax * syn match ErrorMsg /\s\+$/

let mapleader = " "
let maplocalleader = " "

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
"vmap <C-c> "+y
"vmap <C-x> "+x
"nmap <C-v> "+gP

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
set tabstop=2
set shiftwidth=2
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
au FileType scala setlocal tabstop=2
au FileType scala setlocal shiftwidth=2

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
map <leader>f :execute 'NERDTreeFind'<CR>

" FuzzyFinder
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>o :FufFile **/<CR>
nmap <leader>r :FufRenewCache<CR>

" MultiSearch current word under cursor
map <leader>h :execute 'Search ' . expand("<cword>")<CR>
let g:MultipleSearchMaxColors = 64

map <leader>s :call ToggleScratch()<CR>
map <leader>c :call Cleanup()<CR>

" Shortcut to rapidly toggle 'set list'
" nmap <leader>l :set list!<CR>
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

" If you are using a console version of Vim, or dealing
" with a file that changes externally (e.g. a web server log)
" then Vim does not always check to see if the file has been changed.
" The GUI version of Vim will check more often (for example on Focus change),
" and prompt you if you want to reload the file.
"
" There can be cases where you can be working away, and Vim does not
" realize the file has changed. This command will force Vim to check
" more often.
"
" Calling this command sets up autocommands that check to see if the
" current buffer has been modified outside of vim (using checktime)
" and, if it has, reload it for you.
"
" This check is done whenever any of the following events are triggered:
" * BufEnter
" * CursorMoved
" * CursorMovedI
" * CursorHold
" * CursorHoldI
"
" In other words, this check occurs whenever you enter a buffer, move the cursor,
" or just wait without doing anything for 'updatetime' milliseconds.
"
" Normally it will ask you if you want to load the file, even if you haven't made
" any changes in vim. This can get annoying, however, if you frequently need to reload
" the file, so if you would rather have it to reload the buffer *without*
" prompting you, add a bang (!) after the command (WatchForChanges!).
" This will set the autoread option for that buffer in addition to setting up the
" autocommands.
"
" If you want to turn *off* watching for the buffer, just call the command again while
" in the same buffer. Each time you call the command it will toggle between on and off.
"
" WatchForChanges sets autocommands that are triggered while in *any* buffer.
" If you want vim to only check for changes to that buffer while editing the buffer
" that is being watched, use WatchForChangesWhileInThisBuffer instead.
"
command! -bang WatchForChanges                  :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0})
command! -bang WatchForChangesWhileInThisBuffer :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0, 'while_in_this_buffer_only': 1})
command! -bang WatchForChangesAllFile           :call WatchForChanges('*', {'toggle': 1, 'autoread': <bang>0})

" WatchForChanges function
"
" This is used by the WatchForChanges* commands, but it can also be
" useful to call this from scripts. For example, if your script executes a
" long-running process, you can have your script run that long-running process
" in the background so that you can continue editing other files, redirects its
" output to a file, and open the file in another buffer that keeps reloading itself
" as more output from the long-running command becomes available.
"
" Arguments:
" * bufname: The name of the buffer/file to watch for changes.
"     Use '*' to watch all files.
" * options (optional): A Dict object with any of the following keys:
"   * autoread: If set to 1, causes autoread option to be turned on for the buffer in
"     addition to setting up the autocommands.
"   * toggle: If set to 1, causes this behavior to toggle between on and off.
"     Mostly useful for mappings and commands. In scripts, you probably want to
"     explicitly enable or disable it.
"   * disable: If set to 1, turns off this behavior (removes the autocommand group).
"   * while_in_this_buffer_only: If set to 0 (default), the events will be triggered no matter which
"     buffer you are editing. (Only the specified buffer will be checked for changes,
"     though, still.) If set to 1, the events will only be triggered while
"     editing the specified buffer.
"   * more_events: If set to 1 (the default), creates autocommands for the events
"     listed above. Set to 0 to not create autocommands for CursorMoved, CursorMovedI,
"     (Presumably, having too much going on for those events could slow things down,
"     since they are triggered so frequently...)
function! WatchForChanges(bufname, ...)
  " Figure out which options are in effect
  if a:bufname == '*'
    let id = 'WatchForChanges'.'AnyBuffer'
    " If you try to do checktime *, you'll get E93: More than one match for * is given
    let bufspec = ''
  else
    if bufnr(a:bufname) == -1
      echoerr "Buffer " . a:bufname . " doesn't exist"
      return
    end
    let id = 'WatchForChanges'.bufnr(a:bufname)
    let bufspec = a:bufname
  end

  if len(a:000) == 0
    let options = {}
  else
    if type(a:1) == type({})
      let options = a:1
    else
      echoerr "Argument must be a Dict"
    end
  end
  let autoread    = has_key(options, 'autoread')    ? options['autoread']    : 0
  let toggle      = has_key(options, 'toggle')      ? options['toggle']      : 0
  let disable     = has_key(options, 'disable')     ? options['disable']     : 0
  let more_events = has_key(options, 'more_events') ? options['more_events'] : 1
  let while_in_this_buffer_only = has_key(options, 'while_in_this_buffer_only') ? options['while_in_this_buffer_only'] : 0

  if while_in_this_buffer_only
    let event_bufspec = a:bufname
  else
    let event_bufspec = '*'
  end

  let reg_saved = @"
  "let autoread_saved = &autoread
  let msg = "\n"

  " Check to see if the autocommand already exists
  redir @"
    silent! exec 'au '.id
  redir END
  let l:defined = (@" !~ 'E216: No such group or event:')

  " If not yet defined...
  if !l:defined
    if l:autoread
      let msg = msg . 'Autoread enabled - '
      if a:bufname == '*'
        set autoread
      else
        setlocal autoread
      end
    end
    silent! exec 'augroup '.id
      if a:bufname != '*'
        "exec "au BufDelete    ".a:bufname . " :silent! au! ".id . " | silent! augroup! ".id
        "exec "au BufDelete    ".a:bufname . " :echomsg 'Removing autocommands for ".id."' | au! ".id . " | augroup! ".id
        exec "au BufDelete    ".a:bufname . " execute 'au! ".id."' | execute 'augroup! ".id."'"
      end
        exec "au BufEnter     ".event_bufspec . " :checktime ".bufspec
        exec "au CursorHold   ".event_bufspec . " :checktime ".bufspec
        exec "au CursorHoldI  ".event_bufspec . " :checktime ".bufspec

      " The following events might slow things down so we provide a way to disable them...
      " vim docs warn:
      "   Careful: Don't do anything that the user does
      "   not expect or that is slow.
      if more_events
        exec "au CursorMoved  ".event_bufspec . " :checktime ".bufspec
        exec "au CursorMovedI ".event_bufspec . " :checktime ".bufspec
      end
    augroup END
    let msg = msg . 'Now watching ' . bufspec . ' for external updates...'
  end

  " If they want to disable it, or it is defined and they want to toggle it,
  if l:disable || (l:toggle && l:defined)
    if l:autoread
      let msg = msg . 'Autoread disabled - '
      if a:bufname == '*'
        set noautoread
      else
        setlocal noautoread
      end
    end
    " Using an autogroup allows us to remove it easily with the following
    " command. If we do not use an autogroup, we cannot remove this
    " single :checktime command
    " augroup! checkforupdates
    silent! exec 'au! '.id
    silent! exec 'augroup! '.id
    let msg = msg . 'No longer watching ' . bufspec . ' for external updates.'
  elseif l:defined
    let msg = msg . 'Already watching ' . bufspec . ' for external updates'
  end

" echo msg
  let @"=reg_saved
endfunction

" WatchForChanges
set tags=.git/gem-tags,tags,tags-libs
set autoread
au FocusLost * silent! wa
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
" set colorcolumn:80
" search n replace all words under the cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
nmap <Leader>= gg=G<C-o><C-o>
set ic
au BufEnter *_spec.rb map <F2> :!./script/spin %
map <C-S-P> :CtrlPBuffer<CR>

" copy current filename to clipboard
nmap cp :let @* = expand("%")<CR>

function! RunSpec(lineNumber)
  let rspec_cmd = '!bundle exec rspec'
  if filereadable("./script/spin")
    let rspec_cmd = '!./script/spin'
  endif

  wall
  let lineNumberSpecified = a:lineNumber
  let fname = expand("%")
  if fname =~ "spec"
    let g:spec = fname
    let g:specLineNum = a:lineNumber
  endif
  if exists("g:spec")
    let cmd =  rspec_cmd . ' ' . g:spec
    if g:specLineNum && lineNumberSpecified
      let cmd = cmd . ":" . g:specLineNum
    endif
    execute cmd
  endif
endfunction
nmap <silent> ;r :call RunSpec("")<CR>
nmap <silent> ;l :call RunSpec(line("."))<CR>

let g:vimroom_width=100
let g:vimroom_sidebar_height=0

" :botright cwindow to open the quickfix right at the bottom

au FileType xhtml,xml so ~/.vim/plugin/html_autoclosetag.vim

" enable vim tern keyboard shortcuts
" http://usevim.com/2013/05/24/tern/
let g:tern_map_keys=1
