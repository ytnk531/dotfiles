let $VIMPLUG = '~/.local/share/nvim/site/autoload/plug.vim'

if empty(glob($VIMPLUG))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/deoplete.nvim'
  Plug 'dense-analysis/ale'
  Plug 'szw/vim-tags'
  Plug 'cocopon/iceberg.vim'
  Plug 'caenrique/nvim-toggle-terminal'
call plug#end()

colorscheme iceberg

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set number
set expandtab
set autoindent
set undofile

autocmd TermOpen * startinsert

noremap <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
tnoremap <Esc> <C-\><C-n>
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

let g:NERDTreeNodeDelimiter = "\u00a0"
let g:deoplete#enable_at_startup = 1
call g:deoplete#custom#option('smart_case', v:true)
" if !exists('g:deomplete#force_omni_input_patterns')
"   let g:neocomplete#force_omni_input_patterns = {}
" endif
" let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['standardrb'],
\}
let g:ale_linters = {
\   'ruby': ['brakeman', 'debride', 'rails_best_practices',
\            'reek', 'ruby', 'solargraph', 'sorbet', 'standardrb']
\}
let g:ale_fix_on_save = 1

command! ReloadVimrc source $MYVIMRC
command! EditVimrc e $MYVIMRC
command! RunCode !run_code
command! ToggleNumber set number!
command! Term belowright sp +term
command! RunRuby ! ruby %
