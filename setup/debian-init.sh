#!/bin/bash

apt update -y
apt install curl git dirmngr gpg gpg-agent vim software-properties-common -y

# install fish
apt install fish -y
sudo chsh -s $(which fish) "$USER"
echo "source ~/.profile >> ~/.config/fish/config.fish"

# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
source ~/.asdf/asdf.sh
echo 'source ~/.asdf/asdf.fish' >> ~/.config/fish/config.fish

# install nodejs + npm
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# install yarn
npm i -g yarn

# install exa
apt install exa

# install cli utils
apt install fzf

# install neovim
add-apt-repository ppa:neovim-ppa/unstable -y
apt install neovim -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sh -c 'curl -fLo "$HOME/.config/nvim/init.vim" --create-dirs \
       https://raw.githubusercontent.com/erwijet/dotfiles/master/init.vim'

nvim +PlugInstall +'CocInstall coc-tsserver' +qa!

# setup profile
ln -s ~/dotfiles/profile ~/.profile
