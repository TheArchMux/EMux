(defun wymux/emms-play-find ()
  "Play track."
  (interactive)
  (setq regexp (read-regexp "Enter a regular expression: "))
    (emms-play-find "~/Media/Musica/" regexp))
