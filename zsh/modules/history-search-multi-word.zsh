if [ -d ~/.zsh/history-search-multi-word ]; then
    source ~/.zsh/history-search-multi-word/history-search-multi-word.plugin.zsh

    # Number of entries to show (default is $LINES/3)
    zstyle ":history-search-multi-word" page-size "LINES/7"
    # Color in which to highlight matched
    zstyle ":history-search-multi-word" highlight-color "fg=yellow,bold"
    # enable color
    zstyle ":plugin:history-search-multi-word" synhl "yes"
    # active selection style
    zstyle ":plugin:history-search-multi-word" active "standout, bold, bg=blue"
    # check for path and display them as purple
    zstyle ":plugin:history-search-multi-word" check-paths "yes"
    # Whether pressing Ctrl-C or ESC should clear entered query
    zstyle ":plugin:history-search-multi-word" clear-on-cancel "yes"
fi
