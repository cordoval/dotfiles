"se lines=90 columns=278
se go-=r                                                        " no right scroll
se go-=L                                                        " no left scroll
se go-=T                                                        " no toolbar
se showtabline=1                                                " show tabs only if needed
se fuopt=maxvert,maxhorz
se fu

"powerline
let g:Powerline_symbols = 'fancy'

function! DefFont()
    se guifont=ProFontX:h12
endfunction

function! BigFont()
    se guifont=Menlo:h18
endfunction

if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
endif

call DefFont()
