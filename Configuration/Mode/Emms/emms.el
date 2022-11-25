(setq emms-source-file-default-directory "~/Media/Musica/")
(setq emms-player-mpd-music-directory "~/Media/Musica/")

(require 'emms-info-exiftool)
(require 'emms-history)
(require 'emms-mark)
(require 'emms-player-mpd)
(require 'emms-setup)

(emms-history-load)
(emms-minimalistic)

(setq emms-player-mpd-server-name "localhost")
(setq emms-player-mpd-server-port "6600")
(add-to-list 'emms-info-functions 'emms-info-mpd)
(add-to-list 'emms-player-list 'emms-player-mpd)

(setq emms-source-file-directory-tree-function 'emms-source-file-directory-tree-find)

(setq emms-info-functions '(emms-info-exiftool))

(emms-browser-make-filter
 "all-files" (emms-browser-filter-only-type 'file))

(add-hook 'emms-playlist-cleared-hook 'emms-player-mpd-clear)

(setq emms-player-mpd-supported-regexp
      (regexp-opt '(".ogg" ".mp3" ".wav" ".mpg" ".mpeg" ".wmv" ".wma" ".dsf"
                    ".mov" ".avi" ".divx" ".ogm" ".asf" ".mkv" "http://" "mms://"
                    ".rm" ".rmvb" ".mp4" ".flac" ".vob" ".m4a" ".flv" ".ogv" ".pls")))
