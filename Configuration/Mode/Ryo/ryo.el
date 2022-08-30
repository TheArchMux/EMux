(load-file "~/Internet/Git/Emacs/ryo-modal/ryo-modal.elc")

(ryo-modal-keys
   ("," ryo-modal-repeat)
   ("i" ryo-modal-mode)
   ("a" beginning-of-line)
   ("d"	backward-paragraph)
   ("s" forward-paragraph)
   ("f" end-of-line)
   ("j" backward-char)
   ("k" next-line)
   ("l" previous-line)
   (";" forward-char)
   ("y" scroll-down-command)
   ("t"	scroll-up-command)
   ("m" set-mark-command)
   ("u" undo)
   ("p" yank)
   
   )

(ryo-modal-key
 "q"	'(
	  ("b"		kill-buffer)
	  ("e"		kill-emacs)
	  ("p"		kill-paragraph)
	  ("q"		kill-whole-line)
	  ("s"		kill-sentence)
	  ("w"		kill-word)
	  ("t"		kill-sexp)
	  )
 )

(ryo-modal-key
 "- q"	'(
	  ("p"		backward-kill-paragraph)
	  ("s"		backward-kill-sentence)
	  ("w"		backward-kill-word)
	  ("t"		backward-kill-sexp)
	  )
 )

(ryo-modal-key
 "SPC" '(
   ("2" split-window-horizontally)
   ("3" split-window-vertically)
   ("0" delete-window)
   ("9" delete-other-windows)))

(ryo-modal-key
 "SPC e"	'(
		  ("b"		eval-buffer)
		  ("d"		eval-defun)
		  ("e"		eval-expression)
		  ("l"		eval-last-sexp)
		  ("p"		eval-print-last-sexp)
		  ("r"		eval-region)
		  )
 )

(ryo-modal-key "SPC m" 'man)

(ryo-modal-key "SPC c"
	       '(("c"	compile)))

(ryo-modal-key "SPC f"
	       '(("c"	archmux/open-collection-file)
		 ("d"	dired-find-file)
		 ("f"	find-file)
		 ("p"	find-file-at-point)
		 ("x"	save-buffer))
	       )

(ryo-modal-key "SPC i" 'ispell)

(ryo-modal-key
 "SPC h"
 '(
   ("a"
    (("a"	apropos)
     ("c"	apropos-command)
     ("f"	apropos-function)
     ("l"	apropos-library)
     ("v"	apropos-variable))
    :name "apropos")
   ("d"
    (
     ("b"	describe-buffer-bindings)
     ("c"	describe-command)
     ("f"	describe-function)
     ("k"	describe-key)
     ("m"	describe-mode)
     ("p"	describe-package)
     ("v"	describe-variable)))
   ("f"
    (
     ("x"
      (
       ("f"
	(
	 ("f"	find-function-other-frame)
	 ("k"	find-function)
	 ("w"	find-function-other-window)
	 )
	)
       ("k"
	(
	 ("f"	find-function-on-key-other-frame)
	 ("k"	find-function-on-key)
	 ("w"	find-function-on-key-other-window)
	 )
         ("p"	find-function-at-point))))))
   ("i"
    (
     ("a"	info-apropos)
     ("e"	info-emacs-manual)
     ("i"	Info-index)
     ("g"
      (
       ("c"	Info-goto-emacs-command-node)
       ("k"	Info-goto-emacs-key-command-node)
       )
      )
     ))))

;; (global-set-key (kbd "RET") 'ryo-modal-mode)

