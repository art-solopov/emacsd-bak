(defun set-indent-to (spcnum)
  "Set the indentation to <spcnum> spaces"
  (set (make-local-variable 'standard-indent) spcnum)
  (set (make-local-variable 'tab-stop-list) (number-sequence spcnum 200 spcnum))
  (set (make-local-variable 'web-mode-code-indent-offset spcnum))
  (set (make-local-variable 'web-mode-markup-indent-offset spcnum))
  (highlight-indentation-set-offset spcnum)
  )

(defun set-indent-to-2 () (set-indent-to 2))
(defun set-indent-to-4 () (set-indent-to 4))
(defun set-indent-to-8 () (set-indent-to 8))

(add-hook 'ruby-mode-hook 'set-indent-to-2)
(add-hook 'coffee-mode-hook 'set-indent-to-2)
(add-hook 'scss-mode-hook 'set-indent-to-2)
(add-hook 'css-mode-hook 'set-indent-to-2)
(add-hook 'haml-mode-hook 'set-indent-to-2)

(add-hook 'perl-mode-hook 'set-indent-to-8)
