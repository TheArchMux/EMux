(auto-composition-mode		-1)
(auto-compression-mode		-1)
(global-eldoc-mode		-1)
(file-name-shadow-mode		-1)
(fringe-mode			0)
(indent-tabs-mode		-1)
(line-number-mode		-1)
(mouse-wheel-mode		-1)
(tooltip-mode			-1)
(transient-mark-mode		-1)

;; Disable modes enabled by default
;;
;;

(auto-insert-mode               1)
(auto-save-mode			1)
(auto-save-visited-mode         1)
(global-hl-line-mode            1)
(savehist-mode			1)

;; Enable modes disabled by default
;;
;;

(load-file (concat user-emacs-directory "Configuration/Mode/Window-Divider/window_divider.el"))

;; Define `window-divider-mode' variables
;;
;;

(load-file (concat user-emacs-directory "Configuration/Mode/Ido/ido.el"))

;; Define `ido-mode' variables
;;
;;

(load-file (concat user-emacs-directory "Configuration/Mode/GGtags/ggtags.el"))

;; gg-tags mode
;; https://github.com/leoliu/ggtags
;;

