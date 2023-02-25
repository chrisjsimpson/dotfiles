set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set is " To enable highlight whilst searching

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
Plug 'psf/black', { 'branch': 'stable' }
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"

augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

autocmd BufWritePost *.py call flake8#Flake8()
