(defun archmux/eshell-completion ()
  "Tab complete in eshell."
  (interactive)
  (local-set-key (kbd "<tab>") 'completion-at-point)
  (local-set-key (kbd "C-g") #'archmux/ryo-modal-enable)
)

