(require 'gnus)

(setq gnus-select-method '(nntp "localhost"))

(add-to-list 'gnus-secondary-select-methods
             '(nnimap "Archmux-local"
                      (nnimap-address "localhost")
                      (nnimap-stream shell)
		      )
	     )

(setq gnus-message-archive-method
      '(nnfolder "archive"
                 (nnfolder-directory   "~/Media/Document/Mail/Archive/")
                 (nnfolder-active-file "~/Media/Document/Mail/Archive/active")
                 (nnfolder-get-new-mail nil)
                 (nnfolder-inhibit-expiry t)))


(setq imap-shell-program "MAIL=maildir:$HOME/Media/Document/Mail/ /usr/libexec/dovecot/imap")

(setq gnus-article-save-directory "~/Media/News/")
(setq gnus-cache-directory "~/Media/News/Cache/")
(setq nndraft-directory "~/Media/News/Drafts/")
(setq nnfolder-directory "~/Media/Document/Mail/")
