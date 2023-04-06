(defun wymux/gnus-play-url ()
  "Play link with `emms-play-url'
Created: Wednesday, March-29-2023 20:59:16"
  (interactive)
  (let ((url (get-text-property (point) 'shr-url)))
    (message "%s" url)
    (emms-play-url url)))
