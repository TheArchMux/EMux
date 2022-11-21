(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/compat/")
(require 'compat)

(setq no-littering-etc-directory
      (expand-file-name "No-Littering/Config/" user-emacs-directory))
(setq no-littering-var-directory
      (expand-file-name "No-Littering/Data/" user-emacs-directory))

(load-file "~/Internet/Git/Emacs/Utility/no-littering.git/no-littering.el")

(require 'no-littering)

(setq wymux--theme 'lambda-light)

(set-face-attribute 'default nil :family  "Cozette" :height 90 :weight 'normal)
(set-face-attribute 'fixed-pitch nil :family "Cozette" :height 1.0)
(set-face-attribute 'minibuffer-prompt nil :font "Cozette" :height 80)
(set-face-attribute 'variable-pitch nil :family "Cozette" :height 1.0)

(add-to-list 'load-path "~/Internet/Git/Emacs/Theme/brutalist-theme.el.git/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/Theme/brutalist-theme.el.git/")

(add-to-list 'load-path "~/Internet/Git/Emacs/Theme/lambda-themes.git/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/Theme/lambda-themes.git/")

(load-theme wymux--theme t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 0)
(recentf-mode 1)

(setq initial-buffer-choice 'recentf-open-more-files)

(setq wymux--light-theme 'lambda-light)
(setq wymux--dark-theme 'brutalist-dark) 

(global-font-lock-mode -1)
