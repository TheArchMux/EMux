(recentf-mode 1)

(defun wymux/recentf-find ()
    "Open recentf file."
    (interactive)
    (find-file (completing-read "Open recent: " recentf-list)))
