(setq no-littering-etc-directory
      (expand-file-name "root/var/no-littering/etc/" user-emacs-directory))
(setq no-littering-var-directory
      (expand-file-name "root/var/no-littering/var/" user-emacs-directory))
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/compat/")
(load-file "~/Internet/Git/Emacs/Utility/no-littering.git/no-littering.el")
(require 'no-littering)


(set-face-attribute 'default nil :family "Iosevka" :height '110)

(global-font-lock-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tab-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

