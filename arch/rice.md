# Basic IO

## Keyboard input

- Assuming normal physical Qwerty layout keyboard.
- Expected AltGr layer of Dvorak keys:
  - a -> ä
  - o -> õ
  - e -> ö
  - u -> ü
  - s -> š
  - z -> ž
  - 4 -> €

### `/usr/share/kbd/keymaps/i386/dvorak/et-dvorak.map.gz`

Create custom `et-dvorak.map` file, then gzip it.

```conf
include "/usr/share/kbd/keymaps/i386/dvorak/dvorak.map.gz"

keymaps 0-6,8-9,12

altgr keycode 30 = +adiaeresis
shift altgr keycode 30 = +Adiaeresis
altgr keycode 31 = +otilde
shift altgr keycode 31 = +Otilde
altgr keycode 32 = +odiaeresis
shift altgr keycode 32 = +Odiaeresis
altgr keycode 33 = +udiaeresis
shift altgr keycode 33 = +Udiaeresis

altgr keycode 39 = +scaron
shift altgr keycode 39 = +Scaron
altgr keycode 53 = +zcaron
shift altgr keycode 53 = +Zcaron

altgr keycode 5 = euro
```

Can be tested with `loadkeys et-dvorak` (or full path to gz).

May need to use dumpkeys to get full self-contained file for initramfs.

### `/etc/vconsole.conf`

Note that `ter-v32n` font comes from `terminus-font` package, or could use `eurlatgr` font. 
Font can be tested with `setfont ter-v32n`.

```conf
KEYMAP=et-dvorak
FONT=ter-v32n
```

## Locale

Expected
- alphabetic sorting order: `abc..sšzžtuvwõäöüxy`
- date format: `L 14 nov   2026 12:30:02 EET`

### `/etc/locale.gen`

Uncomment Estonian localization and run `locale-gen`.

```conf
et_EE.UTF-8 UTF-8
```

### `/etc/locale.conf`

Use Estonian localization for sorting and formatting dates and numbers, 
but keep error messages, man pages, TUI menus, etc in English.

```conf
LANT=et_EE.UTF-8
LC_MESSAGES=en_US.UTF-8
```

## Theme

Prefer [catppuccin-latte](https://github.com/catppuccin/catppuccin).


## Rebuild initramfs

`mkinitcpio -P`

## Programs

- tmux
- bat
- ripgrep

- pass
- gpg ?

- yazi
- starship
- eza

- git
  - lazygit 
