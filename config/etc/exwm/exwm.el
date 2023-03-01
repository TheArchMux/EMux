(setq exwm-manage-configurations '(
				   ((member exwm-class-name '("Firefox")) char-mode t)
				   ((member exwm-class-name '("llpp")) char-mode t)
				   ))

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

(defun wymux/keywork ()
  "Active keywork."
  (interactive)
  (funcall (kw-on 'kw-command)))

(defun wymux/bookmark ()
  "Bookmark."
  (interactive)
  (start-process "Bookmark" nil "bookmark.sh"))

(setq exwm-input-global-keys
      `(([?\s-o] . other-window)
        ([?\s-f] . other-frame)
	([?\s-m] . make-frame-command)
	([?\s-d] . delete-frame)
	([?\s-w] . delete-window)
	([?\s-4] . wymux/kill-delete-buffer)
	([?\s-q] . wymux/exwm-kill)
	([?\s-1] . delete-other-windows)
	([?\s-2] . split-window-vertically)
	([?\s-3] . split-window-horizontally)
	([?\s-b] . switch-to-buffer)
	([?\s-j] . windmove-left)
	([?\s-k] . windmove-down)
	([?\s-l] . windmove-up)
	([?\s-\;] . windmove-right)
	([?\s-x] . wymux/kill-current-buffer)
	([?\s-t] . wymux/term)
	([?\s-=] . next-buffer)
	([?\s-\-] . previous-buffer)
	([?\s-5] . balance-windows)))

(setq exwm-workspace-minibuffer-position 'top)
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output DP-1-1 --mode 3440x1440 --primary --rate 100")))

(defun wymux/exwm-init ()
  "Intialize firefox."
  (make-frame-command)
  (wymux/browser)
  (sleep-for 1 500)
  (other-frame 1))

(add-hook 'exwm-init-hook 'wymux/exwm-init)

(exwm-randr-enable)
(exwm-init)
