" Vim color file
" Last Change: 30 Jun 2009
" Version:     1.0
" Changes:     Initial version
" Maintainer:  toralf.wittner@gmail.com

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="warmblue"

hi Normal        guibg=#faf9f8 guifg=#000000
hi Statusline    guibg=#CCCCCC guifg=#333333 gui=NONE 
hi VertSplit     guibg=#AAAAAA guifg=#555555 gui=NONE 
hi StatuslineNC  guibg=#AAAAAA guifg=#555555 gui=NONE 
hi Visual        guibg=#BBDDFF

hi Title    guifg=black   guibg=#faf9f8 gui=BOLD
hi lCursor  guibg=Cyan    guifg=NONE
hi LineNr   guifg=#999999 guibg=#ECECEC 

" Vim 7.x specific
if version >= 700
  hi CursorLine  guibg=white    gui=NONE
  hi MatchParen  guibg=#ffff00  gui=NONE
  hi Pmenu       guifg=#000000  guibg=#d5e0ff  gui=NONE
  hi PmenuSel    guifg=white    guibg=#3585ef  gui=BOLD
  hi PmenuSbar   guifg=#d0d5dd  guibg=#e0e5ee  gui=BOLD
  hi PmenuThumb  guifg=#e0e5ee  guibg=#c0c5dd  gui=BOLD
endif

" syntax highlighting groups
hi Comment       guifg=#777777 gui=NONE
hi Operator      guifg=#7f00cc gui=NONE
hi Identifier    guifg=#339900 gui=NONE
hi Statement     guifg=brown   gui=NONE
hi TypeDef       guifg=#c000c8 gui=NONE
hi Type          guifg=#0050ff gui=BOLD
hi Boolean       guifg=#0000aa gui=NONE
hi String        guifg=#2a00ff gui=NONE
hi Number        guifg=#ff0000 gui=NONE
hi Constant      guifg=#ff0000 gui=NONE
hi Function      guifg=#004545 gui=NONE
hi PreProc       guifg=#246500 gui=NONE
hi Macro         guifg=#e05050 gui=NONE
hi Define        guifg=#0050ff gui=BOLD
hi Keyword       guifg=#ff8088 gui=NONE
hi Search        guibg=#ffff00 gui=NONE
hi IncSearch     guifg=#ffff00 guibg=#990000 gui=NONE
hi Conditional   guifg=#7f0066 gui=NONE
hi Special       guifg=#0000c0 gui=NONE

