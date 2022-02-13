;; https://emacs-lsp.github.io/lsp-mode/page/installation/
;; lsp-mode
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  ;; (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (c-mode . lsp-deferred)
         (c++-mode . lsp-deferred)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-diagnostics-provider :none)
  :commands lsp lsp-deferred)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
;; (use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; http://company-mode.github.io/
(use-package company :config (global-company-mode t))

(provide 'init-lsp-mode)
