(defun wymux/document-read ()
  "Open document."
  (interactive)
  (let* ((document-path "~/Media/Document/")
	(document (completing-read "Document: " (directory-files-recursively document-path "\\.pdf$\\|\\.epub$"))))
    (start-process "Zathura" nil "zathura" document)))

(defun wymux/firefox ()
  "Open firefox."
  (interactive)
  (start-process "Firefox" nil "firefox"))

(defun wymux/eshell ()
  "`eshell'."
  (interactive)
  (eshell 'N))

(defun wymux/brighten-monitor ()
  "Brighten monitor."
  (interactive)
  (start-process "Increase brightness" nil "blmgr" "+500"))

(defun wymux/darken-monitor ()
  "Darken monitor."
  (interactive)
  (start-process "Decrease brightness" nil "blmgr" "-500"))

(defun wymux/decrease-volume ()
  "Decrease volume."
  (interactive)
  (start-process "Decrease volume" nil "amixer" "sset" "Master" "2%-"))

(defun wymux/increase-volume ()
  "Increase volume."
  (interactive)
  (start-process "Increase volume" nil "amixer" "sset" "Master" "2%+"))
