# Aliases
alias be='bundle exec'
alias vi='nvim'
alias vim='nvim'
alias ll='ls -lahG'
alias gl='git log --decorate --oneline --graph'

set -gx EDITOR 'vim'

# GPG
set -x GPG_TTY (tty)

# Language
set -gx LANG 'en_US.UTF-8'

# Jump integration
status --is-interactive; and . (jump shell | psub)

# Rbenv integration
status --is-interactive; and source (rbenv init -|psub)

# GO integration
set GOPATH $HOME/dev/golang
set PATH $GOPATH/bin $PATH

# Path modifications
set PATH $HOME/.cargo/bin $PATH
set PATH /Applications/Postgres.app/Contents/Versions/latest/bin $PATH
set PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
set PATH /usr/local/opt/node@16/bin $PATH
fish_add_path /usr/local/sbin

# Kubernetes
set -gx PATH $PATH $HOME/.krew/bin
alias kubedemo='kubectl --kubeconfig=/Users/dobrinov/.kube/demo_cluster.yml'
alias kubestaging='kubectl --kubeconfig=/Users/dobrinov/.kube/staging_cluster.yml'
alias kubeproduction='kubectl --kubeconfig=/Users/dobrinov/.kube/production_cluster.yml'
alias kubeinfrastructure='kubectl --kubeconfig=/Users/dobrinov/.kube/infrastructure_cluster.yml'

# Git
alias wip="git add -A && git commit -n -m 'WIP'"
alias branchrm="git branch | fzf -m | xargs git branch -d"
alias branchrmf="git branch | fzf -m | xargs git branch -D"
alias searchbranch="git branch | fzf | xargs git checkout"
