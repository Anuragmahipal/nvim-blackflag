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

