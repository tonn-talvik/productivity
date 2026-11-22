# mbsync (isync)

Install `pacman -S isync`.
Create local maildir directories `mkdir -p ~/.mail/gmail ~/.mail/proton`.
Set Google Account app password `pass add email/gmail-app-pass`.

## `~/.config/isyncrc`

```conf
# ========================================
# GMAIL
# ========================================
IMAPAccount gmail
Host imap.gmail.com
User <redacted>@gmail.com
PassCmd "pass email/gmail-app-pass"
TLSType IMAPS
CertificateFile /etc/ssl/certs/ca-certificates.crt

IMAPStore gmail-remote
Account gmail

MaildirStore gmail-local
SubFolders Verbatim
Path ~/.mail/gmail/
Inbox ~/.mail/gmail/Inbox

Channel gmail
Far :gmail-remote:
Near :gmail-local:
# Sync Inbox, custom labels, Sent, and Trash; exclude [Gmail]/All Mail to prevent duplicates
Patterns * ![Gmail]* "[Gmail]/Sent Mail" "[Gmail]/Trash" "[Gmail]/Drafts"
Create Both
Expunge Both
SyncState *

# proton...
```

Sync mailbox `mbsync gmail`.
