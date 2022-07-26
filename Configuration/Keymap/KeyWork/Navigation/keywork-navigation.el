(KeyWork
 KeyWork-Normal
 "#FF0000" 	box

 ("j"		backward-word)
 ("k"		backward-char)
 ("l"		forward-char)
 (";"		forward-word)
 ("f"         end-of-line)
 ("a"	beginning-of-line)
 ("d"	next-line)
 ("s"		previous-line)
 ("["		forward-paragraph)
 ("]"		backward-paragraph)

 ("SPC"
  :(("x"
     :(("b" :(
	      ("p" backward-kill-paragraph)
	      ("s" backward-kill-sentence)
	      ("w" backward-kill-word)
	      ("x" backward-kill-sexp)
	      )
	))
     )
    ("a"	backward-sexp)
    ("f"		forward-sexp)
    ("s"		back-to-indentation)
    ("d"		forward-to-indentation)
    ("k"		beginning-of-defun)
    ("l"		end-of-defun)
    ("j"		up-list)
    (";"		down-list)
    ("t"		scroll-up-command)
    ("y"		scroll-down-command)
    ("["		end-of-buffer)
    ("]"		beginning-of-buffer)
))

 ("o"
	:(
	  ("d"	dired)
	  ("e"	eshell)
	  ("f"		find-file)
	  ("g"	gnus-other-frame)
	 )
 )

 ("u"			undo)

 ("w"
	:(
	  ("b"	switch-to-buffer-other-window)
	  ("f"		find-file-other-window)
	  ("h"	split-window-horizontally)
	  ("i"		info-other-window)
	  ("q"	delete-other-windows)
	  ("t"		scroll-other-window)
	  ("y"	scroll-other-window-down)
	  ("v"	split-window-vertically)
	  :(("SPC" :(
		       ("f"	find-function-other-window)
		       ("k"	find-function-on-key-other-window)
		       ("l"	find-library-other-window)
		       ("t"	find-tag-other-window)
		       ("v"	find-variable-other-window)
		       ("["	beginning-of-buffer-other-window)
		       ("]"	end-of-buffer-other-window)
		      )
	   ))
	 )
 )

 ("z"		save-buffer)
 ("'"		execute-extended-command)
 ("/"			isearch-forward)
 ("<tab>"		tab-to-tab-stop)
 ("i"		!KeyWork-Insertion)
)

