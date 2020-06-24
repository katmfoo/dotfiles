" .vimrc, configs vim
" source: https://github.com/pricheal/dotfiles

" install vim plug if necessary
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chriskempson/base16-vim'
call plug#end()

" coc extensions
let g:coc_global_extensions = ['coc-tsserver', 'coc-html', 'coc-phpls',
\ 'coc-css', 'coc-angular', 'coc-json', 'coc-python', 'coc-sql',
\ 'coc-vimlsp']

" make backspace work nicely in insert mode
set backspace=indent,eol,start

" indentation stuff
set expandtab
set softtabstop=4
set shiftwidth=4

" stop vim from automatically adding a newline to end of file
set nofixendofline

" enable mouse
set mouse=a

" enable line numbers
set number

" enable ruler
set ruler

" enable syntax highlighting
syntax on

" set line number background to normal base16 background color
autocmd ColorScheme * execute 'highlight LineNr guibg=#' . g:base16_gui00

" color scheme
set termguicolors
colorscheme base16-eighties

" coc config

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
