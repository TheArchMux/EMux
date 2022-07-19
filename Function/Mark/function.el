(defun archmux/conditional-mark ()
  "Set mark when mark is unset."
  (interactive)
  (if (region-active-p)
	(pop-mark)
      (set-mark-command nil)
  )
)
