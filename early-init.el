(add-to-list 'load-path "~/Internet/Git/Emacs/Theme/tao-theme-emacs.git/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/Theme/tao-theme-emacs.git/")
(require 'tao-theme)

(setq tao-theme-use-sepia nil)
(load-theme 'tao-yang t)
(setq window-divider-default-places t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 0)
(recentf-mode 1)

(set-face-attribute 'default nil :family  "Iosevka" :height 120 :weight 'regular)
(setq-default line-spacing 0.15)
(setq initial-buffer-choice 'recentf-open-more-files)
 
(global-font-lock-mode 1)
