#!/bin/zsh
#
# assert apple silicon chipset

# install git
xcode-select --install

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# install desktop apps
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask inkdrop
brew install --cask mongodb-compass
brew install --cask slack

# install fish
brew install fish
sudo chsh -s /opt/homebrew/bin/fish "$USER"
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
brew install exa

# install cli utils
brew install fzf
brew install wget
brew install lazygit

# install kooooobernetes stuff
brew install kubernetes-cli@1.22
brew install octant

# install neovim
brew install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
sh -c 'curl -fLo "$HOME/.config/nvim/init.vim" --create-dirs \
       https://raw.githubusercontent.com/erwijet/dotfiles/master/init.vim'

nvim +PlugInstall +'CocInstall coc-tsserver' +qa!

# setup profile
ln -s ~/dotfiles/profile ~/.profile
