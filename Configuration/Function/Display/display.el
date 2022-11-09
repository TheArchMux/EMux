(defun wymux/enable-dark-theme ()
  "Enable dark theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme 'lambda-dark)
  (load-theme wymux--theme t))

(defun wymux/enable-light-theme ()
  "Enable light theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme 'lambda-light)
  (load-theme wymux--theme t))
