(defun set-indent-to (spcnum)
  "Set the indentation to <spcnum> spaces"
  (set (make-local-variable 'standard-indent) spcnum)
  (set (make-local-variable 'tab-stop-list) (number-sequence spcnum 200 spcnum))
  (highlight-indentation-set-offset spcnum)
  )

(defun set-indent-to-2 () (set-indent-to 2))
(defun set-indent-to-4 () (set-indent-to 4))
(defun set-indent-to-8 () (set-indent-to 8))

