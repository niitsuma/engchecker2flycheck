(require 'flycheck)

;;(setq textgears-key "your textgeras key")

(flycheck-define-checker textgears
    "textgears check"
    :command  ("textgearschkfile"  source  (eval textgears-key )   )
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": " (message) line-end))
  :modes (text-mode markdown-mode))

(add-to-list 'flycheck-checkers 'textgears)

(flycheck-define-checker link-grammar
  "link-grammar check"
  :command ("linkgrammarengchkfile" source)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": " (message) line-end))
  :modes (text-mode markdown-mode))

(add-to-list 'flycheck-checkers 'link-grammar)


(flycheck-define-checker afterthedeadline
  "afterthedeadline check"
  :command ("afterthedeadlinechkfile" source)
  :error-patterns
  ((warning line-start (file-name) ":" line ":" column ": " (message) line-end))
  :modes (text-mode markdown-mode))

(add-to-list 'flycheck-checkers 'afterthedeadline)



(add-hook 'markdown-mode-hook 'flycheck-mode)
