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
	(,(kbd "M-<tab>") . other-window)
	(,(kbd "C-<tab>") . other-frame)))

;; (read-key)
(exwm-enable)
