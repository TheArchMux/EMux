(defun wymux/lower-brightness ()
  "Lower brightness."
  (interactive)
  (start-process "Decrease brightness" nil "blmgr" "-500"))

(defun wymux/raise-brightness ()
  "Raise brightness."
  (interactive)
  (start-process "Increase brightness" nil "blmgr" "+500"))
