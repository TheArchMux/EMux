(setq no-littering-etc-directory
      (expand-file-name "config/var/no-littering/etc/" user-emacs-directory))
(setq no-littering-var-directory
      (expand-file-name "config/var/no-littering/var/" user-emacs-directory))
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/compat/")
(load-file "~/Internet/Git/Emacs/Utility/no-littering.git/no-littering.el")
(require 'no-littering)

(set-face-attribute 'default nil :family  "MonoLisa" :height 100 :weight 'normal)
(setq-default line-spacing 0.20)

(add-to-list 'load-path "~/Internet/Git/Emacs/Theme/tao-theme-emacs.git/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/Theme/tao-theme-emacs.git/")

(add-to-list 'load-path "~/Internet/Git/Emacs/Theme/tok-theme.git/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/Theme/tok-theme.git/")

(setq wymux--light-theme 'tok)
(setq wymux--dark-theme 'tao-yin)

(setq tao-theme-use-boxes nil)

(setq wymux--theme wymux--light-theme)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 0)
(recentf-mode 1)

(global-font-lock-mode 1)

(defun wymux/disable-bold ()
  "Disable bold."
  (set-face-bold 'bold nil))

(defun wymux/enable-dark-theme ()
  "Enable dark theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme wymux--dark-theme)
  (load-theme wymux--theme t))

(defun wymux/enable-light-theme ()
  "Enable light theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme wymux--light-theme)
  (load-theme wymux--theme t))

(wymux/enable-light-theme)
