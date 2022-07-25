;; Package: load-relative
;;	Eases loading of decentralised files
;;	Load first allowing it to be used throughout Emacs configuration
;;	Link: https://github.com/rocky/emacs-load-relative

(load-file "~/Internet/Git/Emacs/Package/Utility/emacs-load-relative/load-relative.elc")

;; Visual: font
;;	Sarasa Mono CL
;;	Link: https://github.com/be5invis/Sarasa-Gothic

(load-relative "Configuration/Visual/font.el")

;; Visual: mode
;;	Configure modes enchaning visual asthetics
;;	Link: https://github.com/seagle0128/.emacs.d/raw/master/early-init.el

(load-relative "Configuration/Visual/mode.el")

;; Visual: theme
;;	Mindre
;;	Link: https://github.com/erikbackman/mindre-theme

(load-relative "Configuration/Visual/theme.el")

