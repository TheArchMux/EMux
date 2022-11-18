(defvar exheres-directory nil
  "Exheres local directory.")

(defun wymux/find-exheres ()
  "Find exheres in exheres-directory."
  (interactive)
  (let* ((exheres-file (read-from-minibuffer "Exheres to locate: "))
	(find-args (concat "-name " exheres-file "*.ex*")))
    (find-dired exheres-directory find-args)))

(setq exheres-directory "~/Internet/Git/Exherbo/")
