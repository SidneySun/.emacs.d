;; https://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; https://orgmode.org/manual/Tracking-TODO-state-changes.html
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "|" "CANCEL(c)" "DONE(d)")))

(setq org-agenda-files '("~/Documents/Notes.org"))

(provide 'init-org)
