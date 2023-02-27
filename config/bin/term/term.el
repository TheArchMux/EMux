(defun wymux/eshell ()
  "Open unique eshell."
  (interactive)
  (eshell 'N))

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

(defun wymux/term (arg)
  "Terminal"
  (interactive "p")
  (cond
   ((eq (1- arg) 0)
    (wymux/term-below))
   ((eq (1- arg) 1)
    (wymux/term-left))
   ((eq (1- arg) 2)
    (wymux/term-above))
   ((eq (1- arg) 3)
    (wymux/term-right))))
