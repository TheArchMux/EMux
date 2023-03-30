(defun wymux/extract-word-at-point ()
  "Extract word surrounding point."
  (let ((bounds (bounds-of-thing-at-point 'symbol)))
    (when bounds
      (message (buffer-substring-no-properties (car bounds) (cdr bounds))))))

(defun wymux/extract-url-at-point ()
  "Extract url at current point.
Created: Wednesday, March-15-2023 07:57:10"
  (let ((bounds (bounds-of-thing-at-point 'url)))
    (when bounds
      (message (buffer-substring-no-properties (car bounds) (cdr bounds))))))

(defun wymux/extract-sexp-at-point ()
  "Extract sexp at current point.
Created: Thursday, March-30-2023 16:51:24"
  (interactive)
  (let ((bound (bounds-of-thing-at-point 'sexp)))
    (when bound
      (message (buffer-substring-no-properties (car bound) (cdr bound))))))
