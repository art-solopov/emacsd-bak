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
(global-set-key (kbd "C-x M-0") 'comment-or-uncomment-region)

;; Goto line
(global-set-key (kbd "M-p") 'goto-line)

;; Paste from the X clipboard
(global-set-key (kbd "C-x M-v") 'x-clipboard-yank)
(global-set-key (kbd "M-1") 'x-clipboard-yank)
