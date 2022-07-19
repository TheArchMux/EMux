(setq user-full-name		"Arch Mux")
(setq user-mail-address	"archmux@stemux.com")

(setq gnus-directory "~/Media/Document/Emacs/Gnus/")
(setq gnus-save-newsrc-file nil)
(setq gnus-select-method '(nntp "localhost"))
(setq gnus-startup-file "~/Media/Document/Emacs/Gnus/newsrc")
(setq gnus-use-dribble-file nil)

(setq message-directory	"~/Media/Document/Mail/")

(add-to-list 'gnus-secondary-select-methods
             '(nnimap "Archmux-dovecot"
                      (nnimap-address "localhost") ; shouldn't matter?
                      (nnimap-stream shell)))

(setq imap-shell-program "MAIL=maildir:$HOME/Media/Document/Mail/ /usr/x86_64-pc-linux-musl/libexec/dovecot/imap")
