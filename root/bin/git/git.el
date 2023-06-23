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

(defun wymux/git-modified-files ()
  "List modified files of git repository.
Created: Friday, June-16-2023 11:09:12"
  (interactive)
  (let ((files))
  (with-temp-buffer
    (cd (file-name-parent-directory (string-trim (shell-command-to-string "git rev-parse --git-dir"))))
    (setq files (string-trim (shell-command-to-string "git ls-files -m"))))
  (get-buffer-create "Wymux git modified files")
  (switch-to-buffer "Wymux git modified files")
  (read-only-mode 1)
  (insert files)
  (local-set-key "c" 'wymux/git-stage-this-file)
  (local-set-key "g" 'wymux/git-status)
  (local-set-key "q" 'kill-this-buffer)))

(defun wymux/git-stage-this-file ()
  "Commit line's file.
Created: Friday, June-16-2023 11:43:12"
  (interactive)
  (let ((file (string-trim (thing-at-point 'line))))
    (shell-command (concat "git add " file))
    (mesage (concat ("Staged " file)))))

(defun wymux/git-status ()
  "Git status.
Created: Thursday, June-22-2023 20:26:53"
  (interactive)
  (erase-buffer)
  (insert (shell-command-to-string "git status")))
