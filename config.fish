if status is-interactive
    # Vim
    fish_vi_key_bindings
    set -Ux EDITOR vim

    # Code color
    set -g fish_color_error red
    set -g fish_color_command green

    # Alias
    alias s='ssh'
end
