;; This file contains the modes loads to use after the package loads.

(ido-mode)
(global-undo-tree-mode)
(global-rinari-mode)
(global-diff-hl-mode)
(show-paren-mode)
(when (package-installed-p 'smex)
  (global-set-key (kbd "M-x") 'smex)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  )

