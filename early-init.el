(setq wymux--theme 'lambda-light)

(add-to-list 'load-path "~/Internet/Git/Emacs/Theme/lambda-themes.git/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/Theme/lambda-themes.git/")
(require 'lambda-themes)

(load-theme wymux--theme t)
(setq window-divider-default-places t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 0)
(recentf-mode 1)

(set-face-attribute 'default nil :family  "Iosevka" :height 105 :weight 'regular)
(setq-default line-spacing 0.00)
(setq initial-buffer-choice 'recentf-open-more-files)

(setq wymux--light-theme 'lambda-light)
(setq wymux--dark-theme 'lambda-dark)

(global-font-lock-mode -1)
