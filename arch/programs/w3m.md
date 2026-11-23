# w3m

## `~/.bash_profile`

```conf
...
# Move w3m configs
export W3M_DIR="$HOME/.config/w3m"
```

## `~/.config/w3m/config`

```conf
keymap_file ~/.config/w3m/keymap
```

## `~/.config/w3m/keymap`

```conf
# Half-page scrolling
keymap C-d NEXT_HALF_PAGE
keymap C-u PREV_HALF_PAGE

# Scroll 5 lines at a time with Shift+J / Shift+K
keymap J UP 5
keymap K DOWN 5
```

