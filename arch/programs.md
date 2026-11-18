# Programs
 
## `tmux`

Official [catppuccin-latte/tmux](https://github.com/catppuccin/tmux) looks off on VConsole,
so colours need fine tuning.

### `~/.config/tmux/tmux.conf`

```conf
# Enable vi keybindings
setw -g mode-keys vi

# Start window and pane numbering at 1
set -g base-index 1
setw -g pane-base-index 1

# Automatically renumber windows when one is closed
set -g renumber-windows on

# Move status bar to the top
set -g status-position top

if-shell '[ "$TERM" = "linux" ]' {
    # ===========================================
    # 1. LINUX VCONSOLE (16-Colour Native Setup)
    # ===========================================

    set -g status-style "bg=colour15,fg=colour7"
    set -g status-left "#[bg=colour15,fg=colour0,bold] #H #S #[default]"
    set -g status-right "#[bg=colour15,fg=colour0,bold]%a %d.%m.%Y #[bg=colour15,fg=colour6,bold]%H:%M #[default]"

    # Window tabs
    set -g window-status-style "bg=colour15,fg=colour8"
    set -g window-status-format " #I:#W "
    set -g window-status-current-style "bg=colour11,fg=colour0"
    set -g window-status-current-format " #I:#W "

    # High-contrast selection, menus, and command prompt
    set -g mode-style "bg=colour4,fg=colour0,nobold"
    set -g menu-selected-style "bg=colour4,fg=colour0,bold"
    set -g message-style "bg=colour15,fg=colour2"
    set -g message-command-style "bg=colour15,fg=colour7,bold"
    set -g prompt-cursor-colour "colour4"

    # Pane borders
    set -g pane-border-style "fg=colour7"
    set -g pane-active-border-style "fg=colour4" 

} {
    # ===========================================
    # 2. GUI TERMINAL (24-Bit Catppuccin Plugin)
    # ===========================================

    # Catppuccin-latte
    set -g @catppuccin_flavor "latte"

    run ~/.config/tmux/plugins/catppuccin/tmux/catppuccin.tmux
}
```

## Other

- bat
- ripgrep

- pass
- gpg ?

- yazi
- starship
- eza

- git
  - lazygit 
