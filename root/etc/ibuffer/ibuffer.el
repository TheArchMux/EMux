(setq ibuffer-expert t)

(setq ibuffer-saved-filter-groups
      '(("default"
		("College" (filename . "College"))
		("Exherbo" (or
			    (mode . exheres-mode)
			    (mode . exlib-mode)
			    (filename . "Exherbo"))))))

(add-hook 'ibuffer-mode-hook
	  (lambda ()
	    (ibuffer-switch-to-saved-filter-groups "default")))
