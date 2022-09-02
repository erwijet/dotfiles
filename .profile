eval "$(/opt/homebrew/bin/brew shellenv)" > /dev/null

# alias section

alias c="clear"
alias y="yarn"
alias k="kubectl"
alias l="exa --long --header"
alias f="fzf"

alias lg="lazygit"
alias kg="kubectl get"
alias kd="kubectl delete"
alias kl="kubectl logs"
alias kc="kubectl create"
alias hc="hancock"

alias haf="kubectl apply -f"
alias kdf="kubectl delete -f"
alias dbx="docker buildx build --platform linux/amd64"
alias ash="acme.sh --yes-I-know-dns-manual-mode-enough-go-ahead-please"

alias sctl="systemctl"
alias proc="systemctl status"

alias proed="vim ~/.profile && source ~/.profile"
