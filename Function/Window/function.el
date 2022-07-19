(defun archmux/copy-region-to-other-window ()
  "Copy region to other window and switch to window."
  (interactive)
  (kill-ring-save (mark) (point))
  (other-window 1)
  (insert "\n")
  (yank)
)
