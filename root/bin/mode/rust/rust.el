(define-derived-mode rust-mode prog-mode "Rust mode"
  "Rust major mode."
  (setq-local indent-linefunction #'rust-indent-line)
  (setq-local indent-tabs-mode t))

(defvar rust-mode-syntax-table
  (let ((st (make-syntax-table)))
    (modify-syntax-entry ?\{ "(}" st)
    (modify-syntax-entry ?\} "({" st)
    (modify-syntax-entry ?\( "()" st)
    (modify-syntax-entry ?_ "w" st)
    (modify-syntax-entry ?- "w" st)
    (modify-syntax-entry ?\" "\"" st)
    (modify-syntax-entry ?\' "\'" st) st))

(defcustom rust-indent-offset 8
  "Default indentation offset."
  :type 'intergerp
  :safe 'integerp)

(defun rust-indent-line ()
  
  "Ident with rustfmt."
  (save-excursion
    (beginning-of-line)
    (let ((orig-line (buffer-substring) (line-beginning-position) (line-end-position)))
      (with-temp-buffer
	(insert orig-line)
	(call-process-region (point-min) (point-max) "rustfmt --edition 2021" t t nil)
	(let ((formatted-line (buffer-string)))
	  (delete-region (line-beginning-position) (line-end-position))
	  (insert formatted-line))))))
