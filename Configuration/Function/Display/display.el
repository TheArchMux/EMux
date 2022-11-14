(defun wymux/enable-dark-theme ()
  "Enable dark theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme wymux--dark-theme)
  (load-theme wymux--theme t))

(defun wymux/enable-light-theme ()
  "Enable light theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme wymux--light-theme)
  (load-theme wymux--theme t))
