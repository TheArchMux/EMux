(setq recentf-max-saved-items 1000)
(setq recentf-max-menu-items 1000)
(setq use-short-answers t)
(setq sentence-end-double-space nil)
(setq mh-send-uses-spost-flag t)
(setq mail-user-agent 'mh-e-user-agent)


(eval-after-load 'autoinsert
  '(define-auto-insert '("Makefile\\'" . "Makefile insert")
     '(
       "Short description: "
       "CC = gcc" \n
       "CFLAGS = -g" \n \n
       "PROG = program" \n
       "SRC = ${PROG}.c" \n
       "OBJ = ${PROG}.o" \n
       "all: ${PROG}" \n \n
       "${OBJ}: ${SRC}" \n
       > "${CC} -c ${SRC}" \n
       "${PROG}: ${OBJ}" \n
       > "${CC} -o $@ ${OBJ}" \n
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
    (side . top) (slot . 1) (preserve-size . (nil . t)))
    ))
