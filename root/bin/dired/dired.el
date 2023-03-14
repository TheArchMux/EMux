(defun wymux/dired-extract ()
  "Perform extraction on file.
Created: Tuesday, March-14-2023 08:58:09"
  (interactive)
  (let* ((file (dired-get-filename))
	 (compression (wymux/determine-compression file))
	  (binary (wymux/determine-decompression-binary compression)))
    (shell-command (concat binary file))
    (dired-revert)))

