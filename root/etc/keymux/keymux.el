(defvar keymux-bracket '("()" "[]" "{}" "<>"))

(defconst keymux-left-brackets
  (mapcar (lambda (x) (substring x 0 1)) keymux-bracket))

(defconst keymux-right-brackets
  (mapcar (lambda (x) (substring x 1 2)) keymux-bracket))

(global-set-key (kbd "<f5>") 'keymux-modal-mode)
(global-set-key (kbd "C-\\") 'recenter-top-bottom)
(global-set-key (kbd "C-]") 'hippie-completing-read)
(global-set-key (kbd "C-0") 'tempel-done)
(global-set-key (kbd "C-z") 'abort-recursive-edit)
(global-set-key (kbd "C--") 'tempel-previous)
(global-set-key (kbd "C-=") 'tempel-next)
(global-set-key (kbd "<XF86MonBrightnessUp>") 'wymux/brighten-monitor)
(global-set-key (kbd "<XF86MonBrightnessDown>") 'wymux/darken-monitor)
(global-set-key (kbd "<XF86AudioLowerVolume>") 'wymux/decrease-volume)
(global-set-key (kbd "<XF86AudioRaiseVolume>") 'wymux/increase-volume)

(defgroup keymux-modal-mode nil
  "Global modal minor mode."
  :group 'keyboard)

(defcustom keymux-insert-cursor-color "#8888FF"
  "Cursor color of insertion mode."
  :type 'color
  :group 'keymux-modal-mode)

(defcustom keymux-command-cursor-color "#FF8888"
  "Cursor color of command mode."
  :type 'color
  :group 'keymux-modal-mode)

(defvar keymux-mode-hook nil
  "Executed when `keymux-modal-mode' is enabled.")

(defvar keymux-mode-exit-hook nil
  "Executed when `keymux-modal-mode' is disabled.")

(defvar keymux-command-map (make-sparse-keymap))

(define-key keymux-command-map (kbd "a") 'execute-extended-command)

(define-key keymux-command-map (kbd "d d") 'kill-whole-line)
(define-key keymux-command-map (kbd "d p") 'wymux/kill-paragraph)
(define-key keymux-command-map (kbd "d r") 'kill-region)
(define-key keymux-command-map (kbd "d s") 'kill-sexp)
(define-key keymux-command-map (kbd "d w") 'wymux/kill-word)
(define-key keymux-command-map (kbd "d x b") 'wymux/kill-whole-buffer)
(define-key keymux-command-map (kbd "d x f") 'wymux/kill-file-relative)
(define-key keymux-command-map (kbd "d x p") 'wymux/kill-file-path)
(define-key keymux-command-map (kbd "D") 'kill-line)

(define-key keymux-command-map (kbd "r") 'kill-word)
(define-key keymux-command-map (kbd "e") 'backward-kill-word)
(define-key keymux-command-map (kbd "c") 'backward-word)
(define-key keymux-command-map (kbd "v") 'forward-word)

(define-key keymux-command-map (kbd "f a") 'wymux/find-all)
(define-key keymux-command-map (kbd "f d") 'dired-jump)
(define-key keymux-command-map (kbd "f e") 'wymux/find-exheres)
(define-key keymux-command-map (kbd "f f") 'find-file)
(define-key keymux-command-map (kbd "f l") 'locate)
(define-key keymux-command-map (kbd "f m") 'wymux/find-makefile)
(define-key keymux-command-map (kbd "f p") 'ffap)
(define-key keymux-command-map (kbd "f r") 'wymux/find-file-subdirectory)
(define-key keymux-command-map (kbd "f t") 'wymux/recentf-find)
(define-key keymux-command-map (kbd "f s") 'save-buffer)

(define-key keymux-command-map (kbd "i") 'keymux-to-insert)

(define-key keymux-command-map (kbd "h a c") 'apropos-command)
(define-key keymux-command-map (kbd "h a v") 'apropos-value)
(define-key keymux-command-map (kbd "h d b") 'describe-bindings)
(define-key keymux-command-map (kbd "h d f") 'describe-function)
(define-key keymux-command-map (kbd "h d s") 'describe-symbol)
(define-key keymux-command-map (kbd "h d v") 'describe-variable)
(define-key keymux-command-map (kbd "h f f") 'find-function)
(define-key keymux-command-map (kbd "h f k") 'find-function-on-key)
(define-key keymux-command-map (kbd "h m") 'man)

(define-key keymux-command-map (kbd "j") 'backward-char)
(define-key keymux-command-map (kbd "k") 'next-line)
(define-key keymux-command-map (kbd "l") 'previous-line)
(define-key keymux-command-map (kbd "\;") 'forward-char)

(define-key keymux-command-map (kbd "C-j") 'backward-list)
(define-key keymux-command-map (kbd "C-k") 'down-list)
(define-key keymux-command-map (kbd "C-l") 'up-list)
(define-key keymux-command-map (kbd "C-\;") 'forward-list)

(define-key keymux-command-map (kbd "g c") 'hop-char)
(define-key keymux-command-map (kbd "g g") 'goto-line)
(define-key keymux-command-map (kbd "g e") 'hop-word)
(define-key keymux-command-map (kbd "g l") 'hop-line)
(define-key keymux-command-map (kbd "g w") 'hop-line-skip-whitespace)

(define-key keymux-command-map (kbd "m b") 'mark-whole-buffer)
(define-key keymux-command-map (kbd "m m") 'back-to-indentation)
(define-key keymux-command-map (kbd "C-o") 'occur)
(define-key keymux-command-map (kbd "C-s") 'wymux/search)
(define-key keymux-command-map (kbd "n") 'wymux/search-forward)
(define-key keymux-command-map (kbd "N") 'wymux/search-backward)
(define-key keymux-command-map (kbd "o") 'open-line)

(define-key keymux-command-map (kbd "u") 'undo)
(define-key keymux-command-map (kbd "y") 'yank)

(define-key keymux-command-map (kbd "w r") 'wymux/zap-backward-up-to-char)
(define-key keymux-command-map (kbd "w t") 'zap-up-to-char)
(define-key keymux-command-map (kbd "x") 'delete-char)
(define-key keymux-command-map (kbd "' l") 'comment-line)
(define-key keymux-command-map (kbd "' r") 'comment-region)

(define-key keymux-command-map (kbd "-") 'wymux/backward-whitespace)
(define-key keymux-command-map (kbd "=") 'forward-whitespace)
(define-key keymux-command-map (kbd "C-\-") 'move-beginning-of-line)
(define-key keymux-command-map (kbd "C-=") 'move-end-of-line)
(define-key keymux-command-map (kbd "[") 'forward-paragraph)
(define-key keymux-command-map (kbd "]") 'backward-paragraph)
(define-key keymux-command-map (kbd "C-[") 'scroll-up-command)
(define-key keymux-command-map (kbd "C-]") 'scroll-down-command)
(define-key keymux-command-map (kbd "<home>") 'beginning-of-buffer)
(define-key keymux-command-map (kbd "<end>") 'end-of-buffer)

(define-key keymux-command-map (kbd "<tab> q") 'wymux/edit-string)
(define-key keymux-command-map (kbd "<tab> p") 'wymux/edit-parenthesis)
(define-key keymux-command-map (kbd "<tab> r") 'indent-region)

(define-key keymux-command-map (kbd "C-d") 'duplicate-dwim)
(define-key keymux-command-map (kbd "C-t") 'transpose-lines)
(define-key keymux-command-map (kbd "C-r") 'query-replace)
(define-key keymux-command-map (kbd "t") 'set-mark-command)

(define-key keymux-command-map (kbd "C-v") 'visual-line-mode)
(define-key keymux-command-map (kbd "C-1") 'jump-to-register)
(define-key keymux-command-map (kbd "C-0") 'read-only-mode)
(define-key keymux-command-map (kbd "C-9") 'wymux/refresh-global-tempel-mode)

(define-key keymux-command-map (kbd "\\ n") 'gnus)
(define-key keymux-command-map (kbd "\\ m") 'emms)
(define-key keymux-command-map (kbd "\\ r") 'mh-rmail)
(define-key keymux-command-map (kbd "\\ s") 'wymux/eshell)
(define-key keymux-command-map (kbd "\\ v") 'magit)
(define-key keymux-command-map (kbd "\\ x") 'xeft)

(define-key keymux-command-map (kbd ".") 'repeat)
(define-key keymux-command-map (kbd ",") 'repeat-complex-command)

(define-key keymux-command-map (kbd "<tab> x b") 'eval-buffer)
(define-key keymux-command-map (kbd "<tab> x d") 'eval-defun)
(define-key keymux-command-map (kbd "<tab> x r") 'eval-region)

(define-key keymux-command-map (kbd "\\ c") 'wymux/compile)
(define-key keymux-command-map (kbd "\\ d") 'wymux/document-read)
(define-key keymux-command-map (kbd "\\ g") 'wymux/git-clone)
(define-key keymux-command-map (kbd "\\ i") 'imenu)
(define-key keymux-command-map (kbd "\\ p f") 'wymux/emms-play-find)
(define-key keymux-command-map (kbd "\\ p t") 'emms-play-directory-tree)
(define-key keymux-command-map (kbd "\\ w") 'wymux/firefox)

(define-key keymux-command-map (kbd "0") 'goto-last-point)
(define-key keymux-command-map (kbd "SPC 0") 'digit-argument)
(define-key keymux-command-map (kbd "1") 'digit-argument)
(define-key keymux-command-map (kbd "2") 'digit-argument)
(define-key keymux-command-map (kbd "3") 'digit-argument)
(define-key keymux-command-map (kbd "4") 'digit-argument)
(define-key keymux-command-map (kbd "5") 'digit-argument)
(define-key keymux-command-map (kbd "6") 'digit-argument)
(define-key keymux-command-map (kbd "7") 'digit-argument)
(define-key keymux-command-map (kbd "8") 'digit-argument)
(define-key keymux-command-map (kbd "9") 'digit-argument)

(defvar keymux-default-cursor-color nil)

(define-minor-mode keymux-modal-mode
  "Modal mode."
  :global t
  :keymap keymux-command-map
  (keymux-cursor-refresh))

(add-hook 'minibuffer-setup-hook 'keymux-to-insert)
(add-hook 'minibuffer-exit-hook 'keymux-to-command)

(defun keymux-to-command ()
  "-> Command mode."
  (interactive)
  (keymux-modal-mode 1))

(defun keymux-to-insert ()
  "-> Insertion mode."
  (interactive)
  (keymux-modal-mode -1))

(defun wymux/keymux-c-map ()
  "Define c modal functions.
Created: Wednesday, March-08-2023 19:47:28"
  (define-key keymux-command-map (kbd "SPC f") 'ggtags-find-tag-dwim)
  (define-key keymux-command-map (kbd "SPC r") 'ggtags-query-replace)
  (define-key keymux-command-map (kbd "SPC s") 'ggtags-find-other-symbol))

(defun wymux/keymux-exheres-mode-map ()
  "Bind keys for `exheres-mode'
Created: Tuesday, March-14-2023 19:14:59"
  (define-key keymux-command-map (kbd "SPC b") 'wymux/bump-exheres)
  (define-key keymux-command-map (kbd "SPC d") 'wymux/exherbo-download-package)
  (define-key keymux-command-map (kbd "SPC e") 'wymux/exherbo-ediff)
  (define-key keymux-command-map (kbd "SPC f") 'wymux/find-exlib)
  (define-key keymux-command-map (kbd "SPC t") 'wymux/exherbo-travel-local-compressed))

(defun wymux/unbind-keys ()
  "Unbind all 'SPC' major mode specific keys.
Created: Tuesday, March-14-2023 19:19:20"
  (define-key keymux-command-map (kbd "SPC b") nil)
  (define-key keymux-command-map (kbd "SPC d") nil)
  (define-key keymux-command-map (kbd "SPC e") nil)
  (define-key keymux-command-map (kbd "SPC f") nil)
  (define-key keymux-command-map (kbd "SPC r") nil)
  (define-key keymux-command-map (kbd "SPC t") nil))

(defun keymux-cursor-enable ()
  "Set active `keymux-modal-mode' cursor.
Created: Sunday, April-02-2023 09:16:14"
  (set-cursor-color "#8888FF"))

(defun keymux-cursor-disable ()
  "Set inactive `keymux-modal' cursor.
Created: Sunday, April-02-2023 09:17:12"
  (set-cursor-color "#FF8888"))

(defun keymux-cursor-refresh ()
  "Refresh color of cursor.
Created: Sunday, April-02-2023 09:20:43"
  (if keymux-modal-mode
      (keymux-cursor-enable)
    (keymux-cursor-disable)))
