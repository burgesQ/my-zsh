#  -*- mode: sh; -*-
#
# Set zsh options.
#

# spacemacs tramp hang compat
# src: https://www.emacswiki.org/emacs/TrampMode
if [[ "$TERM" == "dumb" ]]
then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    if whence -w precmd >/dev/null; then
        unfunction precmd
    fi
    if whence -w preexec >/dev/null; then
        unfunction preexec
    fi
    unset zle_bracketed_paste
    PS1='$ '
    unset rcs
    return
fi

source ~/.zalias
source ~/.zshenv

# Load command-not-found on Debian-based distributions.
if [[ -s /etc/zsh_command_not_found ]]; then
    source /etc/zsh_command_not_found
fi


# update prompt every 10sec
# error prompt go up one line
# TMOUT=1
# TRAPALRM() {
#     zle && zle reset-prompt
# }

source ~/.zsh/modules/navigation.zsh
source ~/.zsh/modules/completion.zsh
source ~/.zsh/modules/history.zsh

#
# load custom plugin if availalbe
#

source ~/.zsh/modules/syntax-highlighting.zsh
source ~/.zsh/modules/history-search-multi-word.zsh
source ~/.zsh/modules/history-substring-search.zsh
source ~/.zsh/modules/autosuggestions.zsh

# fix weird prompt behavior
setopt prompt_sp
setopt prompt_cr
# setopt prompt_opts

source ~/.zsh/modules/spaceship.zsh
