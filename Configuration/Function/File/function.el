(defun archmux/append-to-collection-file ()
  "Append visiting filename to collection_file."
  (interactive)
  (let* (
	 (buffer_name (buffer-file-name))
	 (collection_file "~/Media/Document/Text/Collection-File/collection.txt")
	 (append_string (concat buffer_name "\n"))
	 )
    (if (not (archmux/string-unique-in-file buffer_name collection_file))
	(with-current-buffer (find-file-noselect collection_file)
	  (end-of-buffer)
	  (insert append_string)
	  (save-buffer)
	  (kill-buffer)
	  )
      )
    )
  )

(defun archmux/string-unique-in-file (match_string file_name)
  "Verify whether match_string is unique in file_name."
  (interactive)
  (with-current-buffer (find-file-noselect file_name)
    (beginning-of-buffer)
    (search-forward match_string nil t)
    )
  )

(defun archmux/open-collection-file ()
  "Open collection file."
  (interactive)
  (find-file-existing "~/Media/Document/Text/Collection-File/collection.txt")
  )

(defun archmux/recompile-config-dot-h ()
  "Run make writing file is named 'config.h'."
  (let ((file_name (file-name-nondirectory buffer-file-name)))
    (if (string-equal file_name "config.h")
	(shell-command "make && doas make install"))))

(defun archmux/add-executable-bit ()
  "Make current file executable."
  (interactive)
  (executable-make-buffer-file-executable-if-script-p))

(add-hook 'find-file-hook 'archmux/append-to-collection-file)
(add-hook 'after-save-hook 'archmux/recompile-config-dot-h)
