(defvar keymux-bracket '("()" "[]" "{}" "<>"))

(defconst keymux-left-brackets
  (mapcar (lambda (x) (substring x 0 1)) keymux-bracket))

(defconst keymux-right-brackets
  (mapcar (lambda (x) (substring x 1 2)) keymux-bracket))

(global-set-key (kbd "s-g") 'keymux-modal-mode)
(global-set-key (kbd "C-\\") 'recenter-top-bottom)
(global-set-key (kbd "C-]") 'hippie-completing-read)
(global-set-key (kbd "C-0") 'tempel-done)
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
(define-key keymux-command-map (kbd "b") 'backward-word)

(define-key keymux-command-map (kbd "c l") 'comment-line)
(define-key keymux-command-map (kbd "c r") 'comment-region)

(define-key keymux-command-map (kbd "d d") 'kill-whole-line)
(define-key keymux-command-map (kbd "d r") 'kill-region)
(define-key keymux-command-map (kbd "d s") 'kill-sexp)
(define-key keymux-command-map (kbd "d w") 'kill-word)

(define-key keymux-command-map (kbd "D") 'kill-line)
(define-key keymux-command-map (kbd "e") 'forward-word)

(define-key keymux-command-map (kbd "f a") 'wymux/find-all)
(define-key keymux-command-map (kbd "f d") 'dired-jump)
(define-key keymux-command-map (kbd "f e") 'wymux/find-exheres)
(define-key keymux-command-map (kbd "f f") 'find-file)
(define-key keymux-command-map (kbd "f m") 'wymux/find-makefile)
(define-key keymux-command-map (kbd "f p") 'ffap)
(define-key keymux-command-map (kbd "f r") 'wymux/recentf-find)
(define-key keymux-command-map (kbd "f s") 'save-buffer)

(define-key keymux-command-map (kbd "h d f") 'describe-function)
(define-key keymux-command-map (kbd "h d v") 'describe-variable)
(define-key keymux-command-map (kbd "h d k") 'describe-key)

(define-key keymux-command-map (kbd "i") 'keymux-to-insert)
(define-key keymux-command-map (kbd "j") 'backward-char)
(define-key keymux-command-map (kbd "k") 'next-line)
(define-key keymux-command-map (kbd "l") 'previous-line)
(define-key keymux-command-map (kbd "\;") 'forward-char)

(define-key keymux-command-map (kbd "g g") 'wymux/goto-char)

(define-key keymux-command-map (kbd "m b") 'mark-whole-buffer)
(define-key keymux-command-map (kbd "m m") 'back-to-indentation)
(define-key keymux-command-map (kbd "C-s") 'wymux/search)
(define-key keymux-command-map (kbd "n") 'wymux/search-forward)
(define-key keymux-command-map (kbd "N") 'wymux/search-backward)
(define-key keymux-command-map (kbd "o") 'open-line)
(define-key keymux-command-map (kbd "r j") 'jump-to-register)
(define-key keymux-command-map (kbd "t l") 'wymux/swap-lines)
(define-key keymux-command-map (kbd "u") 'undo)
(define-key keymux-command-map (kbd "v") 'set-mark-command)
(define-key keymux-command-map (kbd "y") 'yank)

(define-key keymux-command-map (kbd "z r") 'wymux/zap-backward-up-to-char)
(define-key keymux-command-map (kbd "z z") 'zap-up-to-char)

(define-key keymux-command-map (kbd "=") 'move-end-of-line)
(define-key keymux-command-map (kbd "-") 'move-beginning-of-line)
(define-key keymux-command-map (kbd "[") 'forward-paragraph)
(define-key keymux-command-map (kbd "]") 'backward-paragraph)

(define-key keymux-command-map (kbd "<tab> r") 'indent-region)
(define-key keymux-command-map (kbd "<tab> <tab>") 'tab-to-tab-stop)

(define-key keymux-command-map (kbd "C-[") 'end-of-buffer)
(define-key keymux-command-map (kbd "C-]") 'beginning-of-buffer)

(define-key keymux-command-map (kbd "SPC e b") 'eval-buffer)
(define-key keymux-command-map (kbd "SPC e d") 'eval-defun)
(define-key keymux-command-map (kbd "SPC e l") 'eval-last-sexp)
(define-key keymux-command-map (kbd "SPC e r") 'eval-region)

(define-key keymux-command-map (kbd "0") 'digit-argument)
(define-key keymux-command-map (kbd "1") 'digit-argument)
(define-key keymux-command-map (kbd "2") 'digit-argument)
(define-key keymux-command-map (kbd "3") 'digit-argument)
(define-key keymux-command-map (kbd "4") 'digit-argument)
(define-key keymux-command-map (kbd "5") 'digit-argument)
(define-key keymux-command-map (kbd "6") 'digit-argument)
(define-key keymux-command-map (kbd "7") 'digit-argument)
(define-key keymux-command-map (kbd "8") 'digit-argument)
(define-key keymux-command-map (kbd "9") 'digit-argument)

(define-key keymux-command-map (kbd "<f5>") 'wymux/compile)
(define-key keymux-command-map (kbd "<f10> p f") 'wymux/emms-play-find)
(define-key keymux-command-map (kbd "<f10> p t") 'emms-play-directory-tree)
(define-key keymux-command-map (kbd "<f12> r") 'wymux/document-read)
(define-key keymux-command-map (kbd "<f12> w") 'wymux/firefox)

(define-key keymux-command-map (kbd "C-v") 'visual-line-mode)
(define-key keymux-command-map (kbd "C-0") 'read-only-mode)
(define-key keymux-command-map (kbd "C-9") 'wymux/refresh-global-tempel-mode)

(define-key keymux-command-map (kbd "\\ g") 'gnus-other-frame)
(define-key keymux-command-map (kbd "\\ m") 'emms)
(define-key keymux-command-map (kbd "\\ r") 'mh-rmail)
(define-key keymux-command-map (kbd "\\ s") 'wymux/eshell)
(define-key keymux-command-map (kbd "\\ v") 'magit)

(define-key keymux-command-map (kbd ".") 'repeat)
(define-key keymux-command-map (kbd "SPC .") 'repeat-complex-command)

(defvar keymux-default-cursor-color nil)

(define-minor-mode keymux-modal-mode
  "Modal mode."
  :global t
  :keymap keymux-command-map
  (if keymux-modal-mode
      (progn
	(set-cursor-color "#8888FF"))
    (progn
      (set-cursor-color "#FF8888"))))

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

(defun keymux-c-map ()
  "Define c modal functions.
Created: Wednesday, March-08-2023 19:47:28"
  (define-key keymux-command-map (kbd "C-m f r") 'xref-find-references))
