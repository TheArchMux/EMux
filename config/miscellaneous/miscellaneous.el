(defun wymux/eshell ()
  "Unique eshell."
  (interactive)
  (eshell 'N))

(defun wymux/toggle-debug-on-error ()
  "Toggle 'debug-on-error'."
  (interactive)
  (if (eq debug-on-error t)
      (setq debug-on-error nil)
    (setq debug-on-error t)))
