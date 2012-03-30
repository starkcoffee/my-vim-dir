set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "default"

hi Normal		guifg=#dddddd 	guibg=#383840				    ctermfg=grey 		ctermbg=darkgrey
hi ErrorMsg		guifg=#ffffff 	guibg=#287eff				    ctermfg=white 		ctermbg=lightblue
hi Visual		guifg=#8080ff 	guibg=fg gui=reverse		    ctermfg=lightblue 	ctermbg=fg 		    cterm=reverse
hi VisualNOS	guifg=#8080ff 	guibg=fg gui=reverse,underline	ctermfg=lightblue 	ctermbg=fg 		    cterm=reverse,underline
hi Todo			guifg=#d14a14 	guibg=#1248d1				    ctermfg=red		    ctermbg=darkgrey
hi Search		guifg=#90fff0 	guibg=#2050d0				    ctermfg=white 		ctermbg=darkgrey 	cterm=underline
hi IncSearch	guifg=#b0ffff 	guibg=#2050d0				    ctermfg=darkblue 	ctermbg=gray

hi SpecialKey	guifg=cyan						                ctermfg=darkcyan
hi Directory	guifg=cyan						                ctermfg=cyan
hi Title		guifg=magenta 	gui=bold 		                ctermfg=magenta	                        cterm=bold
hi WarningMsg	guifg=red						                ctermfg=red
hi WildMenu		guifg=yellow 	guibg=black 	                ctermfg=yellow      ctermbg=black 		cterm=none
hi ModeMsg		guifg=#22cce2					                ctermfg=lightblue
hi MoreMsg									                    ctermfg=darkgreen
hi Question		guifg=green 	gui=none 		                ctermfg=green 	                        cterm=none
hi NonText		guifg=#9999dd					                ctermfg=darkblue

hi StatusLine	guifg=blue 	    guibg=darkgray gui=none		    ctermfg=blue 		ctermbg=gray
hi StatusLineNC	guifg=black     guibg=darkgray gui=none		    ctermfg=black 		ctermbg=gray
hi VertSplit	guifg=black     guibg=darkgray gui=none		    ctermfg=black 		ctermbg=gray

hi Folded		guifg=#808080 	guibg=#383840 gui=none		    ctermfg=darkgrey 	ctermbg=darkgrey
hi FoldColumn	guifg=#808080 	guibg=#383840 gui=none		    ctermfg=darkgrey 	ctermbg=darkgrey
hi LineNr		guifg=#ccccff						            ctermfg=lightblue

hi diffAdded	guifg=#88ff88 						            ctermfg=green
hi diffChanged	guifg=yellow						            ctermfg=yellow
hi diffRemoved	guifg=#ff7474  	                                ctermfg=red

hi Cursor		guifg=black 	guibg=red 				        ctermfg=black 		ctermbg=red
hi lCursor		guifg=#ffffff 	guibg=#000000 				    ctermfg=black 		ctermbg=red

hi CursorLine                   guibg=#454550                                                           cterm=underline term=underline

hi Pmenu        guifg=#eeeeee   guibg=#686881                                       ctermbg=13
hi PmenuSel     guifg=#686881   guibg=#eeeeee                                       ctermbg=8
hi PmenuSbar                    guibg=#484861                                       ctermbg=7


hi Comment		guifg=#ffcc66 gui=italic	                    ctermfg=yellow
hi Constant		guifg=#99ff99 				                    ctermfg=green
hi Number		guifg=#ff7474 gui=bold		                    ctermfg=red 	
hi Special		guifg=#c5c8f3  		                            ctermfg=white 	
hi Identifier	guifg=white 				                    ctermfg=white 
hi Statement	guifg=cyan    gui=bold 		                    ctermfg=cyan 	
hi Function		guifg=white   gui=none                          ctermfg=white 	
hi PreProc		guifg=#feb9fe        		                    ctermfg=magenta 
hi type			guifg=#8eb6ff gui=bold 		                    ctermfg=blue 	
hi Underlined											                                                cterm=underline
hi Ignore		guifg=bg 						                ctermfg=bg


" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String		    Constant
hi link Character	    Constant
hi link Number		    Constant
hi link Boolean		    Constant
hi link Float		    Number
hi link Conditional	    Repeat
hi link Label		    Statement
hi link Keyword		    Statement
hi link Exception	    Statement
hi link Include		    PreProc
hi link Define		    PreProc
hi link Macro		    PreProc
hi link PreCondit	    PreProc
hi link StorageClass	Type
hi link Structure	    Type
hi link Typedef		    Type
hi link Tag		        Special
hi link SpecialChar	    Special
hi link Delimiter	    Special
hi link SpecialComment 	Special
hi link Debug		    Special

