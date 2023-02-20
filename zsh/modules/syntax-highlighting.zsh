if [ -d ~/.zsh/zsh-syntax-highlighting ]; then
    source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    # highlight strategy
    ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets regexp line root)

    typeset -A ZSH_HIGHLIGHT_REGEXP
    ZSH_HIGHLIGHT_REGEXP+=('^(.* )?rm .*' fg=red,bold)
    ZSH_HIGHLIGHT_REGEXP+=('^(git )?push( .*)? -f' fg=red,bold)
fi
