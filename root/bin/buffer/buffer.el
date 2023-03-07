(defun wymux/kill-buffer-delete-window ()
  "Combine `kill-buffer' and `delete-window'."
  (interactive)
  (kill-this-buffer)
  (delete-window))
