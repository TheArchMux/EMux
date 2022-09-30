(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)
(add-hook 'find-file-not-found-functions 'archmux/find-file-create)

