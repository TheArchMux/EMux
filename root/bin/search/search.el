(defcustom wymux--search-term nil
  "Current search term.")

(defun wymux/search ()
  "Search without editing interface.
Created: Thursday, March-09-2023 18:41:26
Revision: Thursday, March-09-2023 22:03:08"
  (interactive)
  (let ((search-term (read-from-minibuffer "Search: " nil nil nil (wymux/extract-word-at-point))))
    (setq wymux--search-term search-term)
    (wymux/search-forward)))

(defun wymux/search-forward ()
  "Search next for 'wymux--search-term'.
Created: Thursday, March-09-2023 18:46:45"
  (interactive)
  (unless (boundp 'wymux--search-term)
    (wymux/search))
  (search-forward wymux--search-term nil t))

(defun wymux/search-backward ()
  "Search backward for 'wymux--search-term'.
Created: Thursday, March-09-2023 18:51:29"
  (interactive)
  (unless (boundp 'wymux--search-term)
    (wymux/search))
  (search-backward wymux--search-term nil t))
