. ~/.zsh/config
. ~/.zsh/prompt

export VOLTA_HOME="$HOME/.volta"
export VOLTA_FEATURE_PNPM="1"
export PATH="$VOLTA_HOME/bin:$PATH"
PCRE2_VERSION=10.42
export LDFLAGS="-L/opt/homebrew/Cellar/pcre2/$PCRE2_VERSION/lib"
export CPPFLAGS="-I/opt/homebrew/Cellar/pcre2/$PCRE2_VERSION/include"
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="/Users/deyan.dobrinov/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(rbenv init - zsh)"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Load zsh-autosuggestions
autoload -Uz compinit
compinit

. ~/.zsh/jump
. ~/.zsh/aliases
