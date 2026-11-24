## `~/.config/neomutt/neomuttrc`

```conf
set mbox_type = Maildir
set folder = "~/.mail/gmail"
set spoolfile = "+Inbox"

set mailcap_path = ~/.config/neomutt/mailcap
auto_view text/html
#alternative_order text/plain text/enriched text/html

# Scroll line-by-line with j / k
bind pager j next-line
bind pager k previous-line

# Scroll half-page with Ctrl+d / Ctrl+u
bind pager \Cd half-down
bind pager \Cu half-up

# Jump to top / bottom with g / G
bind pager g top
bind pager G bottom
```
