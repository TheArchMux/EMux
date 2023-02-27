(defun wymux/find-all ()
  "Find any file in ~."
  (interactive)
  (let ((name (read-from-minibuffer "File: ")))
    (find-name-dired "~" name)))

(defun archmux/find-file-create ()
  "Create directory when utilizing `find-file'."
  (let ((destination-file (file-name-directory buffer-file-name)))
    (if (not (file-exists-p destination-file))
	(make-directory destination-file t))))

(defun wymux/find-makefile ()
  "Open Makefile."
  (interactive)
  (find-file "Makefile"))

(defun wymux/find-tmp ()
  "Open /tmp/txt.txt."
  (interactive)
  (find-file-read-only "/tmp/txt.txt"))

(defun wymux/kill-ring-save-buffer ()
  "Yank buffer."
  (interactive)
  (save-excursion
    (kill-ring-save (point-min) (point-max))))

(defun wymux/recentf-find ()
  "Recent find."
  (interactive)
  (find-file (completing-read "File: " recentf-list)))

(defun wymux/insert-file-into-buffer ()
  "Insert file path into buffer."
  (interactive)
  (insert (read-file-name "File: ")))

(defun wymux/kill-path ()
  "Kill path."
  (interactive)
  (let ((path (expand-file-name (read-file-name "Path: "))))
    (kill-new path)))

(defun wymux/doas-edit ()
  "Elevate permissions with doas."
  (unless (file-writable-p buffer-file-name)
    (find-alternate-file (concat "/doas:root@localhost:" buffer-file-name))))

(defun wymux/byte-compile-emacs-file ()
  "Automatically byte compile."
  (interactive)
  (cond
   ((derived-mode-p 'emacs-lisp-mode)
    (progn
      (if (string-match ".config/emacs" (buffer-file-name))
	  (byte-compile-file (buffer-file-name)))))))

(defun wymux/save-buffer-compile-config-h ()
  "Execute make install when file is named 'config.h'"
  (interactive)
  (let ((current-file-name (file-name-nondirectory (buffer-file-name))))
    (if (string= current-file-name "config.h")
	(compile "doas make install"))))
 
