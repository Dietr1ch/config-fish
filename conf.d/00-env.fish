set -x ALTERNATE_EDITOR "nvim"
set -x EDITOR "emacsclient -c -nw"
set -x VISUAL "emacsclient -c"


set PATH /bin
set PATH /usr/{local/,}bin $PATH
set PATH /usr/bin/{site,vendor,core}_perl $PATH

set PATH $HOME/.bin $PATH
