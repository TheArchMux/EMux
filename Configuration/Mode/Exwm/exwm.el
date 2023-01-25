(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/xelb/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/exwm/")

(require 'exwm)
(require 'exwm-config)
(require 'exwm-randr)

(setq exwm-manage-configurations '(
				   ((member exwm-class-name '("Firefox")) char-mode t)
				   ((member exwm-class-name '("llpp")) char-mode t)
				   ((member exwm-class-name '("dosbox")) char-mode t)
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
	([?\s-q] . wymux/exwm-kill)
	([?\s-2] . split-window-vertically)
	([?\s-3] . split-window-horizontally)
	([?\s-b] . switch-to-buffer)
	([?\s-j] . windmove-left)
	([?\s-k] . windmove-down)
	([?\s-l] . windmove-up)
	([?\s-\;] . windmove-right)
	([?\s-x] . kill-buffer)
	([?\s-t] . wymux/bookmark)))
;;

(setq exwm-workspace-minibuffer-position 'top)
(setq exwm-randr-workspace-output-plist '(1 "DP-1-0"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output DP-1-0 --rate 60 --above eDP1 --mode 3440x1440 --primary")))
(exwm-randr-enable)
;;;
(exwm-randr-enable)
(exwm-init)

(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)

