(setq KeyWork-mode t)
(KeyWork-on 'KeyWork-Navigation)

(add-hook 'minibuffer-setup-hook (lambda () (KeyWork-on 'KeyWork-Insertion)))

