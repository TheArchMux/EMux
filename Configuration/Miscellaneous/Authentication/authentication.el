(setq auth-sources '("~/.local/share/Authentication/authinfo" "~/.local/share/Authentication/authinfo.gpg"))

(require 'epa-file)
(epa-file-enable)
(setq epa-file-select-keys nil)
(setq epa-file-encrypt-to '("archmux@stemux.com"))

(setq epg-pinentry-mode 'loopback)

