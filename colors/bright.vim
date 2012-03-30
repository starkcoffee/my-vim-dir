" Vim color file
"
" Author: Toralf Wittner <toralf.wittner@gmail.com>
"         Anthony Carapetis <anthony.carapetis@gmail.com>
"
" Note: Based on Anthony Carapetis' github theme.
"

hi clear

set background=light
if version > 580
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif

let g:colors_name="bright"

hi Normal       guifg=#000000 guibg=#FAF9F8

" Cursor
hi Cursor		guibg=#444454 guifg=#FAF9F8
hi CursorLine	guibg=#D8D8DD
hi CursorColumn	guibg=#E8E8EE

" Diff
hi DiffAdd         guifg=#000000 guibg=#BBFFBB gui=none
hi DiffChange                    guibg=#ececec gui=none
hi DiffText        guifg=#000000 guibg=#DDDDFF gui=none
hi DiffDelete      guifg=#000000 guibg=#FFBBBB gui=none

" Folding / Line Numbering / Status Lines
hi Folded		guibg=#ECECEC guifg=#808080 gui=bold
hi vimFold		guibg=#ECECEC guifg=#808080 gui=bold
hi FoldColumn	guibg=#ECECEC guifg=#808080 gui=bold

hi LineNr		guifg=#959595 guibg=#ECECEC gui=none
hi NonText		guifg=#808080 guibg=#FAF9F8
hi Folded		guifg=#808080 guibg=#ECECEC gui=bold
hi FoldeColumn  guifg=#808080 guibg=#ECECEC gui=bold

hi VertSplit	guibg=#bbbbbb guifg=#bbbbbb gui=none
hi StatusLine   guibg=#bbbbbb guifg=#404040 gui=bold
hi StatusLineNC guibg=#d4d4d4 guifg=#404040 gui=italic

" Misc
hi ModeMsg		guifg=#990000
hi MoreMsg		guifg=#990000

hi Title		guifg=#ef5939
hi WarningMsg	guifg=#ef5939
hi SpecialKey   guifg=#177F80 gui=italic

hi MatchParen	guibg=#cdcdfd guifg=#000000
hi Underlined	guifg=#000000 gui=underline
hi Directory	guifg=#202099 gui=bold

" Search, Visual, etc
hi Visual		guifg=#FFFFFF guibg=#3465a4 gui=none
hi VisualNOS    guifg=#FFFFFF guibg=#204a87 gui=none
hi IncSearch	guibg=#FFEE00 guifg=#000000 gui=bold
hi Search		guibg=#FFEE00 guifg=#000000 gui=bold

" Syntax groups
hi Ignore		guifg=#808080
hi Identifier	guifg=#0086B3
hi PreProc		guifg=#502087 gui=bold
hi Comment		guifg=#808080 gui=italic
hi Constant		guifg=#177F80 gui=none
hi String		guifg=#006400
hi Character	guifg=#005464 gui=bold
hi Function		guifg=#990000 gui=bold
hi Statement	guifg=#000000 gui=bold
hi Type			guifg=#445588 gui=bold
hi Number		guifg=#E00000 gui=none
hi Special		guifg=#626E62 gui=bold
hi Error        guibg=#f8f8ff guifg=#ff1100 gui=undercurl
hi Todo         guibg=#FFEE00 guifg=#ff0000 gui=italic
hi Label        guifg=#000000 gui=bold
hi StorageClass guifg=#000000 gui=bold
hi Structure    guifg=#000000 gui=bold
hi TypeDef      guifg=#000000 gui=bold

" Completion menus
hi WildMenu     guifg=#7fbdff  guibg=#425c78 gui=none

hi Pmenu        guifg=#000000  guibg=#d5e0ff gui=NONE
hi PmenuSel     guifg=white    guibg=#3585ef gui=BOLD
hi PmenuSbar    guifg=#d0d5dd  guibg=#e0e5ee gui=BOLD
hi PmenuThumb   guifg=#e0e5ee  guibg=#c0c5dd gui=BOLD

" Spelling
hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#fcaf3e
hi spellLocal   guisp=#729fcf

" Aliases
hi link cppSTL          Function
hi link cppSTLType      Type
hi link htmlTag			htmlEndTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link schemeFunc      Statement

" Tabs (non-gui0
hi TabLine		guifg=#404040 guibg=#dddddd gui=none
hi TabLineFill	guifg=#404040 guibg=#dddddd gui=none
hi TabLineSel	guifg=#404040 gui=bold

"
" vim: sw=4 ts=4 foldmethod=marker
