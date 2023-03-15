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

(defun wymux/git-clone ()
  "Git clone Into local directory.
Created: Tuesday, March-14-2023 11:11:59"
  (interactive)
  (let ((git-url (car kill-ring))
	(dir (read-directory-name "Git clone directory: " "~/Internet/Git/")))
    (async-shell-command (concat "git clone " git-url " " dir (file-name-base git-url)))))
