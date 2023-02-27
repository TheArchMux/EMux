(defun wymux/find-exheres ()
  "Find exheres in exheres-directory."
  (interactive)
  (let* ((exheres-file (read-from-minibuffer "Exheres to locate: "))
	 (find-args (concat "-name " exheres-file "*.ex*")))
    (find-dired exheres-directory find-args)))

(defun wymux/travel-local-exherbo ()
  "Local compressed directory."
  (interactive)
  (let* ((package-path (file-name-directory (buffer-file-name)))
	 (package-category (replace-regexp-in-string "/home/wymux/Internet/Git/Exherbo/\\w+.\\w+/packages/" "" package-path))
	 (package-compressed-path (concat "~/Internet/Compressed/Package/Exherbo/" package-category)))
    (if (not (file-directory-p package-compressed-path))
	(make-directory package-compressed-path t))
    (dired package-compressed-path)))

(defun wymux/bump-exheres ()
  "Bump package."
  (interactive)
  (let ((file (file-name-nondirectory (dired-get-filename)))
	(new-version (read-from-minibuffer "Bump to: "))
	(version))
    (setq file (string-trim-right file ".exheres-0"))
    (setq version (string-trim-left file "[A-Za-z]+-"))
    (dired-do-rename-regexp version new-version)))

(defun wymux/find-exlib ()
  "Find exlib."
  (interactive)
  (find-name-dired  "/var/db/paludis/repositories/" (concat (thing-at-point 'word) "*.exlib")))

(defun wymux/exherbo ()
  "Exherbo function based on mode."
  (interactive)
  (cond
   ((derived-mode-p 'dired-mode)
    (wymux/bump-exheres))
   ((derived-mode-p 'exheres-mode)
    (wymux/find-exlib)))
  (wymux/find-exheres))
