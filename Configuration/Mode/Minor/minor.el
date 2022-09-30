(auto-composition-mode		-1)
(auto-compression-mode		-1)
(global-eldoc-mode		-1)
(file-name-shadow-mode		-1)
(indent-tabs-mode		-1)
(line-number-mode		-1)
(mouse-wheel-mode		-1)
(tooltip-mode			-1)
(transient-mark-mode		-1)

;; Disable modes enabled by default
;;
;;

(setq window-divider-default-bottom-width 2)
(setq window-divider-default-right-width 2)

;; Configuration
;;
;;

(auto-insert-mode               1)
(auto-save-mode                 1)
(fringe-mode			2)
(global-hl-line-mode            1)
(savehist-mode			1)
(window-divider-mode		1)

;; (set-face-attribute hl-line-face nil :background "#EEEEEE")

;; Enable modes disabled by default
;;
;;

(load-file "~/Internet/Git/Emacs/Mode/zoom/zoom.el")

(zoom-mode 1)



(setq zoom-size '(0.538 . 0.538))
 
(fido-vertical-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-everywhere t)

;; Non-standard minor modes
;;
;;

