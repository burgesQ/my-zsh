if [ -d ~/.zsh/zsh-autosuggestions ]; then
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    # matching strategy
    ZSH_AUTOSUGGEST_STRATEGY=(history match_prev_cmd)
fi
