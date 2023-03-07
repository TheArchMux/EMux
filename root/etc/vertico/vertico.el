(setq vertico-count 8)
(setq vertico-grid-lookahead 50)
(setq vertico-grid-max-columns 35)
(setq vertico-grid-min-columns 5)
(setq vertico-grid-rows 5)

(vertico-mode 1)
(vertico-grid-mode -1)

(define-key vertico-grid-map (kbd "C-j") 'vertico-grid-left)
(define-key vertico-grid-map (kbd "C-k") 'vertico-next)
(define-key vertico-grid-map (kbd "C-l") 'vertico-previous)
(define-key vertico-grid-map (kbd "C-\;") 'vertico-grid-right)
