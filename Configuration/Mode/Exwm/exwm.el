(add-to-list 'load-path "~/Internet/Git/Emacs/xelb/")
(add-to-list 'load-path "~/Internet/Git/Emacs/exwm/")
;; (add-to-list 'load-path "~/Internet/Git/Emacs/switch-window/")

(require 'exwm)
(require 'exwm-config)
(define-key exwm-mode-map (kbd "C-q") 'exwm-input-send-next-key)

;; (exwm-input-set-key (kbd "s-<tab>") 'other-window)
(setq exwm-input-simulation-keys
      '(([?\C-b] . [left])
        ([?\C-f] . [right])
        ([?\C-p] . [up])
        ([?\C-n] . [down])
        ([?\C-a] . [home])
        ([?\C-e] . [end])
        ([?\M-v] . [prior])
        ([?\C-v] . [next])
        ([?\C-d] . [delete])
        ([?\C-k] . [S-end delete])))

(setq exwm-input-global-keys
      `(
	(,(kbd "s-f s-m") . make-frame-command)
	(,(kbd "s-<return>") . other-frame)
	(,(kbd "s-o") . other-window)
	(,(kbd "s-b s-s") . switch-to-buffer)
	(,(kbd "s-f s-d") . delete-frame)))

(setq exwm-workspace-number 5)

(setq exwm-manage-configurations 
      '(
	((member exwm-class-name '("Firefox")) workspace 2)
	((member exwm-class-name '("firefox")) workspace 2)
	((member exwm-class-name '("firefox-default")) workspace 2)
	((member exwm-class-name '("llpp")) char-mode t)
	((member exwm-class-name '("st-256color")) workspace 3)
	))

(add-hook 'exwm-update-class-hook
	  (lambda ()
	    (exwm-workspace-rename-buffer exwm-class-name)))

;; (setq exwm-workspace-minibuffer-position 'bottom)
;; (read-key)
(exwm-enable)



