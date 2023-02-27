(defun wymux/kill-buffer ()
  "Kill entire buffer."
  (interactive)
  (mark-whole-buffer)
  (kill-region (point) (mark)))

(defun wymux/kill-current-buffer ()
  "Kill current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(defun wymux/kill-delete-buffer ()
  "Close and kill buffer."
  (interactive)
  (kill-buffer (current-buffer))
  (delete-window))
(defvar search-string nil
  "Text from `wymux/search-forward'")
