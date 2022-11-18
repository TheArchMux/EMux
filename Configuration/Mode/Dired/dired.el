(setq dired-listing-switches "-alb")
(setq dired-kill-when-opening-new-dired-buffer t)

(add-hook 'dired-mode-hook
	  (lambda ()
	    (dired-hide-details-mode)))

(defun wymux/dired-ediff-mark ()
  "Ediff marked dired file."
  (interactive)
  (let* ((files (dired-get-marked-files)))
    (if (<= (length files) 2)
	(let ((file1 (car files))
	      (file2 (if (cdr files)
			 (cadr files)
		       (read-file-name
			"file: "
			(dired-dwim-target-directory)))))
	  (if (file-newer-than-file-p file1 file2)
	      (ediff-files file2 file1)
	    (ediff-files file1 file2))
      (error "Only 2 files can be marked.")))))

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

