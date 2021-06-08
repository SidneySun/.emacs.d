;; https://www.emacswiki.org/emacs/UndoTree
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

;; https://www.emacswiki.org/emacs/Evil
(use-package evil
  :after (undo-tree)
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (setq evil-undo-system 'undo-tree)
  (evil-mode 1))

;; https://github.com/emacs-evil/evil-collection
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide 'init-evil)
