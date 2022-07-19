;; Initate other modes

(load-file (concat user-emacs-directory "Init/mode.el"))

;; Disable map of modes

(load-file (concat user-emacs-directory "Init/disable-map.el"))

;; Backup

(load-file (concat user-emacs-directory "Init/backup.el"))

;; Global map

(load-file (concat user-emacs-directory "Init/global-map.el"))

;; Load Ryo mode keys

(load-file (concat user-emacs-directory "Ryo/load-key.el"))
(load-file (concat user-emacs-directory "Ryo/load-mode.el"))

;; Visual adjustments

(load-file (concat user-emacs-directory "Init/visual.el"))

