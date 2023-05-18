(defun exheres-mode-imenu-setup ()
  ""
  (setq imenu-generic-expression
        '((nil "^\\(DEPENDENCIES\\|DESCRIPTION\\|LICENCES\\|MYOPTIONS\\|SLOT\\|SUMMARY\\)" 1)
          (nil "^\\(src_compile\\|src_configure\\|\\*src_install\\|src_prepare\\)" 1)
          (nil "^\\(DEFAULT_SRC_\\(COMPILE_PARAMS\\|CONFIGURE_PARAMS\\|CONFIGURE_OPTION_ENABLES\\)\\)" 2))))

(add-hook 'exheres-mode-hook 'exheres-mode-imenu-setup)
(add-hook 'exlib-mode-hook 'exheres-mode-imenu-setup)

(customize-set-variable 'exheres-skeleton-realname "Edward Bates <gitmux@stemux.com>")
