(defun wymux/enable-dark-theme ()
  "Enable dark theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme 'tao-yin)
  (load-theme wymux--theme t))

(defun wymux/enable-light-theme ()
  "Enable light theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme 'tao-yang)
  (load-theme wymux--theme t))
