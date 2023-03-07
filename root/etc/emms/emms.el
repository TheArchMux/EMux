(require 'emms)
(require 'emms-history)
(require 'emms-playlist-mode)
(require 'emms-player-mpd)
(require 'emms-setup)

(setq emms-source-file-default-directory "~/Media/Musica/")
(setq emms-player-mpd-music-directory "~/Media/Musica/")

(emms-history-load)
(emms-minimalistic)

(setq emms-player-mpd-server-name "localhost")
(setq emms-player-mpd-server-port "6600")

(add-to-list 'emms-info-functions 'emms-info-mpd)
(add-to-list 'emms-player-list 'emms-player-mpd)

(add-hook 'emms-playlist-cleared-hook 'emms-player-mpd-clear)
