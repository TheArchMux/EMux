(defun archmux/string-unique-in-file (search_string file_path)
  "Verify whether string is unique in a file."
  (let ((buffer_file_name search_string))
  (with-current-buffer (find-file-noselect file_path)
    (goto-char (point-min))
    (search-forward buffer_file_name nil t)
  )
  )
)

(defun archmux/append-to-project-file ()
  "Append to project.el."
  (interactive)
  (let ((project_file "~/Media/Document/Emacs/Org/Project/project.org")
	(append_string (concat "\n* " (buffer-file-name))))
    (unless (archmux/string-unique-in-file buffer-file-name project_file)
	(progn
	(append-to-file append_string nil project_file)))
  )
)
