;; https://magit.vc/

;; Download magit
(unless (package-installed-p 'magit)
(package-install 'magit))

(provide 'init-magit)
