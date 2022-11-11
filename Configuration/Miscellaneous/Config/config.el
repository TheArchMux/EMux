(setq recentf-max-saved-items 1000)
(setq recentf-max-menu-items 1000)
(setq use-short-answers t)
(setq sentence-end-double-space t)
(setq mh-send-uses-spost-flag t)
(setq mail-user-agent 'mh-e-user-agent)
(setq exheres-skeleton-realname "Edward Bates")

(eval-after-load 'autoinsert
  '(define-auto-insert '("Makefile\\'" . "Makefile insert")
     '(
       "Short description: "
       "CC = gcc" \n
       "CFLAGS = -g" \n
       "LDFLAGS = " \n \n
       "PROG = program" \n
       "SRC = ${PROG}.c" \n
       "OBJ = ${PROG}.o" \n
       "all: ${PROG}" \n \n
       "${OBJ}: ${SRC}" \n >
       "${CC} -c ${SRC} ${CFLAGS}" \n
       "${PROG}: ${OBJ}" \n >
       "${CC} -o $@ ${OBJ} ${LDFLAGS}" \n
       )
     )
  )

(set-register ?g '(file . "~/Internet/Git/"))
(set-register ?p '(file . "~/Media/Document/Programming/"))

(setq
 display-buffer-alist
 `(("\\*Buffer List\\*" display-buffer-in-side-window
    (side . top) (slot . 0) (window-height . fit-window-to-buffer)
    (preserve-size . (nil . t)) )
   ("\\*Tags List\\*" display-buffer-in-side-window
    (side . right) (slot . 0) (window-width . fit-window-to-buffer)
    (preserve-size . (t . nil)) )
   ("\\*\\(?:help\\|grep\\|Completions\\)\\*"
    display-buffer-in-side-window
    (window-min-height . 20) (side . bottom) (slot . -1) (preserve-size . (t . t))
    )
   ("\\*Man*\\|\\*info\\*"
    (display-buffer-use-some-frame display-buffer-pop-up-frame))
   ("\\*\\(?:shell\\|compilation\\|tex-shell\\)\\*" display-buffer-in-side-window
    (window-max-height . 30) (side . top) (slot . 1) (preserve-size . (nil . t)))
   ))

(load-file "~/Internet/Git/Emacs/Modeline/feebleline/feebleline.el")
(feebleline-mode 1)

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
  :map
  `(("a" execute-extended-command)
    ("u" undo)
    ("v" set-mark-command)
    ("y" yank))))

(keywork--add-child 'kw-command 'kw-command-mode-select)
(keywork--add-child 'kw-command 'kw-command-movement)
(keywork--add-child 'kw-command 'kw-command-program)
(keywork--add-child 'kw-command 'kw-command-file-and-buffer)
(keywork--add-child 'kw-command 'kw-command-digit)
(keywork--add-child 'kw-command 'kw-command-kill)
(keywork--add-child 'kw-command 'kw-command-help)

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
    ("/" wymux/reset-search))))

(setq
 kw-command-program
 (keywork--make-map
  :map
  `(("\\ e" emms)
    ("\\ m" mh-rmail)
    ("\\ s" eshell))))

(setq
 kw-command-file-and-buffer
 (keywork--make-map
  :map
  `(("f d" dired-jump)
    ("f f" find-file)
    ("f n" find-name-dired)
    ("f r" recentf-open-more-files)
    ("f s" save-buffer))))

(setq
 kw-command-kill
 (keywork--make-map
  :map
  `(("d d" kill-whole-line)
    ("d p" kill-paragraph)
    ("d s" kill-sexp)
    ("D" kill-line))))

(setq
 kw-command-help
 (keywork--make-map
  :map
  `(("h d c" describe-key)
    ("h d f" describe-function)
    ("h i" info)
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

(keywork-mode)
(funcall (kw-on 'kw-command))
(add-hook 'minibuffer-setup-hook (kw-on 'kw-insert))
(add-hook 'minibuffer-exit-hook (kw-on 'kw-command))
(push (lambda (_) (keywork-refresh)) window-selection-change-functions)
(push (lambda (_) (keywork-refresh)) window-buffer-change-functions)
