(defun my-ruby-mode-hook ()
  (define-key ruby-mode-map (kbd "C-h C-r") 'open-ruby-doc)
  (define-key ruby-mode-map (kbd "C-h C-l") 'open-rails-doc))

(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)

