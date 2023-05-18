(setq wymux-scratch-buffer '("c" "cpp" "rst" "py" "go" "English" "Temporary"))

(defun wymux/kill-buffer-delete-window ()
  "Combine `kill-buffer' and `delete-window'."
  (interactive)
  (kill-this-buffer)
  (delete-window))

(defun wymux/quote-symbol ()
  "Quote symbol at point.
Created: Tuesday, March-14-2023 11:53:55
Revised: Thursday, March-23-2023 18:27:32"
  (interactive)
  (save-excursion
    (let ((symbol-bounds (bounds-of-thing-at-point 'symbol)))
      (when symbol-bounds
	(goto-char (car symbol-bounds))
	(insert "\"")
	(goto-char (+ 1 (cdr symbol-bounds)))
	(insert "\"")))))

(defun wymux/single-quote-symbol ()
  "Quote symbol with single quote from double quote.
Created: Thursday, March-16-2023 10:09:32
Revised: Thursday, March-23-2023 18:22:57"
  (save-excursion
    (let ((symbol-bounds (bounds-of-thing-at-point 'symbol)))
      (when symbol-bounds
	(goto-char (car symbol-bounds))
	(delete-backward-char 1)
	(insert "'")
	(goto-char (+ 1 (cdr symbol-bounds)))
	(delete-backward-char 1)
	(insert "'")))))

(defun wymux/kill-whole-buffer ()
  "Yank buffer into kill-ring.
Created: Tuesday, March-14-2023 12:39:29"
  (interactive)
  (let ((p1 (point-min))
	(p2 (point-max)))
    (kill-ring-save p1 p2)))

(defun wymux/kill-all-buffer ()
  "Kill all other buffers.
Created: Tuesday, March-14-2023 18:45:04"
  (interactive)
  (mapc 'kill-buffer (cdr (buffer-list))))

(defun wymux/unquote-symbol ()
  "Unquote symbol.
Created: Thursday, March-23-2023 18:19:16"
  (save-excursion
    (let ((symbol-bounds (bounds-of-thing-at-point 'symbol)))
      (when symbol-bounds
	(goto-char (car symbol-bounds))
	(delete-backward-char 1)
	(goto-char (cdr symbol-bounds))
	(delete-backward-char 1)))))

(defun wymux/quote-url ()
  "Quote url at point.
Created: Wednesday, March-15-2023 07:58:40"
  (interactive)
  (let ((url (wymux/extract-url-at-point)))
    (next-line -1)
    (replace-regexp (regexp-quote url) (concat "\"" url "\""))))

(defun wymux/switch-to-scratch ()
  "Switch to custom scratch buffer.
Created: Thursday, March-16-2023 10:38:51"
  (interactive)
  (let ((sractch (completing-read "Scratch: " wymux-scratch-buffer)))
    (switch-to-buffer (concat "sratch." sractch))))

(defun wymux/toggle-quote ()
  "Toggle between single, double, and no quote.
Created: Thursday, March-23-2023 18:13:23"
  (interactive)
  (unless (eq last-command this-command)
    (put this-command 'state 0))
  (cond
   ((equal 0 (get this-command 'state))
    (wymux/quote-symbol)
    (put this-command 'state 1))
   ((equal 1 (get this-command 'state))
    (wymux/single-quote-symbol)
    (put this-command 'state 2))
   ((equal 2 (get this-command 'state))
    (wymux/unquote-symbol)
    (put this-command 'state 0))))

(defun wymux/kill-buffer-name (name)
  "Kill buffer matching name.
Created: Friday, March-24-2023 13:37:36"
  (interactive "sBuffer name: ")
  (dolist (buffer (buffer-list))
    (when (string-prefix-p name (buffer-name buffer))
      (kill-buffer buffer))))

(setq wymux-clean-buffer-list '("*ediff-*" "*Ediff" "*Completions*" "*Buffer List*" "+Inbox"
				"*Backtrace*" "*Warnings*" "*Messages*" "*GNU Emacs*"
				"magit: *" "magit-*" "*Find*" "*Help*" "*scratch" "*Man*"
				"*eshell" "*Async Shell Command*" "*Shell Command Output*"
				"*Occur*" "*Apropos*"))

(defun wymux/clean-buffer-list ()
  "Clean buffer list
Created: Friday, March-24-2023 14:36:34"
  (interactive)
  (let ((buffer-list 'wymux-clean-buffer-list))
    (dotimes (i (length wymux-clean-buffer-list))
      (ignore-errors
	(kill-matching-buffers (nth i wymux-clean-buffer-list) nil t)))))

(defun wymux/goto-quote ()
  "Goto \".
Created: Saturday, March-25-2023 21:37:26"
  (interactive)
  (search-forward "\""))

(defun wymux/edit-string ()
  "Edit next string.
Created: Saturday, March-25-2023 21:38:23"
  (interactive)
  (wymux/goto-quote)
  (zap-up-to-char 1 (string-to-char "\""))
  (keymux-to-insert))

(defun wymux/kill-paragraph ()
  "Kill entire paragraph.
Created: Saturday, March-25-2023 22:24:18"
  (interactive)
  (kill-paragraph -1)
  (kill-paragraph 1))

(defun wymux/backward-whitespace ()
  "Backward whitespace.
Created: Sunday, March-26-2023 07:36:31"
  (interactive)
  (forward-whitespace -1))

(defun wymux/kill-word ()
  "Kill entiree word.
Created: Monday, March-27-2023 14:41:24"
  (interactive)
  (kill-word 1)
  (backward-kill-word 1)
  (keymux-modal-mode -1))

(defun wymux/edit-parenthesis ()
  "Edit contents inside of () pair.
Created: Tuesday, March-28-2023 12:47:01"
  (interactive)
  (let ((p1)
	(p2))
    (search-backward "(")
    (forward-char 1)
    (setq p1 (point))
    (up-list 1)
    (backward-char 1)
    (setq p2 (point))
    (delete-region p1 p2)
    (keymux-modal-mode -1)))

(defun wymux/quote-until-whitespace (p1 p2 quote)
  "Quote text until whitespace.
Created: Thursday, March-30-2023 16:48:42"
  (save-excursion
    (goto-char p1)
    (insert-char quote)
    (goto-char p2)
    (insert-char quote)))

(defun wymux/remove-quote-sexp (p1 p2)
  "Remove surrounding quote from sexp.
Created: Thursday, March-30-2023 17:02:38"
  (save-excursion
    (goto-char p1)
    (delete-char 1)
    (goto-char p2)
    (delete-char 1)))

(defun wymux/toggle-quote-sexp ()
  "Quote sexp.
Created: Thursday, March-30-2023 16:58:02"
  (interactive)
  (unless (eq last-command this-command)
    (put this-command 'state 0))
  (let* ((bounds (bounds-of-thing-at-point 'sexp))
	 (p1 (car bounds))
	 (p2 (cdr bounds)))
    (cond
     ((equal 0 (get this-command 'state))
      (wymux/quote-until-whitespace p1 (+ p2 1) (string-to-char "'"))
      (put this-command 'state 1))
     ((equal 1 (get this-command 'state))
      (wymux/remove-quote-sexp (+ p1 0) (- p2 2))
      (wymux/quote-until-whitespace p1 (- p2 1) (string-to-char "\""))
      (put this-command 'state 2))
     ((equal 2 (get this-command 'state))
      (wymux/remove-quote-sexp (- p1 1) (- p2 1))
      (put this-command 'state 0)))))

(defun wymux/toggle-view ()
  "Toggle `scroll-lock-mode' and cursor.
Created: Thursday, April-06-2023 21:50:40"
  (interactive)
  (when (eq nil (get this-command 'state))
    (put this-command 'state 0))
  (cond
   ((equal 0 (get this-command 'state))
    (scroll-lock-mode 1)
    (setq-local cursor-type nil)
    (wymux/pulse-remove)
    (put this-command 'state 1))
   ((equal 1 (get this-command 'state))
    (scroll-lock-mode -1)
    (setq-local cursor-type t)
    (wymux/pulse-add)
    (put this-command 'state 0))))

(defun wymyx/eval-last-sexp ()
  "Add `eval-last-sexp' to `kill-ring'.
Created: Friday, April-07-2023 08:56:10"
  (interactive)
  (kill-new (format "%s" (eval-last-sexp 1))))

(defun wymux/yank-to-register ()
  "Yank to register.
Created: Friday, April-07-2023 15:07:01"
  (interactive)
  (let (p1 p2)
    (if (region-active-p)
	(progn
	  (setq p1 (region-beginning))
	  (setq p2 (region-end)))
      (progn
	(setq p1 (line-beginning-position))
	(setq p2 (line-end-position))))
    (copy-to-register ?0 p1 p2)))

(defun wymux/kill-between-curly-brace ()
  "Kill between curly braces.
Created: Tuesday, May-16-2023 18:47:17"
  (interactive)
  (let (p1 p2)
    (search-backward "{")
    (forward-char 1)
    (setq p1 (point))
    (search-forward "}")
    (backward-char 2)
    (setq p2 (point))
    (if (eq current-prefix-arg 1)
	(delete-region p1 p2)
      (kill-region p1 p2))
    (newline)
    (indent-for-tab-command)))
