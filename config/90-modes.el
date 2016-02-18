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
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(when (package-installed-p 'smex)
  (global-set-key (kbd "M-x") 'smex)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  )

(sml/setup)

;; Replace any project directory with an upcased name as a prefix
(add-to-list 'sml/replacer-regexp-list (list
                                         "^~/[Pp]rojects/\\([Bb]y-language/[[:alnum:]\|+.#]+/\\)?\\([[:alnum:]\|._-]+\\)"
                                        (lambda(s) (concat ":" (upcase (match-string 2 s)) ":"))
                                        ) t)
(add-to-list 'sml/replacer-regexp-list '("^:\\(.*\\):app/\\(\\w+\\)/" ":\\1|\\2:") t)
(add-to-list 'sml/replacer-regexp-list '("^:\\(.*\\):spec/\\(\\w+\\)/" ":\\1|spec/\\2:") t)


(setq magit-last-seen-setup-instructions "1.4.0")

(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(defun ecb-root ()
  (if (projectile-project-p)
      (list (projectile-project-root) (projectile-project-name))
    (list (getenv "HOME") "~")
    )
  )

(defun set-ecb-root-with-projectile ()
  (setq ecb-source-path (list (ecb-root)))
  )

(set-ecb-root-with-projectile)
(add-hook 'projectile-after-switch-project-hook 'set-ecb-root-with-projectile)

(require 'speedbar)

(speedbar-add-supported-extension ".rb")
(add-to-list 'speedbar-fetch-etags-parse-list
             '("\\.rb" . speedbar-parse-c-or-c++tag))
