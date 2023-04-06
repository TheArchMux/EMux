(defun wymux/kill-compile (buf str)
  "Kill *compilation*
Created: Thursday, March-30-2023 18:03:10"
  (when (string-match "finished" str)
    (previous-buffer)))
