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

# Aliasses
alias fishconf='nvim ~/.config/fish/config.fish'
alias xclip='xclip -sel clip'
alias mv='mv -v'
alias grep='grep --color=auto'
alias rm='rmtrash'
alias rmdir='rmdirtrash'
alias nmcli='nmcli --color=auto --ask'
alias vim='nvim'
alias rclua='nvim ~/.config/awesome/rc.lua' # For quick editing of awesome
alias theme='nvim ~/.config/awesome/theme.lua' # For quick editing of awesome's theme
