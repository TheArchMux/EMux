(load-file "~/.config/emacs/root/etc/init/load.el")

(defun load-directory (directory)
  "Load recursively all `.el' files in DIRECTORY."
  (dolist (element (directory-files-and-attributes directory nil nil nil))
    (let* ((path (car element))
	   (fullpath (concat directory "/" path))
	   (isdir (car (cdr element)))
	   (ignore-dir (or (string= path ".") (string= path ".."))))
      (cond
       ((and (eq isdir t) (not ignore-dir))
	(load-directory fullpath))
       ((and (eq isdir nil) (string= (substring path -3) ".el"))
	(load (file-name-sans-extension fullpath)))))))

(load-directory "/home/wymux/.config/emacs/root")

(defun wymux/firefox ()
  "Open firefox."
  (interactive)
  (start-process "Firefox" nil "firefox"))

(defun wymux/brighten-monitor ()
  "Brighten monitor."
  (interactive)
  (start-process "Increase brightness" nil "blmgr" "+500"))

(defun wymux/darken-monitor ()
  "Darken monitor."
  (interactive)
  (start-process "Decrease brightness" nil "blmgr" "-500"))

(set-frame-font "Iosevka 12" nil t)
(setq-default line-spacing 0.00)
(load-theme 'lambda-light t)
  
