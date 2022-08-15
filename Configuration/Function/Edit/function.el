(defun archmux/crontab-edit ()
  "Edit current user's crontab."
  (interactive)
  (with-editor-async-shell-command "crontab -e")
  )

(defun archmux/enclose-region ()
  "Enclose region with characters: parenthesis, brackets, or quotes."
  (interactive)
  (let ((encloser (read-char-from-minibuffer "Encloser of region: [b]rackets [p]arenthesis [q]uotes")))
    ))
