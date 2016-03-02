;; TODO make the list more readable

(let (
      (sys-pkg '(f dash s))
      (git-pkg '(magit diff-hl))
      (ui-pkg '(undo-tree smex column-marker flx-ido dired-rainbow ag
                          company company-jedi ecb highlight-indentation hydra
                          smart-mode-line rich-minority discover
                          yasnippet django-snippets edbi es-windows
                          flycheck))
      (theme-pkg '(lush-theme))
      (ext-pkg '(ag))
      (projectile-pkg '(projectile projectile-rails))
      (ruby-pkg '(ruby-electric rspec-mode ruby-tools rvm ruby-additional))
      (lang-pkg '(haml-mode elixir-mode erlang coffee-mode markdown-mode
                            scss-mode yaml-mode js2-mode rust-mode))
      (web-pkg '(rainbow-mode web-mode))
      )
  (defvar package-list
    (-concat sys-pkg git-pkg ui-pkg theme-pkg ext-pkg projectile-pkg ruby-pkg
             lang-pkg web-pkg)
    "List of packages to install"
    )
  )


(defun package-list-install ()
  "Install the packages from package-list"
  (interactive)
 (dolist (pkg package-list)
    (unless (package-installed-p pkg)
      (package-install pkg)
      )
    )
)
