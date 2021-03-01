# PATH
if test $SHLVL -eq 1
    set -a PATH "$HOME/.local/bin"
    set -a PATH "$HOME/Scripts"
end

# Environment
set -x BROWSER firefox
set -x TERMINAL kitty
set -x QT_QPA_PLATFORMTHEME gtk2
set -x DOTNET_CLI_TELEMETRY_OPTOUT 1
set -x PAGER most
set -x EDITOR nvim

# If fish is not running interactively, end the script here
if not status is-interactive
    exit
end

# Shows a random fortune
# requires the fortune command/program
fortune

# Spacevim
alias spacevim='command nvim -u ~/.SpaceVim/vimrc'
alias v='spacevim'

# Aliasses
alias fishconf='spacevim ~/.config/fish/config.fish'
alias spaceconf='spacevim ~/.SpaceVim.d/init.toml'
alias xclip='xclip -sel clip'
alias mv='mv -v'
alias grep='grep --color=auto'
alias rm='rmtrash'
alias rmdir='rmdirtrash'
alias nmcli='nmcli --color=auto --ask'
alias rclua='spacevim ~/.config/awesome/rc.lua' # For quick editing of awesome
alias theme='spacevim ~/.config/awesome/theme.lua' # For quick editing of awesome's theme
