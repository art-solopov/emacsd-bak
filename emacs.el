(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (\` ((".*" (\, temporary-file-directory) t))))
 '(backup-by-copying t)
 '(backup-directory-alist (\` ((".*" \, temporary-file-directory))))
 '(blink-cursor-mode t)
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(css-indent-offset 2)
 '(cua-enable-cua-keys t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (lush)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(delete-old-versions nil)
 '(ecb-options-version "2.40")
 '(enh-ruby-deep-indent-paren nil)
 '(global-discover-mode t)
 '(indent-tabs-mode nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "http://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(rich-minority-mode t)
 '(rm-blacklist
   (quote
    (" hl-p" " Undo-Tree" " MRev" " ws" " rt" " REl" " AC")))
 '(ruby-insert-encoding-magic-comment nil)
 '(speedbar-default-position (quote right))
 '(standard-indent 4)
 '(tab-stop-list (number-sequence 4 200 4))
 '(uniquify-buffer-name-style (quote post-forward-angle-brackets) nil (uniquify))
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-indentation nil)
 '(whitespace-style (quote (face tabs trailing indentation space-after-tab)))
 '(x-select-enable-clipboard-manager nil)
 '(x-select-enable-primary nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-marker-1 ((t (:background "black"))) t)
 '(cursor ((t (:background "white"))))
 '(highlight-indentation-face ((t (:background "#555")))))

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
(add-hook 'after-init-hook (lambda ()
                             (load-theme 'lush t)))
