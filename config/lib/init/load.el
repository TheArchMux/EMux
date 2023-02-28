(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/exwm/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Window-Manager/xelb/")

(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/compat/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/benchmark-init-el.git/")
(load-file "~/Internet/Git/Emacs/Utility/benchmark-init-el.git/benchmark-init-modes.el")
(load-file "~/Internet/Git/Emacs/Utility/benchmark-init-el.git/benchmark-init.el")
(benchmark-init/activate)
(add-to-list 'load-path "~/Internet/Git/Emacs/Completion/flx.git/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/fzf-native.git/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/vertico.git/extensions/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Utility/with-editor/lisp/")
(add-to-list 'load-path "~/Internet/Git/Emacs/Git/magit/lisp/")
(load-file "~/Internet/Git/Emacs/Mode/zoom/zoom.el")

(load-file "~/Internet/Git/Emacs/Utility/goto-last-point/goto-last-point.el")
(load-file "~/Internet/Git/Emacs/Completion/flx.git/flx.elc")
(load-file "~/Internet/Git/Emacs/Completion/fussy.git/fussy.el")
(load-file "~/Internet/Git/Emacs/Mode/binky-mode.git/binky-mode.el")
(load-file "~/Internet/Git/Emacs/Mode/golden/golden.el")
(load-file "~/Internet/Git/Emacs/Mode/ggtags.git/ggtags.el")
(load-file "~/Internet/Git/Emacs/Utility/goto-last-point/goto-last-point.el")
(load-file "~/Internet/Git/Emacs/Utility/vertico.git/vertico.el")
(load-file "~/Internet/Git/Emacs/Modal/KeyWork/keywork.el")
(load-file "~/Internet/Git/Emacs/Completion/fussy.git/fussy.el")
(load-file "~/Internet/Git/Emacs/Utility/avy.git/avy.el")
(load-file "~/Internet/Git/Emacs/Utility/holymotion.git/holymotion.el")
(load-file "~/Internet/Git/Emacs/Utility/tempel.git/tempel.el")
(load-file "~/Internet/Git/Emacs/Utility/emacs-eat.git/eat.el")
(load-file "~/Internet/Git/Emacs/Utility/dash.el/dash.el")

(load "mailutils-mh")

(require 'autoinsert)
(require 'cl-lib)
(require 'dired)
(require 'emms-info-exiftool)
(require 'emms-history)
(require 'emms-mark)
(require 'emms-player-mpd)
(require 'emms-setup)
(require 'exwm)
(require 'exwm-config)
(require 'exwm-randr)
(require 'exheres-mode)
(require 'fzf-native)
(require 'hippie-exp)
(require 'tempo)
(require 'vertico-buffer)
(require 'vertico-grid)
(require 'vertico-multiform)
(require 'magit)