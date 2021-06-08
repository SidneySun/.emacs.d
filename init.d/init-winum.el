;; https://github.com/deb0ch/emacs-winum
;; Download winum
(unless (package-installed-p 'winum)
(package-install 'winum))

;; Enable winum
(require 'winum)
(winum-mode)

(provide 'init-winum)