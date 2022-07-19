
(defun archmux/conditional-kill (&optional arg)
  "Kill region or line. Kills regions with `archmux/conditional-kill-region'."
  (interactive "P")
  (if (region-active-p)
    (archmux/conditional-kill-region)
    (kill-whole-line (prefix-numeric-value arg))
  )
)

(defun archmux/conditional-kill-region ()
  "Kill region for `archmux/conditional-kill'."
  (let
    (
      (start_position (mark))
      (end_position (point))
    )
    (kill-region start_position end_position)
  )
)

(defun archmux/kill-buffer-save ()
  "Save buffer as if killed, but do not kill it."
  (interactive)
  (let ((current_position (point)))
   (kill-region (point-min) (point-max))
   (yank)
   (goto-char current_position)
  )
)
