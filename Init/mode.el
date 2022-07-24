(setq no-littering-etc-directory
	(expand-file-name "no-littering/etc/" user-emacs-directory))
(setq no-littering-var-directory
	(expand-file-name "no-littering/var/" user-emacs-directory))

(require 'cc-mode)
(require 'conf-mode)
(require 'dired)
(require 'doneburn-theme)
(require 'exheres-mode-autoloads)
(require 'gnus)
(require 'gnus-agent)
(require 'gnus-group)
(require 'gnus-srvr)
(require 'esh-mode)
(require 'highlight-indent-guides)
(require 'info)
(require 'lambda-themes)
(require 'load-relative)
(require 'magit)
(require 'make-mode)
(require 'mini-frame)
(require 'no-littering)
(require 'org)
(require 'ryo-modal)
(require 'skeleton)
(require 'shell)
(require 'stimmung-themes)

(add-hook 'dired-mode-hook	'ryo-modal-mode)
(add-hook 'org-mode-hook	'ryo-modal-mode)
(add-hook 'prog-mode-hook	'ryo-modal-mode)
(add-hook 'prog-mode-hook	'highlight-indent-guides-mode)

(add-hook 'after-save-hook	'archmux/compile-when-config-dot-h)
(add-hook 'find-file-hook	'archmux/append-to-project-file)

;; Ryo mode

(setq initial-major-mode 'ryo-modal-mode)
(suppress-keymap ryo-modal-mode-map 't)

;; C mode

(load-file (concat user-emacs-directory "Mode/C/c.el"))

;; Dired mode

(load-file (concat user-emacs-directory "Mode/Dired/dired.el"))

;; Gnus mode

(load-file (concat user-emacs-directory "Mode/Gnus/gnus.el"))

;; Hightlight-indent-guides mode

(load-file (concat user-emacs-directory "Mode/Highlight-Indent-Guides/highlight-indent-guides.el"))

;; Enable mode

(global-hl-line-mode)
(electric-pair-mode)
(mini-frame-mode)
(show-paren-mode)
(scroll-bar-mode -1)
(tooltip-mode -1)

