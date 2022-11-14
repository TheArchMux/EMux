(define-key global-map (kbd "C-c m") nil)
(global-set-key (kbd "C-c m r")	'recompile)
(global-set-key (kbd "C-c m c")	'compile)

(add-hook 'compilation-finish-functions
  (lambda (buf str)
    (if (null (string-match ".*exited abnormally.*" str))
        ;;no errors, make the compilation window go away in a few seconds
        (progn
          (run-at-time
           "2 sec" nil 'delete-windows-on
           (get-buffer-create "*compilation*"))
          (message "No Compilation Errors!")))))


