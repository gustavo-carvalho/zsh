setopt correct         # Auto correct mistakes
setopt autocd          # If only directory path is entered, cd there.
setopt numericglobsort # Sort filenames numerically when it makes sense
setopt globdots        # Include .* files and folders in completion

ZSH_THEME="robbyrussell"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="$PATH:/opt/nvim/"

# pnpm
export PNPM_HOME="/home/gustavo/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH=$HOME/.local/bin:$PATH

plugins=(git ssh-agent nvm zsh-autosuggestions zsh-syntax-highlighting you-should-use)

show_virtual_env() {
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}
PS1='$(show_virtual_env)'$PS1

# direnv
eval "$(direnv hook zsh)"

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
