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

A TUI for git.
