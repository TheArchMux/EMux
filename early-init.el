(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/compat/")
(require 'compat)

(setq no-littering-etc-directory
      (expand-file-name "No-Littering/Config/" user-emacs-directory))
(setq no-littering-var-directory
      (expand-file-name "No-Littering/Data/" user-emacs-directory))

(load-file "~/Internet/Git/Emacs/Utility/no-littering.git/no-littering.el")

(require 'no-littering)

(setq wymux--theme 'brutalist)

(set-face-attribute 'default nil :family  "Iosevka" :height 120 :weight 'normal)
(set-face-attribute 'variable-pitch nil :family "Iosevka" :height 1.0)
(set-face-attribute 'fixed-pitch nil :family "Iosevka" :height 1.0)
(set-face-attribute 'mode-line nil :font "Iosevka" :height 120)
(set-face-attribute 'mode-line-buffer-id nil :font "Iosevka" :height 120)
(set-face-attribute 'mode-line-emphasis nil :font "Iosevka" :height 120)
(set-face-attribute 'minibuffer-prompt nil :font "Iosevka" :height 120)
(set-face-attribute 'feebleline-dir-face nil :font "Iosevka" :height 120)

(add-to-list 'load-path "~/Internet/Git/Emacs/Theme/brutalist-theme.el.git/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/Theme/brutalist-theme.el.git/")

(load-theme wymux--theme t)
(setq window-divider-default-places t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 0)
(recentf-mode 1)

(setq initial-buffer-choice 'recentf-open-more-files)
(setq wymux--light-theme 'brutalist)
(setq wymux--dark-theme 'brutalist-dark) 
(global-font-lock-mode -1)
