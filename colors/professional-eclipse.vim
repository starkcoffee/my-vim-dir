" Vim color file
" Last Change: 18 Jun 2009
" Version:     1.5
" Changes:     Vim 7 changes 
" Comment:     Based on the professional color scheme by iyerns.
" Maintainer:  iyerns <iyerns AT gmail DOT com>
"              toralf.wittner@gmail.com

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="professional-eclipse"

hi Normal        guibg=#ffffdd guifg=black
hi Statusline    guibg=#006666 guifg=white gui=NONE 
hi VertSplit     guibg=#006666 guifg=white gui=NONE 
hi StatuslineNC  guibg=#666633 guifg=white gui=NONE 
hi Visual        guibg=#bbddff

hi Title    guifg=black  guibg=#ffffdd gui=BOLD
hi lCursor  guibg=Cyan   guifg=NONE
hi LineNr   guifg=white  guibg=#006666 

" Vim 7.x specific
if version >= 700
  hi CursorLine  guibg=white    gui=NONE
  hi MatchParen  guibg=#ffff00  gui=NONE
  hi Pmenu       guifg=#60656f  guibg=#f0f5ff  gui=NONE
  hi PmenuSel    guifg=white    guibg=#3585ef  gui=BOLD
  hi PmenuSbar   guifg=#d0d5dd  guibg=#e0e5ee  gui=BOLD
  hi PmenuThumb  guifg=#e0e5ee  guibg=#c0c5dd  gui=BOLD
endif

" syntax highlighting groups
hi Comment       guifg=#3f7f5f gui=NONE
hi Operator      guifg=#7f00cc gui=NONE
hi Identifier    guifg=#339900 gui=NONE
hi Statement     guifg=brown   gui=NONE
hi TypeDef       guifg=#c000c8 gui=NONE
hi Type          guifg=#7f0066 gui=BOLD
hi Boolean       guifg=#0000aa gui=NONE
hi String        guifg=#2a00ff gui=NONE
hi Number        guifg=#ff0000 gui=NONE
hi Constant      guifg=#ff0000 gui=NONE
hi Function      guifg=#004545 gui=NONE
hi PreProc       guifg=#646464 gui=NONE
hi Macro         guifg=#e05050 gui=NONE
hi Define        guifg=#7f0066 gui=BOLD
hi Keyword       guifg=#ff8088 gui=NONE
hi Search        guibg=#ffff00 gui=NONE
hi IncSearch     guifg=#ffff00 guibg=#990000 gui=NONE
hi Conditional   guifg=#0050ff gui=NONE
hi Special       guifg=#0000c0 gui=NONE

