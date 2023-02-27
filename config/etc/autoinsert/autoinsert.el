(setq auto-insert-alist
      (cons '("Makefile" .
	      (lambda ()
		(let (choice)
		  (setq choice (completing-read "Choose template: " '("C" "C++")))
		  (cond
		   ((string= choice "C")
		    (insert-file
		     "/home/wymux/.config/emacs/config/lib/auto-insert/makefile_c.template"))
		   ((string= choice "C++")
		    (insert-file
		     "/home/wymux/.config/emacs/config/lib/auto-insert/makefile_cpp.template"))))))
	    auto-insert-alist))
