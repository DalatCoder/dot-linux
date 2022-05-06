# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Setup GOPATH & GOBIN (for plugin in nvim)
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"

PATH=$PATH:$GOBIN

# For Node Version Management NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases 
alias vim="nvim"
alias syncconfig='/usr/bin/git --git-dir=$HOME/dot-linux/.git/ --work-tree=$HOME'
