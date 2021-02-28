# fish
My fish shell configurations files

## Contains
- config.fish
  - Aliases
  - Environmental variables
  - Random fortune (Doesn't check if you have the fortune command)
- Functions
  - fish_prompt.fish
    - Rainbow prompt (depends on the hsl_to_rgb.fish function)
      - TODO?: make it check if you have pastel and run that instead for the conversion
    
  - fish_prompt.fish.old
    - Non-rainbow version, the rainbow version is based on this one

  - fish_right_prompt.fish
    - Prints a little colorful fish if the previous command didn't return a 0 exit status

  - hsl_to_rgb.fish
    - HSL color to RGB color conversion script
