;; Windmove
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Highlight indentation
(global-set-key (kbd "C-x M-i") 'highlight-indentation-mode)

;; Comments
(global-set-key (kbd "M-0") 'comment-or-uncomment-region)

;; Goto line
(global-set-key (kbd "M-p") 'goto-line)

;; Browse-kill-ring
(global-set-key (kbd "C-x C-k") 'browse-kill-ring)

;; Speedbar
(global-set-key (kbd "<f6>") 'speedbar-get-focus)

;; ES-window
(global-set-key (kbd "C-c C-.") 'esw/select-window)
(global-set-key (kbd "C-c C-,") 'esw/show-buffer)

;; Imenu
(global-set-key (kbd "C-c f") 'imenu)

;; "Killing" various stuff
(defun msg-and-kill (stuff)
  (message stuff)
  (kill-new stuff)
  )

;; Copy current file path
(defun copy-full-file-path ()
  "Copy full file path"
  (interactive)
  (msg-and-kill buffer-file-name)
  )
(defun copy-local-file-path ()
  "Copy project-local (projectile-local) file path"
  (interactive)
  (msg-and-kill
   (s-replace (projectile-project-root) "" buffer-file-name)
   )
  )


(global-set-key (kbd "C-c 2") 'copy-local-file-path)
(global-set-key (kbd "C-c @") 'copy-full-file-path)
