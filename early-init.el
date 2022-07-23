(require 'cl-macs)

(setq package-enable-at-startup nil)

;; Theme

;; (load-file "~/.config/emacs/Init/theme.el")

;; Font

;; (set-face-attribute 'default nil :family "Sarasa Mono CL" :height 125)
(set-face-attribute 'default nil :family "Iosevka Comfy" :height 125)
;; (set-face-attribute 'default nil :family "Comic Code Ligatures" :height 100)

;; Appearance

(setq-default frame-inhibit-implied-resize t)
(setq-default inhibit-startup-screen t)
(setq-default inhibit-startup-message t)
(setq-default inhibit-splash-screen t)
(setq-default initial-scratch-message nil)

(set-fringe-mode 0)

;; No mode line

(setq-default mode-line-format nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
