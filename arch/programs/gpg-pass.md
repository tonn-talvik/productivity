# Pass and GnuPG

Install `pacman -S pass gnupg`

## gpg

- set up `gpg --full-gen-key`
- list `gpg --list-secret-keys`

## pass

Initialize store `pass init <gpg-id>`

Organization
```
~/.password-store
└── dev
    └── github
        └── pat.gpg
└── email
    └── gmail.gpg
```

- list entries `pass`
- `pass insert dev/github/pat`
- `pass show dev/github/pat`
- `pass edit dev/github/pat`

- copy to clipboard (X11/Wayland) `pass -c dev/github/pat`
