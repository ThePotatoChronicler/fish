function fish_prompt --description 'Rainbow prompt :)'

    # Here so the test commands don't overwrite it
    set last_pipestatus "$pipestatus"

    # Changes prompt sign if you're roo
    if test "$USER" = root
        set prompt_sign '#'
    else
        set prompt_sign '$'
    end

    # Changes color of prompt sign if last command exited with a status other than 0
    if test 0 -eq $last_pipestatus
        set status_color "$fish_color_cwd"
    else
        set status_color "$fish_color_status"
    end

    # Sets the pipestatus string
    set pipestatus_string (__fish_print_pipestatus "[" "] " "|" (set_color $fish_color_status) \
                          (set_color --bold $fish_color_status) $last_pipestatus)

    # Replaces $HOME in $PWD with ~
    set pwdr (string replace "$HOME" '~' "$PWD")

    # Prints the starting bracket
    printf '['

    # Checks if the variable is set, if not, sets it
    if test -z $RAINBOW_PROMPT
        set -g RAINBOW_PROMPT (random)
    end

    # Prints the user's name
    for i in (string split '' $USER)
        set_color ( hsl_to_rgb $RAINBOW_PROMPT -h )
        set RAINBOW_PROMPT (math "$RAINBOW_PROMPT +1.5") # Change the number to set how fast the color changes
        printf "$i"
    end

    # Prints the rest. kinda confusing with that large amount of formatting
    printf '%s@%s%s%s] %s%s %s\f\r%s%s ' \
        (set_color bryellow) (set_color brcyan) (prompt_hostname) (set_color white)\
        (set_color $fish_color_cwd) $pwdr "$pipestatus_string" (set_color $status_color) $prompt_sign 
end
