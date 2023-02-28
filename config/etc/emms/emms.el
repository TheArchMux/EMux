(setq emms-source-file-default-directory "~/Media/Musica/")
(setq emms-player-mpd-music-directory "~/Media/Musica/")

(emms-history-load)
(emms-minimalistic)

(setq emms-player-mpd-supported-regexp (mapconcat 'regexp-quote '(".ogg" ".mp3" ".wav" ".mpg" ".mpeg" ".wmv" ".wma" ".dsf"
								  ".mov" ".avi" ".divx" ".ogm" ".asf" ".mkv" "http://" "mms://"
								  ".rm" ".rmvb" ".mp4" ".flac" ".vob" ".m4a" ".flv" ".ogv" ".pls") "\\|"))

(emms-player-set emms-player-mpd
		 'regex
		 emms-player-mpd-supported-regexp)

(setq emms-player-mpd-server-name "localhost")
(setq emms-player-mpd-server-port "6600")
(add-to-list 'emms-info-functions 'emms-info-mpd)
(add-to-list 'emms-player-list 'emms-player-mpd)

(setq emms-source-file-gnu-find "/usr/bin/find")
(setq emms-source-file-directory-tree-function 'emms-source-file-directory-tree-find)

(emms-browser-make-filter
 "all-files" (emms-browser-filter-only-type 'file))

(add-hook 'emms-playlist-cleared-hook 'emms-player-mpd-clear)

(setq emms-history-start-playing t)
(setq emms-player-finished-hook 'emms-show-all)