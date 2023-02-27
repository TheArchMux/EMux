(defun wymux/insert-date ()
  "Insert date."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %A")))

(defun wymux/markdown-kill-code-segment-save ()
  "Save Markdown code segment to `kill-ring'."
  (interactive)
  (save-excursion
    (let ((p1))
      (search-backward "```")
      (next-line)
      (setq p1 (point))
      (search-forward "```")
      (previous-line)
      (kill-ring-save p1 (point)))))

(defun wymux/insert-a-z (&optional uppercase-p)
  "Insert alphabet vertically.
2023-02-20 Monday"
  (interactive "P")
  (let ((start-char (if uppercase-p 65 97)))
    (dotimes (-i 26)
      (insert (format "%c\n" (+ start-char -i))))))

(defun wymux/clear-function ()
  "Kill contents of c-function"
  (deactivate-mark t)
  (interactive)
  (let ((p1))
    (save-excursion
      (c-beginning-of-defun)
      (search-forward "{")
      (forward-char)
      (setq p1 (point))
      (c-end-of-defun)
      (search-backward "}")
      (backward-char)
      (kill-region p1 (point))
      (insert "\n")
      (previous-line))))

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

(defun wymux/copy-declaration-to-prototype ()
  "Copy function declaration to prototype."
  (interactive)
  (c-beginning-of-defun)
  (kill-whole-line))
