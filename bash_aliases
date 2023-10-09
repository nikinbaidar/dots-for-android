#!/bin/bash
#
# ░█▀▄░█▀█░█▀▀░█░█░░░█▀█░█░░░▀█▀░█▀█░█▀▀░█▀▀░█▀▀
# ░█▀▄░█▀█░▀▀█░█▀█░░░█▀█░█░░░░█░░█▀█░▀▀█░█▀▀░▀▀█
# ░▀▀░░▀░▀░▀▀▀░▀░▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀▀▀

# Alias Definitions
alias vi="/usr/bin/nvim"
alias ls="ls -v --color=always --group-directories-first"
alias grep="grep --color=always"
alias less="less --quit-if-one-screen -X -RAW-CONTROL-CHARS"
alias octave="octave --silent"
alias R="R --silent"
alias sudo="sudo "
alias pqiv="pqiv 2> /dev/null"
## Works with .pptx and .docx POST DEPRECATION
alias convert2pdf="soffice --headless --convert-to pdf"

# Function Definitions
function weather() {
  curl wttr.in/${1}
}


function cloudsync() {

    function pushNotes() {
        pushd ~/projects/notes
        branch=$(git branch | awk ' /\*/ {print $2} ')
        git pull
        git add --all
        git commit -m "o.O"
        git push -u origin ${branch} --verbose
        popd 
    }

    function pushDropbox() {
        dropbox-cli start
        until [ "$(dropbox-cli status)" = "Up to date" ]; do 
            :
        done
        echo "Up to date"
        dropbox-cli stop
    }

    case $1 in 
        -n) pushNotes ;;
        -d) pushDropbox ;;
        *) pushNotes && pushDropbox ;;
    esac
}

function def() {
    sdcv -n --utf8-output --color "$@" 2>&1 | \
        fold --width=$(tput cols) | \
        less --quit-if-one-screen -RX
    }
