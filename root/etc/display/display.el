(setq display-buffer-alist
      '(
	("\\*compilation*\\|*Async*\\|*Warnings*"
	 (display-buffer-no-window))
	("*Help*\\|*Buffer List*\\|*Locate*\\|*Apropos*"
	 (display-buffer-same-window))
	("magit: *"
	 (display-buffer-same-window))
	("magit-diff: *"
	 (display-buffer-below-selected))))
