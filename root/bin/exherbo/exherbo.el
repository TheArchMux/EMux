(defcustom wymux-exheres-directory "~/Internet/Git/Exherbo/"
  "Directory of local exheres.")

(defcustom wymux-local-exherbo-directory "~/Internet/Compressed/Package/Exherbo/"
  "Directory of local exheres.")

(defcustom wymux-exheres-revision-p nil
  "Whether current exheres is revised version.")

(defvar wymux-exheres-category nil
  "Category.")

(defvar wymux-exheres-package nil
  "Package.")

(defvar wymux-exheres-version nil
  "Version.")

(defvar wymux-exheres-url nil
  "Url.")

(defvar wymux-exheres-new-url nil
  "Bump url.")

(defvar wymux-exheres-download-path nil
  "Download path.")

(defun wymux/exherbo-create-local-dir (category package)
  "Create local directory.
Created: Monday, March-13-2023 11:09:59"
  (let ((path (concat wymux-local-exherbo-directory category "/" package)))
    (when (not (file-exists-p path))
      (make-directory (expand-file-name path) t))))

(defun wymux/exherbo-get-version ()
  "Acquire version from file.
Created: Sunday, March-12-2023 22:02:55"
  (let* ((file (file-name-nondirectory (buffer-file-name)))
	 (file (string-trim-right file ".exheres-0"))
	 (version (string-trim-left file "[A-Za-z0-9-]+-")))
    (when (string-match "-r[0-9]" version)
      (progn
	(setq version (substring version nil (- (length version) 3)))
	(setq wymux-exherbo-revision-p t)))
    (setq wymux-exheres-version version)))

(defun wymux/exherbo-get-new-version ()
  "User supplied version.
Created: Monday, March-13-2023 09:26:32"
  (let ((nvers (read-from-minibuffer "New version: " wymux-exheres-version)))
    nvers))

(defun wymux/find-exheres ()
  "Find exheres in 'exheres-directory'.
Created: Friday, March-10-2023 11:39:44
Revised: Friday, March-10-2023 13:14:41"
  (interactive)
  (let ((regexp (string-trim (read-regexp "Exheres: "))))
  (find-name-dired wymux-exheres-directory (concat "*" regexp "*"))))

(defun wymux/exherbo-ediff ()
  "Ediff between current buffer and other version automatically.
Created: Friday, March-10-2023 12:01:18"
  (interactive)
  (save-excursion
      (let* ((cur-file (file-name-nondirectory (buffer-file-name)))
	     (cur-dir-v (format "%s" (nth 9 (split-string (buffer-file-name) "/"))))
	     (other-dir (delete cur-dir-v (delete "." (delete ".." (directory-files "../../.")))))
	     (dir (completing-read "Diff diretory" other-dir)))
	(ediff-files (replace-regexp-in-string cur-dir-v dir (buffer-file-name)) cur-file))))

(defun wymux/exherbo-get-url (category package)
  "Acquire url for package.
Created: Saturday, March-11-2023 08:53:57
Revised: Sunday, March-12-2023 21:03:49"
  (let ((urls))
    (with-temp-buffer
      (shell-command (concat "doas cave show -k DOWNLOADS "
			     (shell-quote-argument category)
			     "/"
			     (shell-quote-argument package)) (current-buffer))
      (search-forward "Summary")
      (while (re-search-forward "\\(https?://\\|www\\.\\)[^\s]+\\(\s\\|$\\)" nil t)
	(setq urls (string-trim (match-string 0)))))
    urls))

(defun wymux/exherbo-acquire-category-package-exheres ()
  "Acquire category/package from current exheres.
Created: Saturday, March-11-2023 21:26:08"
  (let* ((cut-str "packages/")
	 (cut-path (buffer-file-name))
	 (cut-dir (file-name-nondirectory (buffer-file-name)))
	 (i1 (+ 9 (string-match cut-str cut-path)))
	 (i2 (- (string-match cut-dir cut-path) 1))
	 (short-str (substring cut-path i1 i2))
	 (exlist (split-string short-str "/")))
    exlist))

(defun wymux/exherbo ()
  "Primary exherbo function.
Created: Sunday, March-12-2023 21:43:25"
  (interactive)
  (let ((url (wymux/exherbo-get-url wymux-exheres-category wymux-exheres-package)))
    (wymux/exherbo-create-local-dir wymux-exheres-category wymux-exheres-package)
    (setq wymux-exheres-url url)))

(defun wymux/exherbo-download-package ()
  "Download compressed file of current exheres.
Created: Monday, March-13-2023 11:25:58"
  (interactive)
  (let* ((nvers (wymux/exherbo-get-new-version))
	 (path (concat wymux-exheres-download-path "/" nvers "/"))
	 (url (replace-regexp-in-string wymux-exheres-version nvers wymux-exheres-url))
	 (file (concat path (file-name-nondirectory url))))
    (make-directory path t)
    (url-copy-file url file)))

(defun wymux/exherbo-set-category-package ()
  "Set 'wymux-exheres-category' and 'wymux-exheres-package'.
Created: Monday, March-13-2023 11:57:05"
  (let ((plist (wymux/exherbo-acquire-category-package-exheres)))
    (setq wymux-exheres-category (nth 0 plist))
    (setq wymux-exheres-package (nth 1 plist))))

(defun wymux/bump-exheres ()
  "Bump current exheres.
Created: Monday, March-13-2023 12:15:31"
  (interactive)
  (wymux/exherbo-get-version)
  (let ((nvers (wymux/exherbo-get-new-version))
	(file (file-name-nondirectory (buffer-file-name))))
    (rename-file file (replace-regexp-in-string wymux-exheres-version nvers file))))

(defun wymux/exherbo-get-new-version-url (version)
  "Set 'wymux-exheres-new-url'.
Created: Monday, March-13-2023 12:37:56"
  (setq wymux-exheres-new-url (replace-regexp-in-string wymux-exheres-version version wymux-exheres-url)))

(defun wymux/exherbo-set-download-path ()
  "Set 'wymux-exheres-download-path'.
Created: Monday, March-13-2023 12:48:08"
  (setq wymux-exheres-download-path
	(concat wymux-local-exherbo-directory wymux-exheres-category "/" wymux-exheres-package)))

(defun wymux/exheres-mode-entrance ()
  "`exheres-mode' initialization functions.
Created: Monday, March-13-2023 15:34:43"
  (interactive)
  (wymux/exherbo-set-category-package)
  (wymux/exherbo-get-version)
  (wymux/exherbo)
  (wymux/exherbo-set-download-path)
  (wymux/keymux-exheres-mode-map))

(defun wymux/exherbo-travel-local-compressed ()
  "Travel to local compressed file.
Created: Monday, March-13-2023 15:53:14"
  (interactive)
  (dired (concat wymux-local-exherbo-directory wymux-exheres-category "/" wymux-exheres-package)))

(defun wymux/find-exlib ()
  "Find exlib.
Created: Tuesday, March-14-2023 09:30:55"
  (interactive)
  (let ((exlib-directory "/var/db/paludis/repositories/")
	(exlib (concat "*" (wymux/extract-word-at-point) "*" )))
    (find-name-dired exlib-directory exlib)))
