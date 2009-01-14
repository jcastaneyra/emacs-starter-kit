;; Goto line: C-x g
(global-set-key (kbd "C-x g") 'goto-line)
(global-set-key (kbd "C-x C-g") 'goto-line)

;; remap C-z to something useful
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x C-z") 'suspend-emacs)

;; Make new mappings for M-x
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

;; setup function keys
(global-set-key "\M-[" 'kmacro-start-macro)
(global-set-key "\M-]" 'kmacro-end-or-call-macro)
(global-set-key [C-f5] 'revert-buffer)

;; Comment
(define-key global-map (kbd "C-M-;") 'comment-dwim)

;; Set return to be awesome
(define-key global-map (kbd "RET") 'newline-and-indent)

;; search and replace
(define-key global-map (kbd "C-c C-s") 'query-replace-regexp)

;; grep
(define-key global-map (kbd "C-c C-g") 'rgrep)

;; Mark paragraph
(global-set-key (kbd "M-p") 'mark-paragraph)

;; fullscreen: C-M-return
(global-set-key [C-M-return] 'mac-toggle-max-window)

;; whitespace
(define-key global-map (kbd "C-c C-w") 'whitespace-mode)
(define-key global-map (kbd "C-c w") 'whitespace-cleanup)
