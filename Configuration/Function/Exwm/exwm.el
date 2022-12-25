(defun wymux/exwm-kill ()
  "Kill exwm and emacs."
  (interactive)
  (recentf-save-list)
  (emms-player-mpd-disconnect)
  (exwm-exit)
  (kill-emacs))

(defun wymux/term-below ()
  "Open `term' in window below."
  (interactive)
  (split-window-vertically)
  (windmove-down)
  (vterm))

(defun wymux/term-above ()
  "Open `term' in window above."
  (interactive)
  (split-window-vertically)
  (vterm))

(defun wymux/term-left ()
  "Open `term' in window left."
  (interactive)
  (split-window-horizontally)
  (vterm))

(defun wymux/term-right ()
  "Open `term' in window right."
  (interactive)
  (split-window-horizontally)
  (windmove-right)
  (vterm))
