(define-key global-map (kbd "C-c m") nil)
(global-set-key (kbd "C-c m r")	'recompile)
(global-set-key (kbd "C-c m c")	'compile)

(add-to-list 'display-buffer-alist '("\*compilation\*" display-buffer-in-side-window
				     (side . bottom)
				     (slot . 1)
				     (window-height . 0.35)))


