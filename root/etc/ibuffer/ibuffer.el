(setq ibuffer-expert t)

(setq ibuffer-saved-filter-groups
      '(("default"
	 ("College" (filename . "College"))
	 ("Communication" (or
			   (mode . mh-folder-mode)
			   (name . "\\*MH-E Log\\*")))
	 ("Document" (name . "Zathura*"))
	 ("Emacs" (or
		   (mode . backtrace-mode)
		   (mode . Custom-mode)
		   (mode . customize-mode)
		   (mode . help-mode)
		   (mode . completion-list-mode)
		   (mode . messages-buffer-mode)
		   (mode . occur-mode)
		   (name . "^\\*scratch\\*$")
		   (name . "^\\*GNU Emacs\\*$")))
	 ("Exherbo" (or
		     (mode . exheres-mode)
		     (mode . exlib-mode)
		     (filename . "Exherbo")))
	 ("Emux" (filename . ".config/emacs/")))))

(add-hook 'ibuffer-mode-hook
	  (lambda ()
	    (ibuffer-switch-to-saved-filter-groups "default")))
