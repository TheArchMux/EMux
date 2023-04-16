(defvar wymux-pulse-command
  '(scroll-up-command scroll-down-command recenter-top-bottom other-window
		      windmove-left windmove-right windmove-up windmove-down)
  "Pulse after these commands")

(defun wymux/pulse-line (&rest _)
  "Pulse current line."
  (pulse-momentary-highlight-one-line (point)))

(defun wymux/pulse-add ()
  "Add pulse.
Revised: Thursday, April-06-2023 22:09:17"
  (dolist (command wymux-pulse-command)
    (advice-add command :after 'wymux/pulse-line)))

(defun wymux/pulse-remove ()
  "Remove pulse.
Created: Thursday, April-06-2023 22:09:40"
  (dolist (command wymux-pulse-command)
    (advice-remove command 'wymux/pulse-line)))

(wymux/pulse-add)
