(setq wymux-scratch-buffer '("c" "cpp" "rst" "py" "go" "English" "Temporary"))

(defun wymux/kill-buffer-delete-window ()
  "Combine `kill-buffer' and `delete-window'."
  (interactive)
  (kill-this-buffer)
  (delete-window))

(defun wymux/quote-symbol ()
  "Quote symbol at point.
Created: Tuesday, March-14-2023 11:53:55"
  (interactive)
  (let ((symbol (wymux/extract-word-at-point)))
    (next-line -1)
    (replace-regexp symbol (concat "\"" symbol "\""))))

(defun wymux/single-quote-symbol ()
  "Quote symbol with single quote.
Created: Thursday, March-16-2023 10:09:32"
  (interactive)
  (let ((symbol (wymux/extract-word-at-point)))
    (next-line -1)
    (replace-regexp symbol (concat "\'" symbol "\'"))))

(defun wymux/kill-whole-buffer ()
  "Yank buffer into kill-ring.
Created: Tuesday, March-14-2023 12:39:29"
  (interactive)
  (let ((p1 (point-min))
	(p2 (point-max)))
    (kill-ring-save p1 p2)))

(defun wymux/kill-all-buffer ()
  "Kill all other buffers.
Created: Tuesday, March-14-2023 18:45:04"
  (interactive)
  (mapc 'kill-buffer (cdr (buffer-list))))

(defun wymux/quote-url ()
  "Quote url at point.
Created: Wednesday, March-15-2023 07:58:40"
  (interactive)
  (let ((url (wymux/extract-url-at-point)))
    (next-line -1)
    (replace-regexp (regexp-quote url) (concat "\"" url "\""))))

(defun wymux/switch-to-scratch ()
  "Switch to custom scratch buffer.
Created: Thursday, March-16-2023 10:38:51"
  (interactive)
  (let ((sractch (completing-read "Scratch: " wymux-scratch-buffer)))
    (switch-to-buffer (concat "sratch." sractch))))
