call plug#begin()
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/deoplete.nvim'
  Plug 'scrooloose/syntastic'
  Plug 'szw/vim-tags'
call plug#end()

set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set number
set expandtab
set autoindent
set undofile

noremap <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

let g:NERDTreeNodeDelimiter = "\u00a0"
let g:deoplete#enable_at_startup = 0
let g:deoplete#enable_smart_case = 1

if !exists('g:deomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'

" syntastic_mode_mapをactiveにするとバッファ保存時にsyntasticが走る
" active_filetypesに、保存時にsyntasticを走らせるファイルタイプを指定する
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = 'bin/bundle exec rubocop'

" Save fold settings.
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
" Don't save options.
set viewoptions-=options

