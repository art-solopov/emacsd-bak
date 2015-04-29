;; This file contains the modes loads to use after the package loads.

(ido-mode)
(enh-ruby-mode)
(global-undo-tree-mode)
(global-diff-hl-mode)
(show-paren-mode)
(when (package-installed-p 'smex)
  (global-set-key (kbd "M-x") 'smex)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  )
(markdown-mode)
(coffee-mode)
(yaml-mode)
