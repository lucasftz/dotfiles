PS1="%n # "

# alias hx='$HOME/sourcefiles/helix/target/release/hx'
# HELIX_RUNTIME='$HOME/.config/helix/runtime'

# zig + zls
export PATH="$HOME/zig/zig-macos-aarch64-0.12.0-dev.1625+6fd1c64f2:$PATH"
export PATH="$HOME/zig/zls:$PATH"

alias docked='docker run --rm -it -v ${PWD}:/rails -v ruby-bundle-cache:/bundle -p 8888:8888 even-docker-image'
alias py='/usr/local/bin/python3'
alias pi='/usr/local/bin/pip3'

alias gc='git commit'
alias gcw='git commit-w'
alias gs='git status'
alias gl='git log'
alias ga='git add .'
alias gd='git diff'
alias gpsh='git push'
alias gpll='git pull'
alias gsw='git switch'
alias gswc='git switch -c'

export EDITOR="hx"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
