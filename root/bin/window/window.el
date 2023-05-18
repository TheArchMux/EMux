(defun wymux/split-window-horizontally ()
  "Split horizontally then relocate point.
Created: Friday, May-12-2023 17:49:41"
  (interactive)
  (split-window-horizontally)
  (windmove-down))

(defun wymux/split-window-vertically ()
  "Split vertically then relocate point.
Created: Friday, May-12-2023 17:50:41"
  (interactive)
  (split-window-vertically)
  (windmove-right))

(defun wymux/update-window-modeline ()
  "Update the modeline color based on whether the current window is active."
  (interactive)
  (if (eq (selected-window) (frame-selected-window))
      (progn
	(set-face-background 'mode-line "black")
	(set-face-foreground 'mode-line "white"))))
