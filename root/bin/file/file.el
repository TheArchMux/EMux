(defun wymux/goto-char ()
  "Go to char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Char: ")))
    (forward-char)
    (search-forward (char-to-string char))
    (backward-char)))

(defun wymux/find-all ()
  "Find any file in ~."
  (interactive)
  (let ((regexp (concat "*" (read-from-minibuffer "Find: ") "*")))
    (find-name-dired "~" regexp)))

(defun wymux/find-makefile ()
  "Find makefile"
  (interactive)
  (find-file "Makefile"))

(defun wymux/goto-char ()
  "Go to char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Char: ")))
    (forward-char)
    (search-forward (char-to-string char))
    (backward-char)))

(defun wymux/make-directory ()
  "Create directory"
  (let ((dir (file-name-directory buffer-file-name)))
    (unless (file-exists-p dir)
      (make-directory dir t))))

(defun wymux/recentf-find ()
  "Open recentf file."
  (interactive)
  (find-file (completing-read "Open recent: " recentf-list)))

(defun wymux/swap-line-down ()
  "Swap current line with next line."
  (kill-whole-line)
  (forward-line 1)
  (yank))

(defun wymux/swap-line-up ()
  "Swap current line with previous line."
  (kill-whole-line)
  (forward-line -1)
  (yank))

(defun wymux/swap-lines ()
  "Swap lines."
  (interactive)
  (cond
   ((eq current-prefix-arg nil)
    (wymux/swap-line-up))
   ((eq current-prefix-arg 1)
    (wymux/swap-line-down))))

(defun wymux/zap-backward-up-to-char ()
  "Inverse of `zap-up-to-char'.
Revised: Monday, March-13-2023 09:06:15"
  (interactive)
  (let ((char (read-char-from-minibuffer "Reverse zap: ")))
      (zap-up-to-char -1 char)))

(defun wymux/compile ()
  "`compile'
Created: Wednesday, March-08-2023 19:12:39"
  (interactive)
  (compile "make")
  (switch-to-buffer "*compilation*"))

(defun wymux/space-in-line-to-dash ()
  "Change space in line to dash.
Created: Wednesday, March-08-2023 20:16:33"
  (interactive)
  (save-excursion
    (let ((p1
	   (progn
	     (move-beginning-of-line 1)
	     (point)))
	  (p2
	   (progn
	     (move-end-of-line 1)
	     (point))))
      (narrow-to-region p1 p2)
      (move-beginning-of-line 1)
      (replace-regexp " " "-")
      (widen))))

(defun wymux/find-doas ()
  "Open file as doas.
Created: Friday, March-10-2023 14:42:23"
  (when (and (not (file-writable-p buffer-file-name))
	     (not (string-prefix-p "/doas:" buffer-file-name)))
    (setq buffer-file-name (concat "/doas:root@localhost:" buffer-file-name))
    (setq buffer-read-only nil)))

(defun wymux/determine-compression (file)
  "Return compression type of file.
Created: Tuesday, March-14-2023 09:00:38"
  (let ((extensions
	 '(("gz" . "gz")
	   ("zip" . "zip")
	   ("bz2" . "bzip")
	   ("xz" . "xz")
	   ("7z" . "p7zip")
	   ("rar" . "rar")))
	(file-ext (file-name-extension file)))
    (cdr (assoc file-ext extensions))))

(defun wymux/determine-decompression-binary (compression-ext)
  "Return compression type of file.
Created: Tuesday, March-14-2023 09:00:38"
  (let ((decompression-binary
	 '(("gz" . "bsdtar -xf ")
	   ("zip" . "unzip -d .")
	   ("bzip" . "bsdtar -xf ")
	   ("xz" . "bsdtar -xf ")
	   ("7z" . "7z x ")
	   ("rar" . "unrar x "))))
    (cdr (assoc compression-ext decompression-binary))))

(defun wymux/kill-file-path ()
  "Set path of `buffer-file-name' to kill-ring.
Created: Tuesday, March-14-2023 11:45:15"
  (interactive)
  (kill-new (buffer-file-name)))

