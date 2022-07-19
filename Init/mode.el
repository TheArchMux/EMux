 (setq no-littering-etc-directory
	(expand-file-name "no-littering/etc/" user-emacs-directory))
 (setq no-littering-var-directory
	(expand-file-name "no-littering/var/" user-emacs-directory))

(require 'dired)
(require 'exheres-mode-autoloads)
(require 'gnus)
(require 'eshell)
(require 'info)
(require 'magit)
(require 'mini-frame)
(require 'no-littering)
(require 'org)
(require 'ryo-modal)

(add-hook 'dired-mode-hook	'ryo-modal-mode)
(add-hook 'org-mode-hook	'ryo-modal-mode)
(add-hook 'prog-mode-hook	'ryo-modal-mode)

(add-hook 'find-file-hook	'archmux/append-to-project-file)

;; Enable mode

(global-hl-line-mode)
(electric-pair-mode)
(mini-frame-mode)
(show-paren-mode)

;; Ryo mode

(setq initial-major-mode 'ryo-modal-mode)
(suppress-keymap ryo-modal-mode-map 't)

;; C mode

(load-file (concat user-emacs-directory "Mode/C/c.el"))

;; Dired mode

(load-file (concat user-emacs-directory "Mode/Dired/dired.el"))

;; Gnus mode

(load-file (concat user-emacs-directory "Mode/Gnus/gnus.el"))

;; Mail handler mode

(load-file (concat user-emacs-directory "Mode/Mh/mh.el"))



