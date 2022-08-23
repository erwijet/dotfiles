" ~/.config/nvim/init.vim
" require: neovim
" require: vim-plug `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`



" remap section
inoremap kj <esc>
nnoremap <silent><leader>f :FZF<cr>

" plug section
call plug#begin("~/.config/nvim/plugged")

Plug 'haishanh/night-owl.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'preservim/nerdtree'

call plug#end()

" config section

set rnu

if (has("termguicolors"))
  set termguicolors
endif

syntax enable
colorscheme night-owl

set softtabstop=2
set shiftwidth=2
set noexpandtab

let g:lightline = { 'colorscheme': 'nightowl' }

set rtp+=/usr/local/opt/fzf

let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
let g:fzf_preview_window = []
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
root@cassiopeia:~/.config/nvim#
