(setq emms-source-file-default-directory "~/Media/Musica/")
(setq emms-player-mpd-music-directory "~/Media/Musica/")

(require 'emms-setup)
(require 'emms-player-mpd)
(require 'emms-mark)

(emms-history-load)
(emms-minimalistic)

(setq emms-player-mpd-server-name "localhost")
(setq emms-player-mpd-server-port "6600")
(add-to-list 'emms-info-functions 'emms-info-mpd)
(add-to-list 'emms-player-list 'emms-player-mpd)

(setq emms-source-file-directory-tree-function 'emms-source-file-directory-tree-find)

(require 'emms-info-exiftool)
(setq emms-info-functions '(emms-info-exiftool))

(emms-browser-make-filter
 "all-files" (emms-browser-filter-only-type 'file))

(emms-player-mpd-connect)

(add-hook 'emms-playlist-cleared-hook 'emms-player-mpd-clear)
