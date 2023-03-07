(defun wymux/make-directory ()
  "Create directory"
  (let ((dir (file-name-directory buffer-file-name)))
  (unless (file-exists-p dir)
      (make-directory dir t))))

(defun wymux/find-all ()
  "Find any file in ~."
  (interactive)
  (let ((regexp (concat "*" (read-from-minibuffer "Find: ") "*")))
    (find-name-dired "~" regexp)))

(defun wymux/read-only ()
  "Set file to read only."
  (interactive)
  (let ((file (buffer-file-name)))
    (set-file-modes file #o044)))
