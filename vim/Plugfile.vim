call plug#begin('~/.vim/plugged')

" =============================================================================
" @name (nord-vim)
" @desc (An arctic, north-bluish clean and elegant Vim color theme.)
" @link (https://github.com/arcticicestudio/nord-vim)
" =============================================================================
Plug 'arcticicestudio/nord-vim'

" =============================================================================
" @name (EditorConfig)
" @desc (EditorConfig plugin for Vim)
" @link (https://github.com/editorconfig/editorconfig-vim)
" =============================================================================
Plug 'editorconfig/editorconfig-vim'

" =============================================================================
" @name (emmet-vim)
" @desc (emmet-vim is a vim plug-in which provides support for expanding
"        abbreviations similar to emmet.)
" @link (https://github.com/mattn/emmet-vim)
" =============================================================================
Plug 'mattn/emmet-vim'

" =============================================================================
" @name (fzf)
" @desc (fzf is a general-purpose command-line fuzzy finder.)
" @link (https://github.com/junegunn/fzf)
" =============================================================================
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" =============================================================================
" @name (vim-airline)
" @desc (Lean & mean status/tabline for vim that's light as air.)
" @link (https://github.com/vim-airline/vim-airline)
" =============================================================================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" =============================================================================
" @name (vim-eunuch)
" @desc (Vim sugar for the UNIX shell commands that need it the most.)
" @link (https://github.com/tpope/vim-eunuch)
" =============================================================================
Plug 'tpope/vim-eunuch'

call plug#end()
