(defconst wymux-font "NK57 Monospace Cd Rg 14")
(defconst wymux-theme 'tao-yang)

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

(load-directory "/home/wymux/.config/emacs/root/bin")
(load-directory "/home/wymux/.config/emacs/root/etc")

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

(set-frame-font wymux-font nil t)
(load-theme wymux-theme t)

(set-face-foreground 'default "#000000")
(set-face-background 'default "#FFFFFF")

(set-face-foreground 'minibuffer-prompt "#000000")
(set-face-background 'minibuffer-prompt "#FFFFFF")
(set-face-foreground 'show-paren-match "#FFFFFF")
(set-face-background 'show-paren-match "#000000")
