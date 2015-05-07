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
 '(enh-ruby-deep-indent-paren nil)
 '(global-whitespace-mode t)
 '(indent-tabs-mode nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("melpa" . "http://melpa.org/packages/"))))
 '(standard-indent 4)
 '(tab-stop-list (quote (4 8)))
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(whitespace-style (quote (face tabs trailing lines indentation empty space-after-tab))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-marker-1 ((t (:background "black")))))

(set-face-attribute 'default nil :height 140)

(require 'uniquify)

(defun after-init-packages ()
  (unless (package-installed-p 'f)
    (package-install 'f)
    )
  (unless (package-installed-p 'dash)
    (package-install 'dash)
    )
  (unless (package-installed-p 's)
    (package-install 's)
    )
  (require 'f)
  (require 'dash)
  (require 's)
  (add-to-list 'load-path "~/.emacs.d/config/")
  (dolist (fn 
           (-distinct
            (--map (f-base it) 
                   (--filter (s-ends-with? ".el" it) (f-entries "~/.emacs.d/config")))))
           (message fn)
           (load-library fn)
    )
)

(add-hook 'after-init-hook 'after-init-packages)
