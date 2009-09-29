(setq browse-url-browser-function 'browse-url-default-macosx-browser)

;; turn on cua-mode
(cua-mode t)

(require 'textmate)
(textmate-mode)

;; scala
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/scala-mode"))
(autoload 'scala-mode "scala-mode-auto" nil t)
(add-to-list 'auto-mode-alist '("\\.scala" . scala-mode))

;; haskell
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/haskell-mode"))
(autoload 'haskell-mode "haskell-site-file" nil t)
(add-to-list 'auto-mode-alist '("\\.hs" . haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;; (require 'inf-haskell)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)


(setq default-tab-width 2)

(server-start)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/yasnippet"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/cnixon/snippets")
(add-to-list 'hippie-expand-try-functions-list 'yas/hippie-try-expand)

(require 'wombat)
(color-theme-wombat)

(setq visible-bell nil)
(column-number-mode t)
(setq ns-command-modifier 'meta)
(windmove-default-keybindings 'meta)
