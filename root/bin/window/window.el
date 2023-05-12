(defun wymux/split-move-horizontally ()
  "Split horizontally then relocate point.
Created: Friday, May-12-2023 17:49:41"
  (interactive)
  (split-window-horizontally)
  (windmove-down))

(defun wymux/split-move-vertically ()
  "Split vertically then relocate point.
Created: Friday, May-12-2023 17:50:41"
  (interactive)
  (split-window-vertically)
  (windmove-right))
