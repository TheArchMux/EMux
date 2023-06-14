(defun wymux/git-previous-commit-files ()
  "Previous commit's modified files.
Created: Tuesday, June-13-2023 18:48:54"
  (interactive)
  (string-trim (shell-command-to-string "git diff HEAD HEAD~1 --name-only")))

(defun wymux/insert-git-previous-commit-files ()
  "Insert `wymux/git-previous-commit-files'.
Created: Tuesday, June-13-2023 18:51:33"
  (interactive)
  (insert (file-name-directory (wymux/git-previous-commit-files))))

