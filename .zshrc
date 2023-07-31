alias vi="nvim"

# don't touch :)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# lighten auto-suggestions becuase I like dark themes
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5b5b5b"
# only show suggestions for valid completions, NOT based on history
ZSH_AUTOSUGGEST_STRATEGY=(completion)

# zsh configuration
# TODO: put syntax highlighting in .zsh folder for consistency
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-vim-mode/zsh-vim-mode.plugin.zsh

eval "$(starship init zsh)"

