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
(define-key keymux-command-map (kbd "d x b") 'wymux/kill-whole-buffer)

(define-key keymux-command-map (kbd "D") 'kill-line)
(define-key keymux-command-map (kbd "e") 'forward-word)

(define-key keymux-command-map (kbd "f a") 'wymux/find-all)
(define-key keymux-command-map (kbd "f d") 'dired-jump)
(define-key keymux-command-map (kbd "f e") 'wymux/find-exheres)
(define-key keymux-command-map (kbd "f f") 'find-file)
(define-key keymux-command-map (kbd "f l") 'locate)
(define-key keymux-command-map (kbd "f m") 'wymux/find-makefile)
(define-key keymux-command-map (kbd "f p") 'ffap)
(define-key keymux-command-map (kbd "f r") 'wymux/recentf-find)
(define-key keymux-command-map (kbd "f s") 'save-buffer)

(define-key keymux-command-map (kbd "h a f") 'apropos-command)
(define-key keymux-command-map (kbd "h a v") 'apropos-variable)
(define-key keymux-command-map (kbd "h d f") 'describe-function)
(define-key keymux-command-map (kbd "h d v") 'describe-variable)
(define-key keymux-command-map (kbd "h d k") 'describe-key)
(define-key keymux-command-map (kbd "h m") 'man)
(define-key keymux-command-map (kbd "i") 'keymux-to-insert)
(define-key keymux-command-map (kbd "j") 'backward-char)
(define-key keymux-command-map (kbd "k") 'next-line)
(define-key keymux-command-map (kbd "l") 'previous-line)
(define-key keymux-command-map (kbd "\;") 'forward-char)

(define-key keymux-command-map (kbd "g c") 'hop-char)
(define-key keymux-command-map (kbd "g g") 'wymux/goto-char)
(define-key keymux-command-map (kbd "g e") 'hop-word)
(define-key keymux-command-map (kbd "g l") 'hop-line)
(define-key keymux-command-map (kbd "g p") 'goto-last-point)
(define-key keymux-command-map (kbd "g w") 'hop-line-skip-whitespace)

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
(define-key keymux-command-map (kbd "^") 'wymux/dired-up)

(define-key keymux-command-map (kbd "<tab> r") 'indent-region)
(define-key keymux-command-map (kbd "<tab> <tab>") 'tab-to-tab-stop)

(define-key keymux-command-map (kbd "C-b") 'wymux/switch-to-scratch)
(define-key keymux-command-map (kbd "C-r") 'query-replace)
(define-key keymux-command-map (kbd "C-[") 'end-of-buffer)
(define-key keymux-command-map (kbd "C-]") 'beginning-of-buffer)

(define-key keymux-command-map (kbd "x e b") 'eval-buffer)
(define-key keymux-command-map (kbd "x e d") 'eval-defun)
(define-key keymux-command-map (kbd "x e l") 'eval-last-sexp)
(define-key keymux-command-map (kbd "x e r") 'eval-region)

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
(define-key keymux-command-map (kbd "<f12> g") 'wymux/git-clone)
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
(define-key keymux-command-map (kbd ",") 'repeat-complex-command)

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

(defun wymux/keymux-c-map ()
  "Define c modal functions.
Created: Wednesday, March-08-2023 19:47:28"
  (define-key keymux-command-map (kbd "SPC c") 'ggtags-create-tags)
  (define-key keymux-command-map (kbd "SPC f") 'ggtags-find-tag-dwim))

(defun wymux/keymux-exheres-mode-map ()
  "Bind keys for `exheres-mode'
Created: Tuesday, March-14-2023 19:14:59"
  (define-key keymux-command-map (kbd "SPC b") 'wymux/bump-exheres)
  (define-key keymux-command-map (kbd "SPC d") 'wymux/exherbo-download-package)
  (define-key keymux-command-map (kbd "SPC e") 'wymux/exherbo-ediff)
  (define-key keymux-command-map (kbd "SPC f") 'wymux/find-exlib)
  (define-key keymux-command-map (kbd "SPC t") 'wymux/exherbo-travel-local-compressed))

(defun wymux/unbind-keys ()
  "Unbind all 'C-h' major mode specific keys.
Created: Tuesday, March-14-2023 19:19:20"
  (unbind-key (kbd "SPC b"))
  (unbind-key (kbd "SPC d"))
  (unbind-key (kbd "SPC e"))
  (unbind-key (kbd "SPC f"))
  (unbind-key (kbd "SPC r"))
  (unbind-key (kbd "SPC t"))
  )
