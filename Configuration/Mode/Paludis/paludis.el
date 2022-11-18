(defvar exheres-directory nil
  "Exheres local directory.")

(defvar paludis-cache-file nil
  "File generated with paludis containing all packages.")

(defun wymux/find-exheres ()
  "Find exheres in exheres-directory."
  (interactive)
  (let* ((exheres-file (read-from-minibuffer "Exheres to locate: "))
	(find-args (concat "-name " exheres-file "*.ex*")))
    (find-dired exheres-directory find-args)))

(defun wymux/read--package-from-cache ()
  "Return one line from `paludis-cache-file'."
  (let ((all-packages (with-temp-buffer
			(insert-file-contents paludis-cache-file)
			(split-string (buffer-string) "\n" t))))
    (ido-completing-read "Package: " all-packages)))

(setq exheres-directory "~/Internet/Git/Exherbo/")

(setq paludis-cache-file "~/.cache/cave_all")
