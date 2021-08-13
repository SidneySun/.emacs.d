;; https://github.com/emacsorphanage/git-gutter
;; Download git-gutter
(unless (package-installed-p 'git-gutter)
(package-install 'git-gutter))

;; Enable git-gutter
(require 'git-gutter)

;; If you enable global minor mode
(global-git-gutter-mode t)

;; https://github.com/emacsorphanage/git-gutter/issues/143
;; The display-line-numbers-mode is available since Emacs 26.
(add-hook 'c++-mode-hook 'display-line-numbers-mode)
(add-hook 'java-mode-hook 'display-line-numbers-mode)
(add-hook 'python-mode-hook 'display-line-numbers-mode)
;; (add-hook 'c++-mode-hook 'git-gutter-mode)

;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)

;; Revert current hunk
(global-set-key (kbd "C-x v r") 'git-gutter:revert-hunk)

(set-face-background 'git-gutter:modified "blue") ;; background color
(set-face-background 'git-gutter:added "green")
(set-face-background 'git-gutter:deleted "red")

(custom-set-variables
 '(git-gutter:added-sign " ")
 '(git-gutter:deleted-sign " ")
 '(git-gutter:modified-sign " "))

(provide 'init-git-gutter)
