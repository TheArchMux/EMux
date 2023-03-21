(require 'exwm)
(require 'exwm-randr)

(define-key exwm-mode-map [?\C-q] 'exwm-input-send-next-key)

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
        ([?\C-k] . [S-end delete])
	([?\C-y] . (?\C-c))))

(add-hook 'exwm-update-class-hook
          (lambda ()
            (exwm-workspace-rename-buffer exwm-class-name)))

(setq exwm-input-global-keys
      `(
	([?\s-a] . execute-extended-command)
	([?\s-f] . other-frame)
	([?\s-m] . make-frame-command)
	([?\s-d] . delete-frame)
	([?\s-w] . delete-window)
	([?\s-b] . switch-to-buffer)
	([?\s-=] . next-buffer)
	([?\s-\-] . previous-buffer)
	([?\s-1] . delete-other-windows)
	([?\s-2] . split-window-vertically)
	([?\s-3] . split-window-horizontally)
	([?\s-4] . wymux/kill-buffer-delete-window)
	([?\s-5] . balance-windows)
	([?\s-j] . windmove-left)
	([?\s-k] . windmove-down)
	([?\s-l] . windmove-up)
	([?\s-\;] . windmove-right)
	([?\s-x] . kill-current-buffer)
	([?\s-q] . kill-emacs)
	([<XF86MonBrightnessDown>] . wymux/darken-monitor)
	([<XF86MonBrightnessUp>] . wymux/brighten-monitor)	
	))

(add-hook 'after-init-hook
         (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output DP-1-1 --mode 3440x1440 --primary --rate 100 --above eDP1")))

(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(exwm-randr-enable)
(exwm-enable)
