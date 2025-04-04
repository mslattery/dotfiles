function! Cond(cond, ...)
  let opts=get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin('~/.vim/plugged')

" colorschemes
Plug 'lifepillar/vim-solarized8'

" editorconfig support - https://editorconfig.org/
Plug 'editorconfig/editorconfig-vim'

" (un)comment - https://github.com/tpope/vim-commentary
Plug 'tpope/vim-commentary'

" handle surroundings https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" make plugin commands repeatable - https://github.com/tpope/vim-repeat
Plug 'tpope/vim-repeat'

" TODO - https://github.com/tpope/vim-speeddating

" autodetect tabwidth - https://github.com/tpope/vim-sleuth
Plug 'tpope/vim-sleuth'

" dispatch into tmux panes
" Plug 'tpope/vim-dispatch', Cond(!empty($TMUX))

" awesome git plugin
Plug 'tpope/vim-fugitive'

" create gist from within vim - https://github.com/mattn/vim-gist
Plug 'mattn/gist-vim' | Plug 'mattn/webapi-vim'

" autoclose quotes and brackets
Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr=1

" async linting and making - https://github.com/neomake/neomake
" Plug 'neomake/neomake'

" distraction free writing
Plug 'junegunn/goyo.vim'
" close Goyo *and* vim with :q
function! s:goyo_enter()
    let b:quitting=0
    let b:quitting_bang=0
    autocmd QuitPre <buffer> let b:quitting=1
    cabbrev <buffer> q! let b:quitting_bang=1 <bar> q!
endfunction

function! s:goyo_leave()
    " Quit Vim if this is the only remaining buffer
    if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
        if b:quitting_bang
            qa!
        else
            qa
        endif
    endif
endfunction
autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()

" Limelight flashlight focus https://github.com/junegunn/limelight.vim
Plug 'junegunn/limelight.vim'

" highlight unwanted whitespace
Plug 'bronson/vim-trailing-whitespace'

" paste with indent adjusted to context
Plug 'sickill/vim-pasta'

" syntax support for many languages
Plug 'sheerun/vim-polyglot'
" disable latex in polyglot to use vimtex
let g:polyglot_disabled=['latex']

" latex support
Plug 'lervag/vimtex'

" Vimwiki - TODO Check it out
"Plug 'vimwiki/vimwiki'
"let g:vimwiki_list=[{'path': '~/Dokumente/notes',
"            \ 'syntax': 'markdown',
"            \ 'ext': '.md'}]

Plug 'antoyo/vim-licenses'
let g:licenses_copyright_holders_name='Slats <michael.john.slattery@gmail.com>'
let g:licenses_authors_name='Slats <michael.john.slattery@gmail.com>'

"Plug 'ervandew/supertab'									" simple autocomplete

" UltiSnips - https://github.com/SirVer/ultisnips
"Plug 'SirVer/ultisnips'

" Python
"Plug 'davidhalter/jedi-vim', { 'for': 'python' }			" python autocomplete

call plug#end()
