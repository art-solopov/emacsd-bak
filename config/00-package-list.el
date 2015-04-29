;; TODO make the list more readable
(defvar package-list
  '(
    f
    dash
    s
    magit
    undo-tree
    ruby-mode
    ruby-end
    rspec-mode
    smex
    haml-mode
    elixir-mode
    erlang
    coffee-mode
    column-marker
    diff-hl
    markdown-mode
    ruby-tools
    rvm
    scss-mode
    undo-tree
    yaml-mode
    )
  "List of packages to install")

(defun package-list-install ()
  "Install the packages from package-list"
  (interactive)
  (dolist (pkg package-list)
    (unless (package-installed-p pkg)
      (package-install pkg)
      )
    )
)
