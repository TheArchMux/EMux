(defun wymux/ggtags-navigation-mode-done ()
  "Kill buffer after `ggtags-navigation-mode-done'.
Created: Tuesday, March-14-2023 20:26:57"
  (interactive)
  (ggtags-navigation-mode-done)
  (kill-buffer-and-window))
