(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("a"	(
	 ("a"		gnus-agent-add-group)
	 ("f g"		gnus-agent-fetch-groups)
	 ("f s"		gnus-agent-fetch-session)
	 ("r"		gnus-agent-remove-group)
	 ("s"		gnus-agent-synchronize-flags)
	 ("t g"		gnus-agent-toggle-group-plugged)
	 ("t p"		gnus-agent-toggle-plugged)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("c"	(
	 ("a d"		gnus-cloud-download-all-data)
	 ("a u"		gnus-cloud-upload-all-data)
	 ("d"		gnus-cloud-download-data)
	 ("u"		gnus-cloud-upload-data)
	 )
  )
 )


(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("e"	(
	 ("a"		gnus-group-nnimap-edit-acl)
	 ("e"		gnus-group-edit-group)
	 ("g"		gnus-group-edit-global-kill)
	 ("k"		gnus-group-edit-local-kill)
	 ("m"		gnus-group-edit-group-method)
	 ("p"		gnus-group-edit-group-parameters)
	 ("s"		gnus-score-edit-all-score)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("g"	(
	 ("m d"			gnus-group-make-doc-group)
	 ("m e"			gnus-group-make-empty-virtual)
	 ("m f"			gnus-group-make-directory-group)
	 ("m g"			gnus-group-make-group)
	 ("m h"			gnus-group-make-help-group)
	 ("m n"			gnus-group-make-nnir-group)
	 ("m r"			gnus-group-make-rss-group)
	 ("m u"			gnus-group-make-useful-group)
	 ("m w"			gnus-group-make-web-group)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("g"	(
	 ("r e"			gnus-group-read-ephemeral-group)
	 ("r i"			gnus-group-read-init-file)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("k"	(
	 ("l"			gnus-group-kill-level)
	 ("g"			gnus-group-kill-group)
	 ("z"			gnus-group-kill-all-zombies)
	 ("SPC"			gnus-group-kill-region)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("l"	(
	 ("a"		gnus-group-list-active)
	 ("c"		gnus-group-list-cached)
	 ("d"		gnus-group-list-dormant)
	 ("k"		gnus-group-list-killed)
	 ("m"		gnus-group-list-matching)
	 ("g"		gnus-group-list-groups)
	 ("p a"		gnus-group-apropos)
	 ("p d"		gnus-group-description-apropos)
	 ("t"		gnus-group-list-ticked)
	 ("z"		gnus-group-list-zombies)
	 ("C-a"		gnus-group-list-all-groups)
	 ("C-m"		gnus-group-list-all-matching)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("m"	(
	 ("b"		gnus-group-mark-buffer)
	 ("m"		gnus-group-mark-group)
	 ("r"		gnus-group-mark-regexp)
	 ("u"		gnus-group-unmark-group)
	 ("C-u"		gnus-group-unmark-all-groups)
	 ("SPC"		gnus-group-mark-region)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("q"				gnus-group-quit)
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("s f"				gnus-group-save-newsrc)
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("s g"	(
	 ("a"		gnus-group-sort-groups-by-alphabet)
	 ("l"		gnus-group-sort-groups-by-level)
	 ("g"		gnus-group-sort-groups)
	 ("m"		gnus-group-sort-groups-by-method)
	 ("n"		gnus-group-sort-groups-by-real-name)
	 ("s"		gnus-group-sort-groups-by-score)
	 ("r"		gnus-group-sort-groups-by-rank)
	 ("u"		gnus-group-sort-groups-by-unread)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("s s g"  (
	    ("a"		gnus-group-sort-selected-groups-by-alphabet)
	    ("l"		gnus-group-sort-selected-groups-by-level)
	    ("g"		gnus-group-sort-selected-groups)
	    ("m"		gnus-group-sort-selected-groups-by-method)
	    ("n"		gnus-group-sort-selected-groups-by-real-name)
	    ("s"		gnus-group-sort-selected-groups-by-score)
	    ("r"		gnus-group-sort-selected-groups-by-rank)
	    ("u"		gnus-group-sort-selected-groups-by-unread)
	    )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("t"				gnus-group-transpose-groups)
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("u"	(
	 ("c"			gnus-group-unsubscribe-current-group)
	 ("g"			gnus-group-unsubscribe-group)
	 ("u"			gnus-group-unsubscribe)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("v"	(
	 ("g"			gnus-sieve-generate)
	 ("u"			gnus-sieve-update)
	 )
  )
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("g c"				gnus-group-compact-group)
 ("g C-c"				gnus-group-clear-data)
 ("g d"				gnus-group-delete-group)
 ("g e"				gnus-group-expunge-group)
 ("g f"				gnus-group-list-flush)
 ("g j"				gnus-group-jump-to-group)
 ("g l"				gnus-group-list-limit)
 ("g n"				gnus-group-get-new-news-this-group)
 ("g p"				gnus-group-list-plus)
 ("g r"				gnus-group-rename-group)
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("v"				gnus-version)
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("x a"				gnus-group-expire-articles)
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("?"				gnus-group-describe-group)
 ("SPC ?"			gnus-group-describe-all-groups)
 )

(ryo-modal-major-mode-keys
 'gnus-group-mode
 ("SPC b"				gnus-group-check-bogus-groups)
 ("SPC C-b"				gnus-group-browse-foreign-server)
 ("SPC c a"				gnus-group-catchup-current-all)
 ("SPC c c"				gnus-group-catchup-current)
 ("SPC e"				gnus-group-select-group-ephemerally)
 ("SPC f"				gnus-group-find-new-groups)
 ("SPC g"				gnus-group-select-group)
 ("SPC m"				gnus-group-mail)
 ("SPC n n"				gnus-group-get-new-news)
 ("SPC p"				gnus-group-post-news)
 ("SPC r"				gnus-group-restart)
 ("SPC s"				gnus-group-set-current-level)
 ("SPC q"				gnus-group-quick-select-group)
 ("SPC u"				gnus-undo)
 ("SPC v"				gnus-group-visible-select-group)
 ("SPC y"				gnus-group-yank-group)
 ("C-c"					gnus-group-universal-argument)
 ("C-d"					gnus-group-suspend)
 )

