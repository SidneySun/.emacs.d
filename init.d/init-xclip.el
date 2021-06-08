;; apt install xclip
;; Download xclip
(unless (package-installed-p 'xclip)
(package-install 'xclip))

;; Enable xclip
(require 'xclip)
(xclip-mode 1)

(provide 'init-xclip)
