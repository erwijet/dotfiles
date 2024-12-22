# alias section

alias c="clear"
alias l="ls"
alias x="exit"
alias p="pnpm"
alias d="docker"
alias g="./gradlew"

alias lg="lazygit"
alias ls="exa --long --header --git"
alias sl="ls"
alias id="z emns api ; docker compose exec postgres bash -c 'PGPASSWORD=bryx psql -U bryx emns -t -c \"select id from emns.users;\"' | xargs | pbcopy && echo 'UUID copied to clipboard!'"

alias wed="nvim ~/.wezterm.lua"
alias key="skhd"
alias ash="acme.sh --yes-I-know-dns-manual-mode-enough-go-ahead-please"
alias sql="sqlite3 -column -header"

alias pifl="pnpm install --frozen-lockfile"
alias word='open -a "Microsoft Word"'

alias proed="nvim ~/.profile && source ~/.profile"
alias keyed="nvim ~/.config/skhd/skhdrc"
alias yabaied="nvim ~/.yabairc"

export GL_HOST=https://gitlab.com
. "/Users/tyler/.acme.sh/acme.sh.env"

export GPG_TTY=$(tty)
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.flutter/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$(pyenv root)/shims"
export PATH="$PATH:$HOME/pebble-dev/pebble-sdk-4.6-rc2-mac/bin"
export OSADIR="$HOME/.config/skhd/script"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source ~/.asdf/asdf.sh
source ~/.profile.secrets
