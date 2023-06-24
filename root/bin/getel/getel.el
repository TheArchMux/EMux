;;(wymux/getel-get "https://github.com/roygbyte/monochwome-theme.git")

(defgroup getel nil
  "Git clone .el files and compile"
  :group 'getel)

(defcustom wymux-getel-dir "~/.config/emacs/root/var/no-littering/var/getel"
  "Clone to directory."
  :group 'getel
  :type 'directory)

(defun wymux/getel-get (url)
  "Clone directory and add to load path when .el files exceeds 1.
Created: Friday, June-23-2023 20:54:10"
  (interactive)
  (let ((dir (file-name-nondirectory url)))
  (with-temp-buffer
    (if (not (file-directory-p (concat wymux-getel-dir "/" dir)))
	(aysnc-shell-command (concat "git clone " url " " (concat wymux-getel-dir "/" dir)))))))
  
