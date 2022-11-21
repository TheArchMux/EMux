(defun wymux/convert-declaration-to-prototype ()
  "Convert all declarations to prototypes."
  (interactive)
  (save-excursion
  (while 
  (search-forward ";" nil t)
  (backward-delete-char 1)
  (insert " {\n\t\n}"))))

(defun wymux/newline-parameter ()
  "Set each parameter on a newline."
  (interactive)
  (search-backward "(")
  (forward-char)
  (set-mark-command 1)
  (search-forward ")" nil t)
  (backward-char)
  (narrow-to-region (mark) (point))
  (beginning-of-line)
  (while
      (search-forward " " nil t)
    (newline))
  (widen)
  (c-indent-defun))
