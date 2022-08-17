(defun archmux/kill-buffer-and-frame ()
  "Kill current buffer and totality of frame."
  (interactive)
  (kill-this-buffer)
  (delete-frame))

(defun archmux/magit-status-other-frame ()
  "Call `magit-status' in another frame."
  (interactive)
  (when (magit-git-dir)
      (progn
	(select-frame (make-frame-command))
	(magit-status)
	(delete-other-windows)
	(local-set-key (kbd "q") 'archmux/kill-buffer-and-frame))))

(add-hook 'after-save-hook 'archmux/magit-status-other-frame)

