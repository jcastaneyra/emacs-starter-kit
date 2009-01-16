(defun my-ruby-mode-hook ()
  (define-key ruby-mode-map (kbd "C-h C-r") 'open-ruby-doc)
  (define-key ruby-mode-map (kbd "C-h C-l") 'open-rails-doc))

(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)


;; rhtml
;; setup rhtml
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/rhtml-mode"))
(autoload 'rhtml-mode "rhtml-mode" nil t)
(eval-after-load 'rhtml-mode
  '(progn
     (add-hook 'rhtml-mode-hook
               (lambda () (rinari-launch)))
     (set-face-background 'erb-face "grey15")
     (set-face-background 'erb-delim-face "grey10")
     (define-key rhtml-mode-map (kbd "C-h C-r") 'open-ruby-doc)
     (define-key rhtml-mode-map (kbd "C-h C-l") 'open-rails-doc)))

(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))


