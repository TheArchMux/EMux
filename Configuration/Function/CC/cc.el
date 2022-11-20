(defun wymux/convert-declaration-to-prototype ()
  "Convert all declarations to prototypes."
  (interactive)
  (save-excursion
  (while 
  (search-forward ";" nil t)
  (backward-delete-char 1)
  (insert " {\n\t\n}"))))
