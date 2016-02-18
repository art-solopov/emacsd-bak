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
