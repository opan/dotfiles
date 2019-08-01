set number
set fdm=indent
set hlsearch
set clipboard=unnamed
set laststatus=2
set termguicolors
set mouse=a
language en_US

" hi CursorLine guifg=red guibg=blue
" autocmd InsertEnter * hi CursorLine guibg=none guifg=none
" autocmd InsertLeave * hi CursorLine guibg=none guifg=none

" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=8
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set smarttab
set nocompatible  "be iMproved, required
" filetype off      " required
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" set rtp+=~/.config/nvim/bundle/Vundle.vim
" call vundle#begin("~/.config/nvim/bundle")
call plug#begin('~/.local/share/nvim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'nightsense/office'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/NERDCommenter'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'elzr/vim-json'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ngmy/vim-rubocop'
Plug 'sjl/vitality.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-pug'
Plug 'fatih/vim-go'
Plug 'slim-template/vim-slim'

" call vundle#end() 			" required
call plug#end()
filetype plugin indent on 		" required
filetype on

autocmd Filetype go setlocal tabstop=8 shiftwidth=8

" vim-airline config {
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'onedark'
" }

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:onedark_termcolors=16
syntax enable
syntax on
set cursorline
set cursorcolumn
colorscheme onedark
" colorscheme office-dark

" UltiSnips config {
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0

" source: https://github.com/Valloric/YouCompleteMe/issues/420
if !exists('*ExpandSnippetOrCarriageReturn')
  function ExpandSnippetOrCarriageReturn()
    let snippet = UltiSnips#ExpandSnippetOrJump()
    if g:ulti_expand_or_jump_res > 0
      return snippet
    else
      return "\<CR>"
    endif
  endfunction
endif
inoremap <expr> <CR> pumvisible() ? "<C-R>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
" }


" ack.vim config {
" use ag instead
let g:ackprg = 'ag --vimgrep'
" }


" ctrlp config {
" let g:ctrlp_use_caching = 0
" }

" vim-go config {
set completeopt=preview
" }

" Surround config {
let g:surround_{char2nr('=')} = "<%= \r %>"
let g:surround_{char2nr('-')} = "<% \r %>"
let g:surround_{char2nr('#')} = "<%# \r %>"
" }


" vim-gitgutter config {
set updatetime=250
" }


" fzf config {
nmap ; :Buffers<CR>
nmap <c-p> :Files<CR>
" }


" NERDCommenter config {
let g:NERDTreeShowHidden = 1
let g:NERDSpaceDelims = 1
noremap <leader>d :NERDTreeToggle<CR>
" }

" Vim rubocop config {
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
" }

" rainbow-parentheses.vim config {
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" }

let g:ycm_min_num_of_chars_for_completion = 1

" mappings {

" mapping escape to double comma
" imap ,, <Esc>
" vmap ,, <Esc>
" nmap ,, <Esc>

nnoremap <s-left> :tabprevious <CR>
nnoremap <s-right> :tabnext<CR>
nnoremap <leader>l :buffers<CR>
nnoremap <esc> :noh<return><CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>c :tabclose<CR>
nnoremap <leader>w :Window<CR>

nnoremap <c-j> <c-w><c-j>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
" }
