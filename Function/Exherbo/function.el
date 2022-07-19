(defun archmux/exherbo-cd ()
  "Find exheres."
  (interactive)
  (let* (
	 (current_buffer	(buffer-name))
	 (exherbo_directory	"~/Internet/Git/Exherbo/Remote/")
	 (exheres_user_input	(read-from-minibuffer "Exheres to locate: "))
	 (find-pattern		(concat "-name " exheres_user_input "*"))
	 (find-ls-option       '("-ls" . ""))
	)
        (find-dired exherbo_directory find-pattern)
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
