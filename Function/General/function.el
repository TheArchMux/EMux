(defun archmux/select-directory (base_directory)
  "Select a directory from base_directory."
  (read-directory-name "Directory: " base_directory)
)

