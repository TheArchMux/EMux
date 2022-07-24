(defun archmux/exherbo-cd ()
  "Find exheres."
  (interactive)
  (let* (
	 (exherbo_directory	"~/Internet/Git/Exherbo/Remote/")
	 (exheres_user_input	(read-from-minibuffer "Exheres to locate: "))
	 (find-pattern		(concat "-name " exheres_user_input "*"))
	 (find-ls-option       '("-ls" . ""))
	 (package_directory	"~/Internet/Compressed/Package")
         (buffer-name (format "*Find: %s in %s*" find-pattern exherbo_directory))
	 )
    (progn
      (split-window-below)
      (other-window 1)
      (find-dired exherbo_directory find-pattern)
      (rename-uniquely)
      (other-window 1)
      (find-dired package_directory find-pattern)
      )
    )
  )

(defun archmux/exherbo-with ()
  "Automatically insert --with configurations."
  (interactive)
)

(defun archmux/exherbo-without ()
  "Automatically insert with configurations."
  (interactive)
)

(defun archmux/exherbo-dependency ()
  "Automatically insert dependencies into exheres."
  (interactive)
)

(defun archmux/exherbo-enable ()
  "Automatically insert --enable configurations."
  (interactive)
)

(defun archmux/exherbo-disable ()
  "Automatically insert --disable configurations."
  (interactive)
)
