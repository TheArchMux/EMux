(defun wymux/emms-play-find ()
  "Play track."
  (interactive)
  (setq regexp (read-regexp "Song: "))
    (emms-play-find "~/Media/Musica/" regexp))
