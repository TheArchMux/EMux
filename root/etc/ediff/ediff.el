(add-hook 'ediff-before-setup-hook 'make-frame-command)
(add-hook 'ediff-quit-hook 'delete-frame)
(setq ediff-split-window-function 'split-window-vertically)
