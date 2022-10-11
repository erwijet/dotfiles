eval "$(/opt/homebrew/bin/brew shellenv)" > /dev/null

# alias section

alias c="clear"
alias y="yarn"
alias k="kubectl"
alias l="exa --long --header"
alias f="fzf"
alias g="git"
alias x="exit"

alias lg="lazygit"
alias kg="kubectl get"
alias kd="kubectl delete"
alias kl="kubectl logs"
alias kc="kubectl create"
alias hc="hancock"
alias gl="glab"
alias vf="f | xargs nvim"
alias xa="xargs"

alias haf="kubectl apply -f"
alias kdf="kubectl delete -f"
alias pbx="podman buildx build --platform linux/amd64"
alias ash="acme.sh --yes-I-know-dns-manual-mode-enough-go-ahead-please"
alias vim="nvim"
alias ap1="awk '{print "'$1'"}'"
alias enc="gpg --batch --yes --symmetric --passphrase"
alias qwe='cd ~ && cd $(find . -maxdepth 5 -type d -print | f --no-clear --height 10) && c'

alias sctl="systemctl"
alias proc="systemctl status"
alias nano="nvim"
alias lgtm="gl mr approve"

alias proed="vim ~/.profile && source ~/.profile"
alias frick="sudo !!"
alias become="ssh"


export GL_HOST=https://gitlab.bryx.com
. "/Users/tyler/.acme.sh/acme.sh.env"
