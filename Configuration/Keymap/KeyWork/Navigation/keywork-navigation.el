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
  ("SPC a"	backward-sexp)
  ("SPC f"	forward-sexp)
  ("SPC s"	scroll-down-command)
  ("SPC d"	scroll-up-command)
  ("SPC j"	backward-paragraph)
  ("SPC ;"	forward-paragraph)

 ("SPC" :(("k"
	    :(("b" :(
		("p" backward-kill-paragraph)
		("s" backward-kill-sentence)
		("w" backward-kill-word)
		("x" backward-kill-sexp)
		)
	    ))
	  ))
)

  ("i"		!KeyWork-Insertion)
)

