(load-file "~/Media/Document/Emacs/Package/Pinentry/pinentry.elc")

(pinentry-start)
(require 'epg)
(setq epg-pinentry-mode 'loopback)
