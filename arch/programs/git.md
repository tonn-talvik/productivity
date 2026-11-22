# git

## `~/.gitconfig`

```conf
[user]
	name = <my name>
	email = <redacted>
[credential "https://github.com"]
	helper = "!f() { echo \"username=<redacted>\"; echo \"password=$(pass show dev/github/pat)\"; }; f"
```

## lazygit

A TUI for git. Colours need adjusting for VConsole.
Note that this might conflict with Wayland/pts later on.

### `~/.config/lazygit/config.yml`

```yml
gui:
  theme:
    selectedLineFgColor:
      - black
    selectedLineBgColor:
      - blue
```
