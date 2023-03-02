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
    ("o" open-line)
    ("z" zap-up-to-char)
    ("C-v" visual-line-mode)
    ("C-\\" recenter-top-bottom)
    ("C-0" read-only-mode)
    ("C-r" query-replace)
    ("<f5>" compile))))

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
(keywork--add-child 'kw-command 'kw-command-project)
(keywork--add-child 'kw-command 'kw-command-emms)
(keywork--add-child 'kw-command 'kw-command-twelve)
(keywork--add-child 'kw-command 'kw-command-comment)
(keywork--add-child 'kw-command 'kw-command-c)
(keywork--add-child 'kw-command 'kw-command-dynamic)

(keywork--add-child 'kw-dired 'kw-command)
(keywork--add-child 'kw-dired 'kw-command-movement)
(keywork--add-child 'kw-dired 'kw-command-program)
(keywork--add-child 'kw-dired 'kw-command-file-and-buffer)

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
    ("C-<return>" back-to-indentation)
    ("[" forward-paragraph)
    ("]" backward-paragraph)
    ("n" wymux/search-forward)
    ("N" wymux/search-backward)
    ("C-s" wymux/reset-search)
    ("C-[" end-of-buffer)
    ("C-]" beginning-of-buffer)
    ("t" binky-binky)
    ("<tab> <tab>" indent-region)
    ("<tab> i" tab-to-tab-stop)
    ("." repeat))))

(setq
 kw-command-program
 (keywork--make-map
  :map
  `(("\\ e" emms)
    ("\\ g" gnus-other-frame)
    ("\\ m" mh-rmail)
    ("\\ q" wymux/gitlab-qr)
    ("\\ s" magit))))

(setq
 kw-command-file-and-buffer
 (keywork--make-map
  :map
  `(("f a" wymux/find-all)
    ("f d" dired-jump)
    ("f e" wymux/find-exheres)
    ("f f" find-file)
    ("f l" locate)
    ("f m" wymux/find-makefile)
    ("f n" find-name-dired)
    ("f p" find-file-at-point)
    ("f r" wymux/recentf-find)
    ("f s" save-buffer)
    ("f t" wymux/find-tmp)
    ("r j" jump-to-register))))

(setq
 kw-command-kill
 (keywork--make-map
  :map
  `(("d b" wymux/kill-buffer)
    ("d d" kill-whole-line)
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
    ("h d d" describe-function)
    ("h d f" find-function)
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
  `(("SPC e b" eval-buffer)
    ("SPC e d" eval-defun)
    ("SPC e e" eval-expression)
    ("SPC e l" eval-last-sexp)
    ("SPC e r" eval-region))))

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

(setq
 kw-command-project
 (keywork--make-map
  :map
  `(("SPC p b" project-switch-to-buffer)
    ("SPC p c" project-compile)
    ("SPC p d" project-dired)
    ("SPC p f" project-find-file)
    ("SPC p k" project-kill-buffers)
    ("SPC p p" project-switch-project)
    ("SPC p s" project-shell)
    ("SPC p x" project-forget-project)
    ("SPC p i" project-shell-command))))

(setq
 kw-command-emms
 (keywork--make-map
  :map
  `(("<f10> a d" emms-add-directory)
    ("<f10> a f" emms-add-find)
    ("<f10> a t" emms-add-directory-tree)
    ("<f10> b a" emms-browse-by-album)
    ("<f10> b b" emms-browser)
    ("<f10> c r" emms-player-mpd-update-all-reset-cache)
    ("<f10> m c" emms-player-mpd-connect)
    ("<f10> m u" emms-player-mpd-update-all)
    ("<f10> p d" emms-play-directory)
    ("<f10> p f" wymux/emms-play-find)
    ("<f10> p t" emms-play-directory-tree)
    ("<f10> s a" emms-show-all)
    ("<f10> s s" emms-show)
    ("<f10> t r" emms-toggle-repeat-track)
    ("<f10> v" emms-mark)
    ("<XF86AudioNext>" emms-next)
    ("<XF86AudioPrev>" emms-previous)
    ("<XF86AudioPlay>" emms-start)
    ("<XF86AudioStop>" emms-stop))))

(setq
 kw-command-c
 (keywork--make-map
  :map
  `(("SPC g t" ggtags-find-tag-dwim)
    ("SPC g s" ggtags-find-other-symbol)
    ("SPC g g" ggtags-grep)
    ("SPC g p" previous-error-no-select)
    ("SPC g n" next-error-no-select))))

(setq
 kw-command-twelve
 (keywork--make-map
  :map
  `(("<f12> t" wymux/terminal)
    ("<f12> w" wymux/browser)
    ("<f12> d" wymux/dmenu)
    ("<f12> r" wymux/document-read)
    ("<f12> g" wymux/git-clone)
    ("<f12> v" wymux/video-view)
    ("<f12> 1" wymux/time))))

(setq
 kw-command-comment
 (keywork--make-map
  :map
  `(("c b" comment-box)
    ("c k" kill-comment)
    ("c l" comment-line)
    ("c r" comment-or-uncomment-region))))

(setq
 kw-dired
 (keywork--make-map
  :color "#FF00FF"
  :map
  `(("\ b" wymux/bump-exheres)
    ("r j" jump-to-register)
    ("`" dired-up-directory)
    ("+" make-directoy))))

(setq
 kw-html
 (keywork--make-map
  :color "#FF00FF"
  :map
  `(("C-b" wymux/insert-br))))

(setq
 kw-command-dynamic
 (keywork--make-map
  :map
  `(("C-b" wymux/insert-br))))

(keywork-mode)
(funcall (kw-on 'kw-command))
(add-hook 'minibuffer-setup-hook (kw-on 'kw-insert))
(add-hook 'minibuffer-exit-hook (kw-on 'kw-command))
(push (lambda (_) (keywork-refresh)) window-selection-change-functions)
(push (lambda (_) (keywork-refresh)) window-buffer-change-functions)

(eval-after-load 'c
  (keywork--add-child 'kw-command 'kw-command-c))

(eval-after-load 'dired
  (kw-on 'kw-dired))

(eval-after-load 'html
  (keywork--add-child 'kw-command 'kw-html))

(funcall (kw-on 'kw-command))
