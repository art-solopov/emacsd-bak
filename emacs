(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (\` ((".*" (\, temporary-file-directory) t))))
 '(backup-by-copying t)
 '(backup-directory-alist (\` ((".*" \, temporary-file-directory))))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(cua-enable-cua-keys t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wombat)))
 '(delete-old-versions nil)
 '(indent-tabs-mode nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(standard-indent 4)
 '(tab-stop-list (quote (4 8))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Droid Sans Mono"))))
 '(column-marker-1 ((t (:background "black")))))

(defun after-init-packages ()
  (unless (package-installed-p 'f)
    (package-install 'f)
    )
  (require 'f)
  (add-to-list 'load-path "~/.emacs.d/config/")
  (dolist (ffn (f-entries "~/.emacs.d/config"))
    (let* 'fn
      (setq fn (f-base ffn))
      (load-library fn)
      )
    )
)

(add-hook 'after-init-hook 'after-init-packages)
