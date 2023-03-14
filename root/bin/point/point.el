(defun wymux/extract-word-at-point ()
  "Extract word surrounding point."
  (interactive)
  (let ((bounds (bounds-of-thing-at-point 'symbol)))
    (when bounds
      (message (buffer-substring-no-properties (car bounds) (cdr bounds))))))
