function! Cond(cond, ...)
  let opts=get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

" Autoinstall vim-plug plugin
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin('~/.vim/plugged')

" colorschemes
Plug 'lifepillar/vim-solarized8'

" (un)comment
Plug 'tpope/vim-commentary'

" handle surroundings
Plug 'tpope/vim-surround'

" autodetect tabwidth
Plug 'tpope/vim-sleuth'


" awesome git plugin
Plug 'tpope/vim-fugitive'


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


" Limelight flashlight focus
Plug 'junegunn/limelight.vim'

" highlight unwanted whitespace
Plug 'bronson/vim-trailing-whitespace'

" fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'


" syntax support for many languages
Plug 'sheerun/vim-polyglot'
" disable latex in polyglot to use vimtex
let g:polyglot_disabled=['latex']


" Python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }			" python autocomplete

" utilsnips https://github.com/SirVer/ultisnips
Plug 'SirVer/ultisnips'


call plug#end()
