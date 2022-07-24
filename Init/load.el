;; Initate other modes

(load-file (concat user-emacs-directory "Init/mode.el"))

;; Disable map of modes

(load-file (concat user-emacs-directory "Init/disable-map.el"))

;; Authentication

(load-file (concat user-emacs-directory "Init/Authentication/authentication.el"))

;; Backup

(load-file (concat user-emacs-directory "Init/backup.el"))

;; Keymap

(load-file (concat user-emacs-directory "Keymap/load.el"))

;; Global map

(load-file (concat user-emacs-directory "Init/global-map.el"))

;; Load Ryo mode keys

(load-file (concat user-emacs-directory "Ryo/load-key.el"))
(load-file (concat user-emacs-directory "Ryo/load-mode.el"))

;; Org mode

(load-file (concat user-emacs-directory "Mode/Org/load.el"))

;; Visual adjustments

(load-file (concat user-emacs-directory "Init/visual.el"))

