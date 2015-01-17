if 1
  set nocompatible
  filetype plugin indent off

  if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand('~/.vim/bundle/'))

  " Let NeoBundle manage NeoBundle
  NeoBundleFetch 'Shougo/neobundle.vim'

  " add plugins
  NeoBundle 'itchyny/lightline.vim'
  NeoBundle 'tomasr/molokai'

  filetype plugin indent on

  NeoBundleCheck

  call neobundle#end()

  set t_Co=256
  syntax enable
  colorscheme molokai
  let g:molokai_original = 1
  let g:rehash256 = 1

  set number
  set ignorecase
  set nobackup
  set smartcase
  set wrapscan
  set incsearch
  set hlsearch
  set noerrorbells
  set novisualbell
  set visualbell t_vb=
  set showmatch matchtime=1
  set laststatus=2

  augroup auto_comment_off
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=r
    autocmd BufEnter * setlocal formatoptions-=o
  augroup END

fi