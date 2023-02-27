(defun wymux/term-below ()
  "Open `term' in window below."
  (interactive)
  (split-window-vertically)
  (windmove-down)
  (wymux/eshell))

(defun wymux/term-above ()
  "Open `term' in window above."
  (interactive)
  (split-window-vertically)
  (wymux/eshell))

(defun wymux/term-left ()
  "Open `term' in window left."
  (interactive)
  (split-window-horizontally)
  (wymux/eshell))

(defun wymux/term-right ()
  "Open `term' in window right."
  (interactive)
  (split-window-horizontally)
  (windmove-right)
  (wymux/eshell))
