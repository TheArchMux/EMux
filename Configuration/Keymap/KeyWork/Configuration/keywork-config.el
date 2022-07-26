(setq KeyWork-mode t)
(KeyWork-on 'KeyWork-Normal)

(add-hook 'minibuffer-setup-hook (lambda () (KeyWork-on 'KeyWork-Insertion)))

