(defun wymux/exwm-kill ()
  "Kill exwm and emacs."
  (interactive)
  (recentf-save-list)
  (emms-player-mpd-disconnect)
  (exwm-exit)
  (kill-emacs))
