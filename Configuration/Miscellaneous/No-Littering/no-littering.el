(add-to-list 'load-path "~/Internet/Git/Emacs/compat/")

 (setq no-littering-etc-directory
       	(expand-file-name "No-Littering/etc/" user-emacs-directory))
 (setq no-littering-var-directory
       	(expand-file-name "No-Littering/var/" user-emacs-directory))

(load "~/Internet/Git/Emacs/no-littering/no-littering.el")
