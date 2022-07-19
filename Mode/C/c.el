(defun archmux/c-default-style ()
  "Set default style to linux."
  (c-set-style "linux")
)

(add-hook 'c-mode-hook 'archmux/c-default-style)
