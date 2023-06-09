(defun wymux/c-function-to-header ()
  "Every function into header file.
Created: Friday, June-09-2023 17:36:14"
  (interactive)
  (let ((hfile (read-from-minibuffer "Header file: " (concat (file-name-base (buffer-file-name)) ".h")))
	(n1) (n2) (n3))
      (beginning-of-buffer)
      (while (not (= (point) (point-max)))
	(setq n1 (treesit-node-text (treesit-node-child (treesit-defun-at-point) 0) t))
	(setq n2 (treesit-node-text (treesit-node-child (treesit-defun-at-point) 1) t))
	(setq n3 (treesit-node-text (treesit-node-child (treesit-defun-at-point) 2) t))
	(append-to-file (concat n1 " " n2 " " n3 ";\n") nil hfile)
	(treesit-end-of-defun)
	(next-line))))
