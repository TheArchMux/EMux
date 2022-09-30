(defun wimux/exwm-kill ()
  "Kill exwm and emacs."
  (interactive)
  (recentf-save-list)
  (exwm-exit)
  (kill-emacs))
