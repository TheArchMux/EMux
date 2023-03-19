(setq display-buffer-alist
      '(
	("\\*compilation*\\|*Async*"
	 (display-buffer-no-window))
	("*Help*\\|*Buffer List*\\|*Locate*"
	 (display-buffer-same-window))
	("magit: *"
	 (display-buffer-same-window))))
