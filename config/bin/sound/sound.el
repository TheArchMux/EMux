(defun wymux/lower-volume ()
  "Lower volume."
  (interactive)
  (start-process "Lower volume" nil "amixer" "sset" "Master" "2%-"))

(defun wymux/toggle-volume ()
  "Raise volume."
  (interactive)
  (start-process "Toggle volume" nil "amixer" "sset" "Master" "toggle"))

(defun wymux/raise-volume ()
  "Raise volume."
  (interactive)
  (start-process "Raise volume" nil "amixer" "sset" "Master" "2%+"))
