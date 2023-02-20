bindkey -e

#
# navigation
#

setopt auto_cd       # Enter dir if doable
setopt MULTIOS       # Write to multiple descriptors.
setopt EXTENDED_GLOB # Use extended globbing syntax.
unsetopt CLOBBER     # Do not overwrite existing files with > and >>.
# Use >! and >>! to bypass.

# auto exand cd dot
# src: https://github.com/wazum/zsh-directory-dot-expansion/blob/master/cd-dot-expansion.plugin.zsh
function expand-dot-to-parent-directory-path {
    if [[ $LBUFFER = *.. ]]; then
        LBUFFER+='/..'
    else
        LBUFFER+='.'
    fi
}
zle -N expand-dot-to-parent-directory-path

# Keybinds for emacs and vi insert mode
for keymap in 'emacs' 'viins'; do
    bindkey -M "$keymap" "." expand-dot-to-parent-directory-path
done

# Termcaps
bindkey  '^[[1;5A'   up-line-or-history
bindkey  '^[[1;5B'   down-line-or-history
bindkey  '^[[1;5D'   emacs-backward-word
bindkey  '^[[1;5C'   emacs-forward-word
bindkey  '^[[3;5~'   delete-word
bindkey   '^[[3~'    delete-char

# Beep on error in line editor
setopt BEEP
