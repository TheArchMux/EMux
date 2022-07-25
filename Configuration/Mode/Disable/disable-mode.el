;; Mode: Disable mode
;;	Have no use for these modes or they would be enabled.

(when auto-composition-mode
  (global-auto-composition-mode -1))

(when auto-compression-mode
    (auto-compression-mode -1))

(when auto-encryption-mode
  (auto-encryption-mode -1))

(when blink-cursor-mode
  (blink-cursor-mode -1))

(when electric-indent-mode
  (electric-indent-mode -1))

(when file-name-shadow-mode
  (file-name-shadow-mode -1))

(when global-font-lock-mode
  (global-font-lock-mode -1))

(when global-eldoc-mode
  (global-eldoc-mode -1))

(when line-number-mode
    (line-number-mode -1))

(when mouse-wheel-mode
    (mouse-wheel-mode -1))

(when tooltip-mode
    (tooltip-mode -1))

(when transient-mark-mode
  (transient-mark-mode -1))

