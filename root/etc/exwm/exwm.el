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
	 ([?\s-t] . switch-to-buffer)
	 ([?\s-0] . delete-other-windows)
	 (,(kbd "<kp-up>") . delete-window)
	 ([?\s-1] . delete-other-windows)
	 ([?\s-5] . balance-windows)
	 ([?\s-q] . kill-emacs)
	 ([?\s-k] . windmove-left)
	 ([?\s-l] . windmove-down)
	 ([?\s-\;] . windmove-up)
	 ([?\s-\'] . windmove-right)
	 ([?\s-f] . other-frame)
	 (,(kbd "<kp-home>") . wymux/split-window-horizontally)
	 (,(kbd "<kp-prior>") . wymux/split-window-vertically)
	 ([<XF86MonBrightnessDown>] . wymux/darken-monitor)
	 ([<XF86MonBrightnessUp>] . wymux/brighten-monitor)
	 (,(kbd "<kp-left>") . previous-buffer)
	 (,(kbd "<kp-begin>") . other-window)
	 (,(kbd "<kp-right>") . next-buffer)
	 (,(kbd "<kp-end>") . wymux/split-window-horizontally)
	 (,(kbd "<kp-next>") . wymux/split-window-vertically)
	 (,(kbd "<kp-down>") . kill-current-buffer)
	 (,(kbd "<kp-insert>") . wymux/kill-buffer-delete-window)
	 ))

(defvar wymux-exwm-repeat-command '(previous-buffer
				    next-buffer
				    windmove-right
				    windmove-left
				    windmove-up
				    windmove-down
				    delete-window
				    split-window-vertically
				    split-window-horizontally
				    other-frame))

(defvar exwm-repeat-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "f") #'other-frame)
    (define-key map (kbd "t") #'split-window-horizontally)
    (define-key map (kbd "y") #'split-window-vertically)
    (define-key map (kbd "g") #'keyboard-quit)
    map))

(dolist (cmd wymux-exwm-repeat-command)
  (put cmd 'repeat-map 'exwm-repeat-map))

(setq ediff-window-setup-function 'ediff-setup-windows-plain)

 (add-hook 'after-init-hook
           (lambda ()
	     (make-frame)
	     (other-frame 1)))

(add-hook 'after-init-hook
           (lambda ()
             (start-process-shell-command
              "xrandr" nil "xrandr --output DP-1-1 --mode 3440x1440 --primary --rate 100 --above eDP1")))

(add-hook 'window-state-change-hook
           (lambda ()
             (when (and exwm-class-name
			(string= exwm-class-name "firefox-default"))
               (keymux-to-insert))))

(add-hook 'window-state-change-hook 'keymux-cursor-refresh)

(exwm-randr-enable)
(exwm-enable)
