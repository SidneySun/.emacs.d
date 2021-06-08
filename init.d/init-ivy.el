;; https://oremacs.com/swiper/
;; apt install counsel
;; Download counsel
(unless (package-installed-p 'counsel)
(package-install 'counsel))

;; Enable ivy
(require 'ivy)
(ivy-mode 1)

(setq ivy-use-virtual-buffers t)

(provide 'init-ivy)
