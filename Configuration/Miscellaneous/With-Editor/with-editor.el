(load "~/Internet/Git/Emacs/with-editor/lisp/with-editor-autoloads.el")

(define-key (current-global-map)
  [remap async-shell-command] 'with-editor-async-shell-command)
(define-key (current-global-map)
  [remap shell-command] 'with-editor-shell-command)
