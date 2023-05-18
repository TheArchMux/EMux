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

(setq-default line-spacing 0.00)
(set-face-attribute 'default nil :font "NK57 Monospace" :height '140 :weight 'normal :width 'condensed)
(set-face-attribute 'variable-pitch nil :font "NK57 Monospace" :height '140 :weight 'normal :width 'condensed)
(load-theme 'lambda-light t)

(set-face-foreground 'minibuffer-prompt (face-foreground 'default))
(set-face-background 'minibuffer-prompt (face-background 'default))
