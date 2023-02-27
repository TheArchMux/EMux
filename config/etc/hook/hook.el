(add-hook 'after-init-hook 'wymux/keywork)
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)
(add-hook 'after-save-hook 'wymux/byte-compile-emacs-file)
(add-hook 'after-save-hook 'wymux/save-buffer-compile-config-h)
(add-hook 'c-mode-hook 'c-toggle-auto-newline)
(add-hook 'c++-mode-hook 'wymux/c++-abbrev)
(add-hook 'find-file-hook 'wymux/doas-edit)
(add-hook 'find-file-not-found-functions 'archmux/find-file-create)
(add-hook 'ediff-after-quit-hook-internal 'winner-undo)
(add-hook 'emacs-lisp-mode-hook 'abbrev-mode)
(add-hook 'lisp-data-mode-hook 'abbrev-mode)
(add-hook 'eshell-load-hook 'eat-eshell-mode)
(add-hook 'eshell-mode-hook 'abbrev-mode)
(add-hook 'shell-mode-hook 'abbrev-mode)
 
(add-hook 'compilation-finish-functions
	  (lambda (buf str)
	    (if (null (string-match ".*exited abnormally.*" str))
		(progn
		  (run-at-time
		   "2 sec" nil 'delete-windows-on
		   (get-buffer-create "*compilation*"))
		  (message "No Compilation Errors!")))))

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))

(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))
