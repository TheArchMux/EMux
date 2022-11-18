(setq dired-listing-switches "-alb")
(setq dired-kill-when-opening-new-dired-buffer t)

(add-hook 'dired-mode-hook
	  (lambda ()
	    (dired-hide-details-mode)))

(defun wymux/dired-open()
  ""
  (interactive)
  (let* ((file (dired-get-filename))
	(ext (file-name-extension file)))
    (cond ((string= ext "pdf")
	   (call-process-shell-command (concat "llpp" " " file " &")))
	  ((string= ext "epub")
	   (call-process-shell-command (concat "llpp" " " file " &")))
	  ((string= ext "webm")
	   (call-process-shell-command (concat "mpv" " " file " &")))
	  ((string= ext "mkv")
	   (call-process-shell-command (concat "mpv" " " file " &")))
	  ((string= ext "html")
	   (call-process-shell-command (concat "firefox" " " file " &"))))))

