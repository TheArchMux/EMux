(defun wymux/lower-volume ()
  "Lower volume."
  (interactive)
  (start-process "Lower volume" nil "amixer" "sset" "Master" "2%-"))

(defun wymux/toggle-volume ()
  "Raise volume."
  (interactive)
  (start-process "Toggle volume" nil "amixer" "sset" "Master" "toggle"))

(defun wymux/raise-volume ()
  "Raise volume."
  (interactive)
  (start-process "Raise volume" nil "amixer" "sset" "Master" "2%+"))

(global-set-key (kbd "C-c a e") 'eshell)
(global-set-key (kbd "C-c a h") 'man)
(global-set-key (kbd "C-c a m") 'mh-rmail)
(global-set-key (kbd "C-c f e") 'wymux/find-exheres)
(global-set-key (kbd "C-c f n") 'find-name-dired)
(global-set-key (kbd "C-c f r") 'recentf-open-more-files)
(global-set-key (kbd "C-c f p") 'find-file-at-point)
(global-set-key (kbd "C-c w s") 'window-swap-states)
(global-set-key (kbd "<f7>") 'wymux/enable-light-theme)
(global-set-key (kbd "<f8>") 'wymux/enable-dark-theme)
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "M-[") 'hippie-completing-read)
(global-set-key (kbd "M-z") 'zap-up-to-char)

(global-set-key (kbd "<XF86AudioLowerVolume>") 'wymux/lower-volume)
(global-set-key (kbd "<XF86AudioRaiseVolume>") 'wymux/raise-volume)
(global-set-key (kbd "<XF86AudioMute>") 'wymux/toggle-volume)

;;(define-key dired-mode-map (kbd "C-d") 'wymux/dired-open)
;;define-key exlib-mode-map (kbd "C-c m d") 'exheres-add-dependency)
;;(define-key exlib-mode-map (kbd "C-c m o") 'exheres-add-option)
;;(define-key exheres-mode-map (kbd "C-c m d") 'exheres-add-dependency)
;;(define-key exheres-mode-map (kbd "C-c m o") 'exheres-add-dependency)
