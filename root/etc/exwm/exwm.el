(define-key exwm-mode-map [?\C-q] 'exwm-input-send-next-key)

(setq exwm-input-simulation-keys
      '(([?\C-b] . [left])
        ([?\C-f] . [right])
        ([?\C-p] . [up])
        ([?\C-n] . [down])
        ([?\C-a] . [home])
        ([?\C-e] . [end])
        ([?\C-u] . [prior])
        ([?\C-v] . [next])
        ([?\C-d] . [delete])
	([?\C-j] . [return])
        ([?\C-k] . [S-end delete])))

(add-hook 'exwm-update-class-hook
          (lambda ()
            (exwm-workspace-rename-buffer exwm-class-name)))

(setq exwm-input-global-keys
      `(
	([?\s-a] . execute-extended-command)
	(,(kbd "<kp-divide>") . previous-buffer)
	(,(kbd "<kp-multiply>") . next-buffer)
	(,(kbd "<kp-left>") . windmove-left)
	(,(kbd "<kp-right>") . windmove-right)
	(,(kbd "<kp-up>") . windmove-up)
	(,(kbd "<kp-down>") . windmove-down)
	(,(kbd "<kp-home>") . split-window-horizontally)
	(,(kbd "<kp-prior>") . split-window-vertically)
	(,(kbd "<kp-end>") . delete-window)
	(,(kbd "<kp-next>") . delete-frame)
	(,(kbd "<kp-insert>") . other-frame)
	(,(kbd "<kp-delete>") . make-frame-command)
	(,(kbd "<kp-begin>") . kill-current-buffer)
	(,(kbd "<kp-subtract>") . wymux/kill-buffer-delete-window)
	(,(kbd "<kp-enter>") . switch-to-buffer)
	([?\s-1] . delete-other-windows)
	([?\s-5] . balance-windows)
	([?\s-q] . kill-emacs)
	(,(kbd "<f6>") . tab-new)
	(,(kbd "<f7>") . tab-previous)
	(,(kbd "<f8>") . tab-next)
	(,(kbd "<f9>") . tab-switch)
	(,(kbd "<f10>") . tab-recent)
	(,(kbd "<f11>") . tab-undo)
	(,(kbd "<f12>") . tab-close)
	([<XF86MonBrightnessDown>] . wymux/darken-monitor)
	([<XF86MonBrightnessUp>] . wymux/brighten-monitor)	
	))

(add-hook 'after-init-hook
         (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output DP-1-1 --mode 3440x1440 --primary --rate 100 --above eDP1")))

(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(add-hook 'exwm-manage-finish-hook
          (lambda ()
            (when (and exwm-class-name
                       (string= exwm-class-name "firefox-default"))
              (keymux-to-insert))))

(add-hook 'window-state-change-hook
          (lambda ()
            (when (and exwm-class-name
                       (string= exwm-class-name "firefox-default"))
              (keymux-to-insert))))

(add-hook 'window-state-change-hook 'keymux-cursor-refresh)

(exwm-randr-enable)
(exwm-enable)
