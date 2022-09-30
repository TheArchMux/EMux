(defun wymux/exheres-ediff ()
  "Ediff between two files."
  (interactive)
  (let* ((currentfile (file-name-base buffer-file-name))
	 (currentfilenoversion (string-trim-right currentfile ".[0-9]"))
	 (currententirefile buffer-file-name)
	 (directory "~/Internet/Compressed/Package/Exherbo/")
	 (currentcategoryfile (string-trim currententirefile "packages/" (concat "/" currentfilenoversion))))
    (find-dired directory (concat currentcategoryfile "/" currentfilenoversion))))

(defun archmux/find-file-create ()
    "Create directory when utilizing `find-file'."
    (let ((destination-file (file-name-directory buffer-file-name)))
      (if (not (file-exists-p destination-file))
	  (make-directory destination-file t))))

