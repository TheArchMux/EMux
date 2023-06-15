(defun wymux/phind-text () 
  "Query 'phind.com' with line's text.
Created: Tuesday, June-13-2023 18:04:45"
  (interactive)
  (let ((text (replace-regexp-in-string "[[:space:]]" "%20" (thing-at-point 'line))))
    (browse-url-firefox (concat "https://phind.com/search?q=" text "&source=searchbox"))))

(defun wymux/github-text ()
  "Query 'github.com' with line's text.
Created: Wednesday, June-14-2023 13:30:46"
  (interactive)
  (let ((text (replace-regexp-in-string "[[:space:]]" "+" (thing-at-point 'line))))
    (browse-url-firefox (concat "https://github.com/search?q=" text "&type=repositories&s=updated&o=desc"))))

(defun wymux/perplexity-text ()
  "Query 'perplexity.ai' with line's text.
Created: Wednesday, June-14-2023 18:51:37"
  (interactive)
  (let ((text (replace-regexp-in-string "[[:space:]]" "%20" (thing-at-point 'line))))
    (browse-url-firefox (concat "https://www.perplexity.ai/search?q=" text))))
