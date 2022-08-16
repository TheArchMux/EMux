(setq inhibit-startup-screen t)

(add-to-list 'load-path "~/Internet/Git/Emacs/almost-mono-themes/")
(add-to-list 'custom-theme-load-path "~/Internet/Git/Emacs/almost-mono-themes/")
(load-file "~/.config/emacs/elpaca/builds/dash/dash.elc")
(load-theme 'almost-mono-white t)
