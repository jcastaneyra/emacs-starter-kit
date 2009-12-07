;; turn on cua-mode
(cua-mode t)

(require 'textmate)
(textmate-mode)

(setq default-tab-width 2)

(server-start)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/yasnippet"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/cnixon/snippets")
(add-to-list 'hippie-expand-try-functions-list 'yas/hippie-try-expand)

(setq visible-bell nil)
(column-number-mode t)
(setq ns-command-modifier 'meta)
(windmove-default-keybindings 'meta)

;; mac-specific
(setq browse-url-browser-function 'browse-url-default-macosx-browser)
(set-default-font "Menlo-12")
(require 'wombat)
(color-theme-wombat)
