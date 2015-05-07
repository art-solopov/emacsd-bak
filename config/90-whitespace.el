(defun add-lines-to-whitespace ()
  (whitespace-toggle-options 'lines)
)

(add-hook 'ruby-mode-hook 'add-lines-to-whitespace)
(add-hook 'enh-ruby-mode-hook 'add-lines-to-whitespace)
(add-hook 'python-mode-hook 'add-lines-to-whitespace)
(add-hook 'perl-mode-hook 'add-lines-to-whitespace)
(add-hook 'erlang-mode-hook 'add-lines-to-whitespace)
(add-hook 'elixir-mode-hook 'add-lines-to-whitespace)
