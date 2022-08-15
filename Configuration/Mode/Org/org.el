(require 'org)

(setq org-directory "~/Media/Document/Emacs/Org/")
(setq org-agenda-files (directory-files-recursively
			(concat org-directory "Agenda/") "agenda.org$"))

(setq org-capture-templates
      '(
	("t"	"Todo")
	("te" "Emacs-todo")
	("ted" "Emacs-Dired-todo" entry
	 (file+headline "~/Media/Document/Emacs/Org/Agenda/Emacs/Dired/agenda.org" "Task")
	 "* TODO %?\n %i\n %a")
	("tee" "Editing-todo" entry
	 (file+headline "~/Media/Document/Emacs/Org/Agenda/Emacs/Editing/agenda.org" "Task")
	 "* TODO %?\n %i\n %a")
	("tm" "Emacs-Org-todo" entry
	 (file+headline "~/Media/Document/Emacs/Org/Agenda/Emacs/Org/agenda.org" "Task")
	 "* TODO %?\n %i\n %a")
	("ts" "[Web]Site-todo" entry
	 (file+headline "~/Media/Document/Emacs/Org/Agenda/Website/agenda.org" "Task")
	 "* TODO %?\n %i\n %a")
	("tw" "Writing-todo" entry
	 (file+headline "~/Media/Document/Emacs/Org/Agenda/Writing/agenda.org" "Task")
	 "* TODO %?\n %i\n %a")
	("tp" "Programming-todo" entry
	 (file+headline "~/Media/Document/Emacs/Org/Agenda/Coding/agenda.org" "Task")
	 "* TODO %?\n %i\n %a")
	("tx" "Exherbo-Todo" entry
	 (file+headline "~/Media/Document/Emacs/Org/Agenda/Exherbo/agenda.org" "Task")
	 "* TODO %?\n %i\n %a")
	("")))

