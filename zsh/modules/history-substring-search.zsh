if [ -d ~/.zsh/zsh-history-substring-search ]; then
    source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

    # Set the query found color.
    # HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=''

    # Set the query not found color.
    # HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND=''

    # Set the search globbing flags.
    # HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS=

    # allow fuzzy searching
    HISTORY_SUBSTRING_SEARCH_FUZZY='non_empty'

    # same start of line
    HISTORY_SUBSTRING_SEARCH_PREFIXED='non_empty'

    # only unique
    HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE='non_empty'



    # remap up/down to search
    bindkey "$terminfo[kcuu1]" history-substring-search-up
    bindkey "$terminfo[kcud1]" history-substring-search-down
    # bindkey '^[[A' history-substring-search-up
    # bindkey '^[[B' history-substring-search-down
fi
