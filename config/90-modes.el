;; This file contains the modes loads to use after the package loads.

(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(ac-config-default)

(global-undo-tree-mode)
(global-diff-hl-mode)
(show-paren-mode)
(global-linum-mode)
(global-auto-complete-mode)

(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)

(add-hook 'find-file-hook 'whitespace-mode)

(add-hook 'ruby-mode-hook 'ruby-tools-mode)

(when (package-installed-p 'smex)
  (global-set-key (kbd "M-x") 'smex)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  )

(setq magit-last-seen-setup-instructions "1.4.0")
