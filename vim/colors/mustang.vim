" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:	September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mustang"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine     guibg=#262626 ctermbg=236 cterm=NONE
  hi CursorColumn   guibg=#2d2d2d ctermbg=236
  hi ColorColumn    guibg=#262626 ctermbg=black
  hi MatchParen     guifg=#000000 guibg=#ffffff ctermfg=0 ctermbg=255
  hi Pmenu 		    guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel 	    guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

" General colors
hi Cursor 		guifg=#000000 guibg=#b1d631 gui=none ctermbg=148
hi Normal 		guifg=#e2e2e5 guibg=#202020 gui=none ctermfg=253 ctermbg=NONE
hi NonText 		guifg=#808080 guibg=#303030 gui=none ctermfg=244 ctermbg=235
hi LineNr 		guifg=#444444 guibg=#262626 gui=none ctermfg=238 ctermbg=233
hi SignColumn   guifg=#444444 guibg=#262626 gui=none ctermfg=238 ctermbg=236
hi StatusLine 	guifg=#d3d3d5 guibg=#444444 gui=italic ctermfg=253 ctermbg=238 cterm=italic
hi StatusLineNC guifg=#939395 guibg=#444444 gui=none ctermfg=246 ctermbg=238
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none ctermfg=238 ctermbg=238
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none ctermbg=black ctermfg=248
hi Title		guifg=#f6f3e8 guibg=NONE	gui=bold ctermfg=254 cterm=bold
hi Visual		guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=254 ctermbg=4
hi SpecialKey	guifg=#808080 guibg=#343434 gui=none ctermfg=244 ctermbg=236
hi Search       guibg=#ff9800 ctermbg=208

" Syntax highlighting
hi Comment 		guifg=#808080 gui=italic ctermfg=244
hi Todo 		guifg=#8f8f8f gui=italic ctermfg=245
hi Boolean      guifg=#ff9800 gui=none ctermfg=208
hi String 		guifg=#b1d631 gui=italic ctermfg=148
hi Identifier 	guifg=#b1d631 gui=none ctermfg=148
hi Function 	guifg=#faf4c6 gui=bold ctermfg=230
hi Type 		guifg=#7e8aa2 gui=none ctermfg=103
hi Statement 	guifg=#7e8aa2 gui=none ctermfg=103
hi Keyword		guifg=#ff9800 gui=none ctermfg=208
hi Constant 	guifg=#ff9800 gui=none  ctermfg=208
hi Number		guifg=#ff9800 gui=none ctermfg=208
hi Special		guifg=#ff9800 gui=none ctermfg=208
hi PreProc		guifg=#faf4c6 gui=none ctermfg=230
hi Todo         guifg=#000000 guibg=#e6ea50 gui=italic

" Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=103

" Plugins
hi EasyMotionTarget guifg=#b1d631 guibg=#202020 ctermfg=green ctermbg=none
hi EasyMotionShade  guifg=#444444 guibg=#202020 ctermfg=darkgrey ctermbg=none
hi LustySelected	guifg=#ff9800 gui=none ctermfg=208
hi LustyDir         guifg=#b1d631 gui=none ctermfg=148
hi Question		    guifg=#ff9800 gui=none ctermfg=208

