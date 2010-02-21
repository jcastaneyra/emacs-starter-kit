(defun my-paredit-mode-hook ()
  (define-key paredit-mode-map (read-kbd-macro "<M-up>") nil)
  (define-key paredit-mode-map (read-kbd-macro "<M-down>") nil)
  (define-key paredit-mode-map (read-kbd-macro "<M-left>") nil)
  (define-key paredit-mode-map (read-kbd-macro "<M-right>") nil))

(add-hook 'paredit-mode-hook 'my-paredit-mode-hook)
