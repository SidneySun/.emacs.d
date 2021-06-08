;; change the c indentation
(use-package google-c-style
  :ensure t
  :hook ((c-mode . google-set-c-style)
	 (c-mode . google-make-newline-indent)
	 (c++-mode . google-set-c-style)
	 (c++-mode . google-make-newline-indent)))

(provide 'init-style)
