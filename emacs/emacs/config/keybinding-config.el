;; bind them
(global-set-key [(control kp-add)] 'previous-buffer)
(global-set-key [(control kp-subtract)] 'next-buffer)
(global-set-key [f2] 'other-window)       ;convenient shortcuts.
(global-set-key [f3] 'kill-this-buffer)

;;eclim
(global-set-key (kbd "C-c C-e c r") 'eclim-run-class)
