(load-file "~/.config/emacs/Configuration/Function/Modal/modal.el")
(load-file "~/Internet/Git/Emacs/Modal/KeyWork/keywork.el")

(setq
 kw-insert
 (keywork--make-map
  :color "#008888"
  :map
  `(("s-g" ,(kw-on 'kw-command)))))

(setq
 kw-command
 (keywork--make-map
  :color "#CD5C5C"
  :map
  `(("a" execute-extended-command)
    ("u" undo)
    ("v" set-mark-command)
    ("y" yank)
    ("C-r" query-replace)
    ("C-\\" magit-status)
    ("g" goto-last-point)
    ("z" zap-up-to-char))))

(keywork--add-child 'kw-command 'kw-command-mode-select)
(keywork--add-child 'kw-command 'kw-command-movement)
(keywork--add-child 'kw-command 'kw-command-program)
(keywork--add-child 'kw-command 'kw-command-file-and-buffer)
(keywork--add-child 'kw-command 'kw-command-digit)
(keywork--add-child 'kw-command 'kw-command-kill)
(keywork--add-child 'kw-command 'kw-command-help)
(keywork--add-child 'kw-command 'kw-command-eval)
(keywork--add-child 'kw-command 'kw-command-narrow)
(keywork--add-child 'kw-command 'kw-command-mark)

(setq
 kw-command-mode-select
 (keywork--make-map
  :map
  `(("i" ,(kw-on 'kw-insert)))))

(setq
 kw-command-movement
 (keywork--make-map
  :map
  `(("j" backward-char)
    ("k" next-line)
    ("l" previous-line)
    (";" forward-char)
    ("e" forward-word)
    ("b" backward-word)
    ("-" beginning-of-line)
    ("=" end-of-line)
    ("m" back-to-indentation)
    ("[" forward-paragraph)
    ("]" backward-paragraph)
    ("n" wymux/search-forward)
    ("N" wymux/search-backward)
    ("/" wymux/reset-search)
    ("C-[" end-of-buffer)
    ("C-]" beginning-of-buffer))))

(setq
 kw-command-program
 (keywork--make-map
  :map
  `(("\\ e" emms)
    ("\\ g" gnus-other-frame)
    ("\\ m" mh-rmail)
    ("\\ s" eshell))))

(setq
 kw-command-file-and-buffer
 (keywork--make-map
  :map
  `(("f d" dired-jump)
    ("f e" wymux/find-exheres)
    ("f f" find-file)
    ("f l" locate)
    ("f n" find-name-dired)
    ("f p" find-file-at-point)
    ("f r" wymux/recentf-find)
    ("f s" save-buffer)
    ("r j" jump-to-register))))

(setq
 kw-command-kill
 (keywork--make-map
  :map
  `(("d d" kill-whole-line)
    ("d p" kill-paragraph)
    ("d r" kill-region)
    ("d s" kill-sexp)
    ("D" kill-line))))

(setq
 kw-command-help
 (keywork--make-map
  :map
  `(("h a c" apropos-command)
    ("h a d" apropos-documentation)
    ("h a f" apropos-function)
    ("h a l" apropos-library)
    ("h a v" apropos-variable)
    ("h a x" apropos-value)
    ("h d c" describe-key)
    ("h d f" describe-function)
    ("h d v" describe-variable)
    ("h d x" describe-value)
    ("h i a" info-apropos)
    ("h i i" info)
    ("h m" man))))

(setq
 kw-command-digit
 (keywork--make-map
  :map
  `(("0" digit-argument)
    ("1" digit-argument)
    ("2" digit-argument)
    ("3" digit-argument)
    ("4" digit-argument)
    ("5" digit-argument)
    ("6" digit-argument)
    ("7" digit-argument)
    ("8" digit-argument)
    ("9" digit-argument))))

(setq
 kw-command-eval
 (keywork--make-map
  :map
  `(("x e b" eval-buffer)
    ("x e d" eval-defun)
    ("x e e" eval-expression)
    ("x e l" eval-last-sexp)
    ("x e r" eval-region))))

(setq
 kw-command-narrow
 (keywork--make-map
  :map
  `(("' d" narrow-to-defun)
    ("' p" narrow-to-page)
    ("' r" narrow-to-region)
    ("' w" widen))))

(setq
 kw-command-mark
 (keywork--make-map
  :map
  `(("m b" mark-whole-buffer))))

(keywork-mode)
(funcall (kw-on 'kw-command))
(add-hook 'minibuffer-setup-hook (kw-on 'kw-insert))
(add-hook 'minibuffer-exit-hook (kw-on 'kw-command))
(push (lambda (_) (keywork-refresh)) window-selection-change-functions)
(push (lambda (_) (keywork-refresh)) window-buffer-change-functions)
