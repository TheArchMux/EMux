(defun archmux/ryo-modal-enable ()
    "Enable ryo-modal-mode globally."
      (interactive)
      (ryo-modal-mode 1)
)

(defun archmux/ryo-modal-disable ()
    "Disable ryo-modal-mode globally."
      (interactive)
      (ryo-modal-mode -1)
)

;; Self insert keys

(load-file (concat user-emacs-directory "Keymap/Self-insert/self-insert-map.el"))

(define-key global-map (kbd "<tab>") 'tab-to-tab-stop)
(define-key global-map (kbd "RET") 'newline)
(define-key global-map (kbd "DEL") 'delete-backward-char)
(define-key global-map (kbd "<C-backspace>") 'backward-kill-word)
(define-key global-map (kbd "<tab>") #'archmux/ryo-modal-enable)

(define-key minibuffer-local-map (kbd "<tab>") 'minibuffer-complete)
;; (define-key minibuffer-local-map (kbd "C-g") #'archmux/ryo-modal-enable)
(define-key minibuffer-local-shell-command-map (kbd "<tab>") 'completion-at-point)
(define-key minibuffer-local-shell-command-map (kbd "C-g") #'archmux/ryo-modal-enable)

(add-hook 'eshell-mode-hook 'archmux/eshell-completion)

(define-key global-map (kbd "C-c") 'hippie-expand)
