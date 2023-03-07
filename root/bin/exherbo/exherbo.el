(defun wymux/bump-exheres ()
  "Bump exheres."
  (interactive)
  (cond
   ((derived-mode-p 'dired-mode)
    (wymux/dired-bump-exheres))))

(defun wymux/dired-bump-exheres ()
  "Bump package in dired."
  (let ((file (file-name-nondirectory (dired-get-filename)))
	(new-version (read-from-minibuffer "Bump to: "))
	(version))
    (setq file (string-trim-right file ".exheres-0"))
    (setq version (string-trim-left file "[A-Za-z]+-"))
    (dired-do-rename-regexp version new-version)))

