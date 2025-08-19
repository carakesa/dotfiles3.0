# 17 July 2023 Updates
# modify for Legion, fix paths
# Attempt to tie in Pywal with Fish thanks to "GideonWolfe/dots"

##### Rice-Rice Baby! (wal colors and sourcing)   ####### 
if status is-interactive
    # Commands to run in interactive sessions can go here
    /usr/bin/cat ~/.cache/wal/sequences &
end
##set COLOR1 (xrdb -query | grep "color1" | cut -f 2 | tail -1)

##### pywal!!! #####
if type wal >>/dev/null 2>&1; and test -f ~/.cache/wal/colors.fish

    source ~/.cache/wal/colors.fish
end
source ~/.cache/wal/fzf.fish

####  SOURCE OTHER FILES #####

source ~/.config/fish/functions/functions.fish
source ~/.config/fish/completions/nnn.fish

#   ____             __ _
#  / ___|___  _ __  / _(_) __ _
# | |   / _ \| '_ \| |_| |/ _` |
# | |__| (_) | | | |  _| | (_| |
#  \____\___/|_| |_|_| |_|\__, |
#                         |___/
#  ____  _               _             _
# |  _ \(_)_ __ ___  ___| |_ ___  _ __(_) ___  ___
# | | | | | '__/ _ \/ __| __/ _ \| '__| |/ _ \/ __|
# | |_| | | | |  __/ (__| || (_) | |  | |  __/\__ \
# |____/|_|_|  \___|\___|\__\___/|_|  |_|\___||___/
#
set XDG_DATA_HOME "$HOME/.local/share"
set XDG_CACHE_HOME "$HOME/.cache"
set XDG_CONFIG_HOME "$HOME/.config"

# Other applications
# Will it keep /home cleaner?
set CARGO_HOME "$XDG_DATA_HOME/Programs/cargo" #rust
set GEM_PATH "$XDG_DATA_HOME/Programs/ruby/gems" #ruby
set GEM_HOME "$XDG_DATA_HOME/Programs/gem"
set GEM_SPEC_CACHE "$XDG_CACHE_HOME/Programs/gem"
set GOPATH "$XDG_DATA_HOME/Programs/go"

# _____                                 
# |  ___|                                
# | |__ _ ____   __ __   ____ _ _ __ ___ 
# |  __| '_ \ \ / / \ \ / / _` | '__/ __|
# | |__| | | \ V /   \ V / (_| | |  \__ \
# \____/_| |_|\_/     \_/ \__,_|_|  |___/

set QT_AUTO_SCREEN_SCALE_FACTOR 0 # fix some QT scaling issues
set QT_QPA_PLATFORMTHEME qt5ct
set QT_STYLE_OVERRIDE gtk3
#set GOPATH '/home/gideon/Programs/go' # to fix go putting main folder in ~
set EDITOR lvim
set PYTHONDONTWRITEBYTECODE yes # Prevent creation of __pycache__ folders

##set COLOR1 (xrdb -query | grep "color1" | cut -f 2 | tail -1)

### SET MANPAGER
### Uncomment only one of these!

### "bat" as manpager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"

### "vim" as manpager
# set -x MANPAGER '/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

### "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

### "less" as manpager
#set -x MANPAGER "less"

alias q=exit
# Alias for vi/vim/nvim/spacevim by calling utility script.
alias v="~/.dotfiles/utils/vicheck.sh"
alias vi="~/.dotfiles/utils/vicheck.sh"
alias vim="~/.dotfiles/utils/vicheck.sh"
alias lvim="~/.local/bin/lvim"
# exa as ls
#alias l='exa'
#alias ls='exa'
#alias la='exa -a'
#alias ll='exa -l'
#alias lla='exa -la'
# Greps
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
# colorize grep and ls
alias grep &>/dev/null || alias grep="grep --color=auto"

# colorized ls - handy if exa not installed
#	alias l='ls -p --color=auto -w $(($COLUMNS<120?$COLUMNS:120))'
#	alias ll='ls -lp --color=auto'
#	alias la='ls -ap --color=auto -w $((COLUMNS<120?$COLUMNS:120))'
# Interactive move/copy/paste 
alias cp="cp -v -i"
alias mv="mv -v -i"
alias rm="rm -v -i"
#       bat
alias cat="bat"
# Pacman Aliases
alias paclean="sudo pacman -Qtdq | sudo pacman -Rns -"
alias pac-showorphans="pacman -Qqd | pacman -Rsu --print -"
# so much easier to type than `cd ..`
alias cdd="cd .."
alias cddd="cd ../.."
alias cdddd="cd ../../.."
alias cddddd="cd ../../../.."
alias dfhh="du -h -d1 | sort -hr"

# Take out the Trash
alias vtrash="gio list trash://"
alias emptytrash="gio trash --empty"

# Memory stuffs
alias df='df -h' # human-readable sizes
alias free='free -m' # show sizes in MB

# Stuff I never use...
alias np='nano -w PKGBUILD'
alias more=less

## PLEASE, I forgot the sudo 
alias please="eval sudo (history -1 | string trim)"

#end
