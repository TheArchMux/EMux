(setq tempo-interactive t)
(defvar c++-tempo-tags nil
  "Tempo tags for C++ mode.")

(defvar c-tempo-tags nil
  "Tempo tags for C mode.")

(add-hook 'c-mode-hook #'(lambda ()
			   (tempo-use-tag-list 'c-tempo-tags)))

(tempo-define-template "c-include"
		       '("#include <" (p "Header: " header) ".h>" > n)
		       "#include"
		       "Insert a #include <> statement"
		       'c-tempo-tags)

(tempo-define-template "c-include-quote"
		       '("#include \"" (p "Header: " header) ".h\"" > n)
		       "#include"
		       "Insert a #include <> statement"
		       'c-tempo-tags)

(tempo-define-template "c-if"
		       '("if (" (p "if: " if) ") {" n> r> ";" n>
			 "}")
		       "if"
		       "Insert a C if-statement"
		       'c-tempo-tags)

(tempo-define-template "c++-include"
		       '("#include <" (p "Header: " header) ">" > n)
		       "#include"
		       "Insert a #include <> statement"
		       'c-tempo-tags)

(tempo-define-template "c++-out"
		       '("\tstd::cout << \"\\n\";")
		       "cout"
		       "Insert output new line to console"
		       'c++-tempo-tags)
