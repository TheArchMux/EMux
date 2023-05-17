(setq display-buffer-alist
      '(
	("\\*compilation*\\|*Async*\\|*Warnings*"
	 (display-buffer-no-window))
	("*Help*\\|*Buffer List*\\|*Locate*\\|*Apropos*\\|*Completions*"
	 (display-buffer-same-window))
	("magit: *\\|*Embark Actions*"
	 (display-buffer-same-window))
	("magit-diff: *"
	 (display-buffer-below-selected))))

