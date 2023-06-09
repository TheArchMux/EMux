;; Editing

(global-set-key (kbd "C-c d w") 'kill-whole-line)
(global-set-key (kbd "C-c d d") 'duplicate-dwim)

;; Filter

(global-set-key (kbd "C-c s o") 'occur)

;; Find

(global-set-key (kbd "C-c f p") 'ffap)
(global-set-key (kbd "C-c f r") 'wymux/recentf-find)
(global-set-key (kbd "C-c f t") 'wymux/find-file-subdirectory)

;; Non-editing programs

(global-set-key (kbd "C-c i") 'ibuffer)
(global-set-key (kbd "C-c p c") 'compile)
(global-set-key (kbd "C-c p d") 'wymux/document-read)
(global-set-key (kbd "C-c p e") 'emms)
(global-set-key (kbd "C-c p g") 'gnus)
(global-set-key (kbd "C-c p m") 'mh-rmail)
(global-set-key (kbd "C-c p t") 'emms-play-directory-tree)
(global-set-key (kbd "C-c p s") 'wymux/eshell)
(global-set-key (kbd "C-c p w") 'wymux/firefox)

;; Navigation

(global-set-key (kbd "C--") 'wymux/backward-whitespace)
(global-set-key (kbd "C-=") 'forward-whitespace)

(global-set-key (kbd "C-c g c") 'hop-char)
(global-set-key (kbd "C-c g l") 'hop-line)
(global-set-key (kbd "C-c g s") 'hop-line-skip-whitespace)
(global-set-key (kbd "C-c g w") 'hop-word)

