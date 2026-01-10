
# Geschiedenis
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory

# Autocomplete verbeteren
autoload -Uz compinit
compinit

# Correctie bij typefouten
setopt correct

# Sneller globben
setopt extendedglob

# PATH aanpassen
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# Prompt aanpassen
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
PROMPT='%n %~ ${vcs_info_msg_0_} %# '
zstyle ':vcs_info:git:*' formats '(%b)'

# Thema laden
ZSH_THEME="agnoster"

# Installeer plugins
plugins=(
    1password
    git
    docker
    docker-compose
    conda
    npm
    brew
    emacs
    vscode
    python
    pylint
    node
    macos
    gulp
    uv
)