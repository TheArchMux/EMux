(setq ediff-split-window-function 'split-window-horizontally)

(winner-mode)
(add-hook 'ediff-after-quit-hook-internal 'winner-undo)
