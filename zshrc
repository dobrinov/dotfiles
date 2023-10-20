. ~/.zsh/config
. ~/.zsh/prompt

export VOLTA_HOME="$HOME/.volta"
export VOLTA_FEATURE_PNPM="1"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(rbenv init - zsh)"

# Load zsh-autosuggestions
autoload -Uz compinit
compinit

. ~/.zsh/jump
. ~/.zsh/aliases