setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
export HISTTIMEFORMAT="[%F %T] "
unsetopt EXTENDED_HISTORY        # (disable) Write the history file in the ":start:elapsed;command" format.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_BEEP                 # Beep when accessing non-existent history.

# don't save failed cmd to history file
zshaddhistory() {
  whence ${${(z)1}[1]} >| /dev/null || return 1
}
