(defvar wymux-pulse-command
  '(scroll-up-command scroll-down-command recenter-top-bottom other-window
		      windmove-left windmove-right windmove-up windmove-down)
  "Pulse after these commands")

(defun wymux/pulse-line (&rest _)
  "Pulse current line."
  (pulse-momentary-highlight-one-line (point)))

(dolist (command wymux-pulse-command)
  (advice-add command :after 'wymux/pulse-line))
