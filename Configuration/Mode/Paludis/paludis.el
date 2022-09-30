(defun wymux/find-exheres ()
  "Find exheres in exheres-directory."
  (interactive)
  (let* ((exheres-file (read-from-minibuffer "Exheres to locate: "))
	(exheres-directory "~/Internet/Git/Exherbo")
	(find-args (concat "-name " exheres-file "*.ex*")))
    (find-dired exheres-directory find-args)))
