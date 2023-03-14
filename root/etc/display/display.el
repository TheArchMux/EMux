(setq display-buffer-alist
      '(
	("\\*compilation*\\|*Async*"
	 (display-buffer-no-window))
	("*Help*"
	 (display-buffer-same-window))
	("magit: *"
	 (display-buffer-same-window))))
