(setq emms-source-file-default-directory "~/Media/")
(setq emms-player-mpd-music-directory "~/Media/Musica/")

(emms-history-load)
(emms-minimalistic)

(setq emms-player-mpd-server-name "localhost")
(setq emms-player-mpd-server-port "6600")

(add-to-list 'emms-player-list 'emms-player-mpv)
(add-to-list 'emms-player-list 'emms-player-mpd)
(add-to-list 'emms-info-functions 'emms-info-mpd)

(add-hook 'emms-playlist-cleared-hook 'emms-player-mpd-clear)

(emms-player-set emms-player-mpv
                 'regex
                 (emms-player-simple-regexp
                  "webm"))

(emms-player-set emms-player-mpd
                 'regex
                 (emms-player-simple-regexp
                  "flac"))
