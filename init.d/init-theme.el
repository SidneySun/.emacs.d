;; close bar
(menu-bar-mode 0)

;; https://github.com/nashamri/spacemacs-theme
(unless (package-installed-p 'spacemacs-theme)
(package-install 'spacemacs-theme))
(load-theme 'spacemacs-dark)

;; (load-theme 'tango-dark t)
;; (load-theme 'zenburn t)
;; (load-theme 'doom-one t)

(provide 'init-theme)
