;; Editing

(global-set-key (kbd "C-c d w") 'kill-whole-line)
(global-set-key (kbd "C-c d d") 'duplicate-dwim)

;; Filter

(global-set-key (kbd "C-c s o") 'occur)

;; Find

(global-set-key (kbd "C-c f p") 'wymux/find-file-at-point)
(global-set-key (kbd "C-c f r") 'wymux/recentf-find)
(global-set-key (kbd "C-c f t") 'wymux/find-file-subdirectory)

;; Non-editing programs

(global-set-key (kbd "C-c i") 'ibuffer)
(global-set-key (kbd "s-p c") 'compile)
(global-set-key (kbd "s-p d") 'wymux/document-read)
(global-set-key (kbd "s-p e") 'emms)
(global-set-key (kbd "s-p g") 'gnus)
(global-set-key (kbd "s-p m") 'mh-rmail)
(global-set-key (kbd "s-p t") 'emms-play-directory-tree)
(global-set-key (kbd "s-p s") 'wymux/eshell)
(global-set-key (kbd "s-p w") 'wymux/firefox)

;; Navigation

(global-set-key (kbd "C--") 'wymux/backward-whitespace)
(global-set-key (kbd "C-=") 'forward-whitespace)

(global-set-key (kbd "M-p c") 'hop-char)
(global-set-key (kbd "M-p l") 'hop-line)
(global-set-key (kbd "M-p s") 'hop-line-skip-whitespace)
(global-set-key (kbd "M-p w") 'hop-word)

;; Various

(global-set-key (kbd "C-,") 'hippie-completing-read)

(global-set-key (kbd "<f5>") 'kill-this-buffer)
