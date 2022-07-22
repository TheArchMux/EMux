(setq user-full-name		"Arch Mux")
(setq user-mail-address	"archmux@stemux.com")

(setq gnus-directory "~/Media/Document/Emacs/Gnus/")
(setq gnus-save-newsrc-file nil)
(setq gnus-select-method '(nntp "localhost"))
(setq gnus-startup-file "~/Media/Document/Emacs/Gnus/newsrc")
(setq gnus-use-dribble-file nil)

(setq message-directory	"~/Media/Document/Mail/")
(setq message-send-mail-function 'message-send-mail-with-sendmail)
(setq message-sendmail-extra-arguments '("-a" "Archmux"))

(setq sendmail-program "/usr/bin/msmtp")

(add-to-list 'gnus-secondary-select-methods
             '(nnimap "Archmux-dovecot"
                      (nnimap-address "localhost") ; shouldn't matter?
                      (nnimap-stream network)
		      (nnimap-authenticator login)
		      (nnimap-user "archmux@stemux.com")
		      )
)

(setq imap-shell-program "MAIL=maildir:$HOME/Media/Document/Mail/ /usr/x86_64-pc-linux-musl/libexec/dovecot/imap")
