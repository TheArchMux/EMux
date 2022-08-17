;; Configuration: backup
;;	Set backups and auto-save files in centralised directory

(load-relative "Backup/backup.el")

;; Configuration: key-binding
;;	Bind function to key

(load-relative "Key-Binding/key-binding.el")

;; Package: with-editor
;;	Allows editing crontab in emacs

(load-relative "With-Editor/with-editor.el")

(load-relative "Authentication/authentication.el")

(load-relative "Pinentry/pinentry.el")

(load-file "~/Internet/Git/Emacs/portage/portage.el")