;; Set up package.el to work with MELPA
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
;; (package-refresh-contents)

;; use-package
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

(add-to-list 'load-path "~/.emacs.d/init.d")
(require 'init-evil)
(require 'init-git-gutter)
(require 'init-ivy)
(require 'init-lsp-mode) ;;
(require 'init-magit) ;;
(require 'init-projectile) ;;
(require 'init-style)
(require 'init-theme)
(require 'init-treemacs)
(require 'init-vterm)
(require 'init-which-key)
(require 'init-winum) ;;
(require 'init-xclip)
