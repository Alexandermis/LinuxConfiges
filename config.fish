if status is-interactive
    fish_vi_key_bindings
    set -Ux EDITOR vim
    set -g fish_color_error red
    set -g fish_color_command green

    # Alias
    alias s='ssh'
    # Commands to run in interactive sessions can go here
end
