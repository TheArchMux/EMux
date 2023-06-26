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
  (erase-buffer)
  (insert (shell-command-to-string "git ls-files -m")))

(defun wymux/git-buffer-init ()
  "Initiate Wymux git buffer
Created: Friday, June-23-2023 13:04:44"
  (interactive)
  (wymux/change-git-buffer)
  (local-set-key "g" 'wymux/git-status)
  (local-set-key "m" 'wymux/git-modified-files)
  (local-set-key "s" 'wymux/git-stage-this-file)
  (local-set-key "u" 'wymux/git-unstage)
  (local-set-key "q" 'kill-this-buffer))
  
(defun wymux/git-stage-this-file ()
  "Commit line's file.
Created: Friday, June-16-2023 11:43:12"
  (interactive)
  (let ((file (string-trim (thing-at-point 'filename))))
    (shell-command (concat "git add " file))
    (message (concat "Staged " file)))
  (wymux/git-status))

(defun wymux/git-status ()
  "Git status.
Created: Thursday, June-22-2023 20:26:53"
  (interactive)
  (erase-buffer)
  (insert (shell-command-to-string "git status")))

(defun wymux/git-unstage ()
  "Git unstage.
Created: Friday, June-23-2023 12:51:19"
  (interactive)
  (let ((file (string-trim (thing-at-point 'line))))
    (shell-command (concat "git restore --staged " file))
    (message (concat "Unstaged" file)))
  (wymux/git-status))

(defun wymux/change-git-buffer ()
  "Change to `Wymux git buffer'
Created: Friday, June-23-2023 12:56:50"
  (get-buffer-create "Wymux git")
  (switch-to-buffer "Wymux git")
  (cd (file-name-parent-directory (string-trim (shell-command-to-string "git rev-parse --git-dir")))))
