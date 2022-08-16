(defun archmux/magit-status-other-frame ()
  "Call `magit-status' in another frame."
  (interactive)
  (select-frame (make-frame-command))
  (magit-status)
  (delete-other-windows)
  (local-set-key (kbd "q") 'delete-frame))

