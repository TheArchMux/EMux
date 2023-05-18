(setq gnus-select-method '(nntp "localhost"))

(setq gnus-save-newsrc-file nil)
(setq gnus-read-active-file 'some)
(setq gnus-article-save-directory "~/Media/Document/Gnus/News/")
(setq gnus-home-directory "~/Media/Document/Gnus/")
(setq message-directory "~/Media/Document/Gnus/Mail/")
(setq mail-source-directory nil)
(setq nnfolder-directory "~/Media/Document/Gnus/Mail/archive/")
(setq nnfolder-active-file "~/Media/Document/Gnus/Mail/archive/active")

(setq gnus-expert-user t)

(defun wymux/gnus-face-foreground ()
  "Set face of `gnus-group-mail-1'.
Created: Saturday, May-13-2023 10:09:34"
  (set-face-foreground 'gnus-group-mail-1 (face-foreground 'default)))

(add-hook 'gnus-mode-hook 'wymux/gnus-face-foreground)
