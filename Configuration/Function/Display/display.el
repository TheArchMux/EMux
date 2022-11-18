(defun wymux/disable-bold ()
  "Remove bold."
  (mapc (lambda (face)
        (when face
          (set-face-bold-p face nil)))
      (face-list)))

(defun wymux/enable-dark-theme ()
  "Enable dark theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme wymux--dark-theme)
  (load-theme wymux--theme t)
  (wymux/disable-bold))

(defun wymux/enable-light-theme ()
  "Enable light theme."
  (interactive)
  (disable-theme wymux--theme)
  (setq wymux--theme wymux--light-theme)
  (load-theme wymux--theme t)
  (wymux/disable-bold))

(wymux/disable-bold)
