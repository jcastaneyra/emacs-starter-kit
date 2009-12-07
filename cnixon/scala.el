;; scala
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/scala-mode"))
(autoload 'scala-mode "scala-mode-auto" nil t)
(add-to-list 'auto-mode-alist '("\\.scala" . scala-mode))
