(defun wymux/bookmark ()
  "Bookmark."
  (interactive)
  (start-process "Bookmark" nil "bookmark.sh"))

(defun wymux/browser ()
  "Browser."
  (interactive)
  (start-process "Browser" nil "firefox"))

(defun wymux/dmenu ()
  "Dmenu."
  (interactive)
  (start-process "Dmenu" nil "dmenu_run"))

(defun wymux/document-read ()
  "Document read."
  (interactive)
  (start-process "Document read" nil "document_read.sh"))

(defun wymux/git-clone ()
  "Git clone."
  (interactive)
  (start-process "Git clone" nil "git_clone.sh"))

(defun wymux/gitlab-qr ()
  "Gitlab qr."
  (interactive)
  (start-process "Gitlab-qr" nil "gitlab-qr.sh"))

(defun wymux/terminal ()
  "Terminal."
  (interactive)
  (start-process "Terminal" nil "st"))

(defun wymux/time ()
  "Time."
  (interactive)
  (start-process "Time" nil "time.sh"))

(defun wymux/video-view ()
  "Terminal."
  (interactive)
  (start-process "Video view" nil "video_view.sh"))
