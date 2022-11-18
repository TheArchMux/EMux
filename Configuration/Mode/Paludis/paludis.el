(defvar compressed-directory nil
  "Compressed file local directory.")

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

(defun wymux/make-directory-tree ()
  "Make diirectory category/package in `exheres-directory'."
  (interactive)
  (let* ((package (wymux/read--package-from-cache))
	 (category-name (wymux/extract--category package))
	 (package-name (wymux/extract--package package))
	 (package-version (wymux/acquire--package-verison)))
    (make-directory (expand-file-name (concat compressed-directory category-name "/" package-name "/" package-version)) t)))

(defun wymux/acquire--package-verison ()
  "Acquire package verison from user."
  (read-from-minibuffer "Version: "))

(defun wymux/extract--category (package)
  "Return category of package."
  (string-trim-right package "\/[A-Za-z]+"))

(defun wymux/extract--package (package)
  "Return category of package."
  (string-trim-left package "[-A-Za-z]+\/"))

(defun wymux/read--package-from-cache ()
  "Return one line from `paludis-cache-file'."
  (let ((all-packages (with-temp-buffer
			(insert-file-contents paludis-cache-file)
			(split-string (buffer-string) "\n" t))))
    (ido-completing-read "Package: " all-packages)))

(setq compressed-directory "~/Internet/Compressed/Package/Exherbo/")

(setq exheres-directory "~/Internet/Git/Exherbo/")

(setq paludis-cache-file "~/.cache/cave_all")
