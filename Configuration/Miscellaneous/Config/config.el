(require 'autoinsert)

(setq auto-insert-directory (expand-file-name "Configuration/Mode/Auto-Insert/" user-emacs-directory))

(setq auto-insert-alist '(
			  (makefile-mode	. "makefile.template")))

(setq recentf-max-saved-items 1000)
(setq recentf-max-menu-items 1000)
(setq use-short-answers t)
(setq sentence-end-double-space t)
(setq mh-send-uses-spost-flag t)
(setq mail-user-agent 'mh-e-user-agent)
(setq exheres-skeleton-realname "Edward Bates")

(set-register ?b '(file . "~/.local/bin/"))
(set-register ?e '(file . "~/Internet/Compressed/Package/Exherbo/"))
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

(load-file "~/Internet/Git/Emacs/Utility/goto-last-point/goto-last-point.el")
(goto-last-point-mode)
