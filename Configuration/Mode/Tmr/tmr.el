(add-to-list 'load-path "~/Internet/Git/Emacs/tmr/")

(require 'tmr)
(require 'tmr-tabulated)

(setq tmr-sound-file "~/Media/Musica/Sound/Scale/D-major.mp3")

(defun archmux/tmr ()
  "Timer of 45 minutes then 50 minutes."
  (interactive)
  (tmr "45")
  (tmr "50"))
