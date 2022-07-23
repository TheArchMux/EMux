(defun archmux/conditional-indent ()
  "Indent region when active. Otherwise indent with `tab-to-tab-stop'."
  (interactive)
  (let
      ((mark_position		(mark))
       (point_position		(point)))
    (if (not (region-active-p))
	(tab-to-tab-stop)
      (indent-region mark_position point_position)
      )
    )
  )

