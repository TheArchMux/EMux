(setq user-emacs-directory "~/.config/emacs/")

;; Bootstrap straight.el

(load-file (concat user-emacs-directory "Init/Straight/straight.el"))

;; Download and compile packages

(load-file (concat user-emacs-directory "Init/Package/package.el"))

;; Load theme

(load-file "~/.config/emacs/Init/theme.el")

;; Function

(load-file (concat user-emacs-directory "Function/load.el"))

;; Init

(load-file (concat user-emacs-directory "Init/load.el"))

