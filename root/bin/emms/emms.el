(defun wymux/emms-play-find ()
  "`emms-play-find' in 'emms-source-file-default-directory'.
Created: Friday, March-10-2023 11:19:33"
  (interactive)
  (let ((regexp (completing-read "Song: " nil)))
    (emms-play-find emms-source-file-default-directory regexp)))

(defun wymux/emms-play-url ()
  "`emms-play-url' from clipboard.
Created: Wednesday, March-29-2023 20:54:47"
  (interactive)
  (let ((url (shell-command-to-string "xclip -o -selection clipboard")))
    (message "Playing %s" url)
    (emms-play-url url)))
