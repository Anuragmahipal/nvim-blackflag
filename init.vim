" CTF Starter Config by Anurag 💻🏴‍☠️

set number
set relativenumber
set clipboard=unnamedplus
syntax on

" Plugin manager (vim-plug)
call plug#begin('~/.local/share/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'RaafatTurki/hex.nvim'

call plug#end()

" Terminal keybind
nnoremap <leader>tt :ToggleTerm<CR>

" Flag hunt
command! Flaghunt :Telescope live_grep search=flag

" Base64 decode
vnoremap <leader>bd :'<,'>!base64 -d<CR>
" ROT13 decode
vnoremap <leader>br :'<,'>!tr A-Za-z N-ZA-Mn-za-m<CR>
" Set leader key
let mapleader = "\<Space>"

" Base64 decode visual selection
vnoremap <leader>d64 :!base64 -d<CR>

" Hex decode visual selection (xxd reverse)
vnoremap <leader>dhex :!xxd -r -p<CR>

" ROT13 decode visual selection (basic CTF text rotation)
vnoremap <leader>drot13 :!tr 'A-Za-z' 'N-ZA-Mn-za-m'<CR>

" Quick find FLAG patterns (e.g., FLAG{...})
nnoremap <leader>ff /FLAG{<CR>

" Save and reload config quickly
nnoremap <leader>sv :w<CR>:source %<CR>

" Hex dump current file
nnoremap <leader>hex :%!xxd<CR>

" Undo hex dump
nnoremap <leader>unhex :%!xxd -r<CR>

" Clean file: remove non-printable chars
nnoremap <leader>clean :%s/[^[:print:]]\\+//g<CR>

