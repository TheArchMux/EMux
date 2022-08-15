(load-file "~/Internet/Git/Emacs/ryo-modal/ryo-modal.elc")

(ryo-modal-keys
   ("," ryo-modal-repeat)
   ("i" ryo-modal-mode)
   ("a" beginning-of-line)
   ("f" end-of-line)
   ("j" backward-char)
   ("k" next-line)
   ("l" previous-line)
   (";" forward-char))

(ryo-modal-key "SPC m" 'man)
(ryo-modal-key "SPC f"
	       '(("c"	archmux/open-collection-file)
		 ("f"	find-file)
		 ("p"	find-file-at-point)
		 ("x"	save-buffer))
	       )

(global-set-key (kbd "RET") 'ryo-modal-mode)

