
(defun wymux/search ()
  "Search in browser."
  (interactive)
  (let ((query))
    (setq query (read-from-minibuffer "Search: "))
    (start-process "Search" nil "firefox" (concat "https://searx.be/search?q=" query))))

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
  (setq search-string (read-string "Search string: "))
  (wymux/search-forward))

(defun wymux/goto-back-char ()
  "Goto char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Goto char: " nil 'read-char-history)))
    (search-backward (char-to-string char))))

(defun wymux/goto-back-upto-char ()
  "Goto char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Goto char: " nil 'read-char-history)))
    (search-backward (char-to-string char))
    (forward-char 1)))

(defun wymux/goto-char ()
  "Goto char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Goto char: " nil 'read-char-history)))
    (search-forward (char-to-string char))))

(defun wymux/goto-upto-char ()
  "Goto char."
  (interactive)
  (let ((char (read-char-from-minibuffer "Goto char: " nil 'read-char-history)))
    (search-forward (char-to-string char))
    (backward-char 1)))
