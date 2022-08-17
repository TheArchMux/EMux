(defun archmux/kill-buffer-and-frame ()
  "Kill current buffer and totality of frame."
  (interactive)
  (kill-this-buffer)
  (delete-frame))

(defun archmux/magit-status-other-frame ()
  "Call `magit-status' in another frame."
  (interactive)
  (select-frame (make-frame-command))
  (magit-status)
  (delete-other-windows)
  (local-set-key (kbd "q") 'delete-frame))

