(defvar search-string nil
  "Text from `wymux/search-forward'")

(defun wymux/search-forward ()
  "Search forward with `search-string'."
  (interactive)
  (if (not (string-equal search-string "nil"))
      (search-forward search-string)
    (progn
  (let ((a-search-string (read-string "Search: ")))
    (setq search-string a-search-string)
    (search-forward search-string)))))

(defun wymux/search-backward ()
  "Search backward with `search-string'."
  (interactive)
  (if (not (string-equal search-string "nil"))
      (search-backward search-string)
    (progn
  (let ((a-search-string (read-string "Search: ")))
    (setq search-string a-search-string)
    (search-backward search-string)))))

(defun wymux/reset-search ()
  "Reset search."
  (interactive)
  (setq search-string (read-string "Search string: " search-string)))
