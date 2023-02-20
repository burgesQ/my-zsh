if [ -d ~/.zsh/spaceship-prompt ]; then


    SPACESHIP_PROMPT_ASYNC=true
    SPACESHIP_PROMPT_ADD_NEWLINE=true
    SPACESHIP_PROMPT_SEPARATE_LINE=true

    # spaceship prompt cfg
    SPACESHIP_CHAR_SUFFIX=" "
    SPACESHIP_CHAR_SYMBOL="❯"
    SPACESHIP_CHAR_SYMBOL_ROOT="#❯"
    SPACESHIP_CHAR_SYMBOL_SECONDARY="?"
    SPACESHIP_CHAR_COLOR_SUCCESS="magenta"

    # spaceship time cfg
    SPACESHIP_TIME_SHOW=true
    SPACESHIP_TIME_PREFIX=""
    SPACESHIP_TIME_COLOR="magenta"

    # spaceship user/host/dir cfg
    SPACESHIP_USER_SHOW="yes"
    SPACESHIP_USER_COLOR="243"
    SPACESHIP_USER_SUFFIX=""

    SPACESHIP_HOST_SHOW="yes"
    SPACESHIP_HOST_PREFIX="@"
    SPACESHIP_HOST_SUFFIX=""

    SPACESHIP_DIR_SHOW=true
    SPACESHIP_DIR_PREFIX="➜ "
    SPACESHIP_DIR_TRUNC=5
    SPACESHIP_DIR_TRUNC_PREFIX="🗀 "
    SPACESHIP_DIR_TRUNC_REPO=true

    # spaceship git cfg

    SPACESHIP_GIT_PREFIX=""
    # SPACESHIP_GIT_STATUS_PREFIX="["
    # SPACESHIP_GIT_STATUS_SUFFIX="]"
    SPACESHIP_GIT_BRANCH_COLOR="243"
    # SPACESHIP_GIT_STATUS_DIVERGED="!⇣⇡"
    # need mod from https://github.com/denysdovhan/spaceship-prompt/pull/443
    SPACESHIP_GIT_BRANCH_SHOW_COMMIT=false
    SPACESHIP_GIT_BRANCH_SHOW_TAG=true
    SPACESHIP_GIT_BRANCH_COMMIT_SYMBOL=" 🚩 "
    SPACESHIP_GIT_BRANCH_TAG_SYMBOL=" 🏷️  "
    SPACESHIP_GIT_ORDER=(git_branch git_tag git_status git_diff git_hash)


    # spaceship battery cfg
    ## apt install acpi
    SPACESHIP_BATTERY_SHOW="true"
    SPACESHIP_BATTERY_THRESHOLD="25"
    SPACESHIP_BATTERY_SYMBOL_CHARGING=" "
    SPACESHIP_BATTERY_SYMBOL_DISCHARGING=" "

    # spaceship status code cfg
    SPACESHIP_EXIT_CODE_SHOW=true
    SPACESHIP_EXIT_CODE_SYMBOL="✘ "

    # spaceship exec time cfg
    SPACESHIP_EXEC_TIME_PREFIX="took "

    SPACESHIP_ASYNC_SHOW_COUNT=true

    SPACESHIP_PROMPT_ORDER=(
      battery       # Battery level and status

      # user          # Username section
      dir           # Current directory section
      git           # git status
      package       # Package version

      node          # Node.js section
      golang        # Go section
      python        # Python section
      php           # PHP section
      rust          # Rust section
      docker        # Docker section
      # docker_compose   # Docker section
      aws           # Amazon Web Services section

      async         # Async jobs indicator
      exec_time     # Execution time
      line_sep      # Line break

      time          # Current time
      exit_code     # Last cmd exit code
      char          # Prompt character
      jobs          # Background jobs indicator
    )

    SPACESHIP_RPROMPT_ORDER=(
        # dir           # Current directory section
        host          # Hostname section
    )

    source ~/.zsh/spaceship-prompt/spaceship.zsh
fi
