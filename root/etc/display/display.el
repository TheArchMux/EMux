(setq display-buffer-alist
      '(
	("\\*compilation*\\|*Async*\\|*Warnings*"
	 (display-buffer-no-window))
	("*Help*\\|*Buffer List*\\|*Locate*\\|*Apropos*\\|*Completions*"
	 (display-buffer-same-window))
	("magit: *"
	 (display-buffer-same-window))
	("magit-diff: *\\|*Embark Actions*"
	 (display-buffer-below-selected))))

