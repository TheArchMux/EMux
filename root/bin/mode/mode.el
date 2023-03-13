(defun wymux/refresh-global-tempel-mode ()
  "Refresh `global-tempel-abbrev-mode'."
  (interactive)
  (global-tempel-abbrev-mode -1)
  (global-tempel-abbrev-mode 1))
