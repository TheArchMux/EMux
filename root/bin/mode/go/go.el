(defun wymux/go-format ()
  "'gofmt' on buffer.
Created: Sunday, April-23-2023 08:17:15"
  (interactive)
  (let ((name (buffer-file-name)))
    (when name
      (when (buffer-modified-p) (save-buffer))
      (shell-command (format "gofmt -w %s" name))
      (revert-buffer t t t))))

(define-derived-mode wymux/go-mode prog-mode "Go"
  "Mux's Go mode.")
