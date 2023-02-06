set nocompatible
filetype off
:set tabstop=2
:set shiftwidth=2
:set expandtab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'elixir-editors/vim-elixir'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-test/vim-test'
Plugin 'rust-lang/rust.vim'
Plugin 'preservim/tagbar'


Plugin 'posva/vim-vue'
Plugin 'pangloss/vim-javascript'

Plugin 'mpetricone/spacedork'

call vundle#end()

let g:airline_theme='spacedork'
let g:airline_powerline_fonts = 1

let g:tagbar_ctags_bin="/opt/ctags/bin/ctags"

" For Spaceduck colors 
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme spacedork
filetype plugin indent on
syntax on

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Custom Mappings
" Set leader(prefix)
:let mapleader = "-"
" Open .vimrc
:nnoremap <leader>ev :split $MYVIMRC<cr>
" Resource vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>
" current work to uppercase in normal mode
:nnoremap <c-u> wbveU<esc>
" current or previous work to uppercase from insert - return to insert
:inoremap <c-u> <esc>bveU<esc>wi
" Surround selection in quotes or singles
:vnoremap <leader>" xi"<esc>pa"<esc>
:vnoremap <leader>' xi'<esc>pa'<esc>
" jk esc from insert
:nnoremap jk <esc>
