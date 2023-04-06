(setq completion-styles '(hotfuzz))

(setq hotfuzz-max-highlighted-completions 0)

(defun my-icomplete-styles ()
  (setq-local completion-styles '(hotfuzz)))

(add-hook 'icomplete-minibuffer-setup-hook 'my-icomplete-styles)

(setq completion-auto-select nil)
(setq completions-format 'one-column)
(setq completions-header-format nil)
(setq completions-ignore-case t)
(setq completions-max-height 10)

(setq icomplete-prospects-height 1)
(setq icomplete-show-matches-on-no-input nil)
