;; Package: load-relative
;;	Eases loading of decentralised files
;;	Load first allowing it to be used throughout Emacs configuration
;;	Link: https://github.com/rocky/emacs-load-relative

(load-file "~/Internet/Git/Emacs/emacs-load-relative/load-relative.elc")

;; Visual: font
;;	Sarasa Mono CL
;;	Link: https://github.com/be5invis/Sarasa-Gothic

(load-relative "Configuration/Visual/font.el")

;; Visual: mode
;;	Configure modes enchaning visual asthetics
;;	Link: https://github.com/seagle0128/.emacs.d/raw/master/early-init.el

(load-relative "Configuration/Visual/mode.el")

;; Visual: theme
;;	Load theme

(load-relative "Configuration/Visual/theme.el")

;; Package: no-littering

(load-relative "Configuration/Miscellaneous/No-Littering/no-littering.el")

;; Configuration: garbage collection

(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6)

;; Configuration: debug

(load-relative "Configuration/Miscellaneous/Debug/debug.el")

