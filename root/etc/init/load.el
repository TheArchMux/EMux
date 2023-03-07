(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/exwm/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/xelb/")

(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/vertico.git/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/vertico.git/extensions")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/fzf-native.git/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Completion/flx.git")
(load-file "~/Internet/Git/Emacs/Completion/fussy.git/fussy.el")
(load-file "~/Internet/Git/Emacs/Utility/emacs-eat.git/eat.el")

(load-file "~/Internet/Git/Emacs/Modeline/feebleline/feebleline.el")

(add-to-list 'load-path "/usr/share/emacs/site-lisp/emms/")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/")
(load-file "/usr/share/emacs/site-lisp/mailutils-mh.el")

(require 'eat)
(require 'emms)
(require 'emms-history)
(require 'emms-playlist-mode)
(require 'emms-player-mpd)
(require 'emms-setup)
(require 'exwm)
(require 'exwm-randr)
(require 'fzf-native)
(require 'vertico)
(require 'vertico-grid)

