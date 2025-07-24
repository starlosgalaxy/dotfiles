# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
# plugins
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

# more plugins
plug "marlonrichert/zsh-autocomplete"

# Load and initialise completion system
autoload -Uz compinit
compinit


# my zstyles
zstyle ':completion:*' list-prompt   '' # stop asking for confirmation
zstyle ':completion:*' select-prompt '' # stop asking for confirmation


# ssh-agent things


# lazy nvm

# load bash profile

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# load brew may not need

if [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Exports

export PATH="/opt/homebrew/opt/avr-gcc@8/bin:$PATH"
export PATH="/opt/homebrew/opt/arm-none-eabi-binutils/bin:$PATH"
export PATH="/opt/homebrew/opt/arm-none-eabi-gcc@8/bin:$PATH"
export DOCKER_CONTEXT=colima

# Aliases
