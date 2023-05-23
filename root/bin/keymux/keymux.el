(defun keymux-to-command ()
  "-> Command mode."
  (interactive)
  (keymux-modal-mode 1))

(defun keymux-to-insert ()
  "-> Insertion mode."
  (interactive)
  (keymux-modal-mode -1))

(defun wymux/keymux-c-map ()
  "Define c modal functions.
Created: Wednesday, March-08-2023 19:47:28"
  (let ((c-local-map (make-sparse-keymap)))
    (define-key c-local-map (kbd "SPC f") 'ggtags-find-tag-dwim)
    (define-key c-local-map (kbd "SPC r") 'ggtags-query-replace)
    (define-key c-local-map (kbd "SPC s") 'ggtags-find-other-symbol)
    (use-local-map (make-composed-keymap (list keymux-command-map c-local-map)))))

(defun wymux/keymux-exheres-mode-map ()
  "Bind keys for `exheres-mode'
Created: Tuesday, March-14-2023 19:14:59"
  (let ((exheres-local-map (make-sparse-keymap)))
    (define-key exheres-local-map (kbd "b") 'wymux/bump-exheres)
    (define-key exheres-local-map (kbd "d") 'wymux/exherbo-download-package)
    (define-key exheres-local-map (kbd "e") 'wymux/exherbo-ediff)
    (define-key exheres-local-map (kbd "f") 'wymux/find-exlib)
    (define-key exheres-local-map (kbd "i") 'wymux/insert-dependency)
    (define-key exheres-local-map (kbd "t") 'wymux/exherbo-travel-local-compressed)
    (use-local-map (make-composed-keymap (list keymux-command-map exheres-local-map)))))

(defun wymux/keymux-html-mode-map ()
  "Bind keys for `html-mode'
Created: Tuesday, May-16-2023 18:43:23"
  (let ((html-local-map (make-sparse-keymap)))
    (define-key html-local-map (kbd "SPC v") 'browse-url-of-buffer)
    (use-local-map (make-composed-keymap (list keymux-command-map html-local-map)))))

(defun keymux-cursor-enable ()
  "Set active `keymux-modal-mode' cursor.
Created: Sunday, April-02-2023 09:16:14"
  (set-cursor-color "#8888FF"))

(defun keymux-cursor-disable ()
  "Set inactive `keymux-modal' cursor.
Created: Sunday, April-02-2023 09:17:12"
  (set-cursor-color "#FF8888"))

(defun keymux-cursor-refresh ()
  "Refresh color of cursor.
Created: Sunday, April-02-2023 09:20:43"
  (if keymux-modal-mode
      (keymux-cursor-enable)
    (keymux-cursor-disable)))
