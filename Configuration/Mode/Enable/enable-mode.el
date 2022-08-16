(display-time-mode	1)
(electric-pair-mode	1)
(global-hl-line-mode	1)
(save-place-mode	1)
(savehist-mode		1)
(show-paren-mode	1)

(load-file "~/Internet/Git/Emacs/slow-keys/slow-keys.el")

(slow-keys-mode)

(add-to-list 'slow-keys-prohibited-command 'magit-status)
