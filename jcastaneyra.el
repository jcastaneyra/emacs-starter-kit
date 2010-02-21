;; turn on cua-mode
(cua-mode t)

(require 'textmate)
(textmate-mode)

(require 'quack)

(setq default-tab-width 2)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/jcastaneyra/yasnippet"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/jcastaneyra/yasnippet/snippets")
(add-to-list 'hippie-expand-try-functions-list 'yas/hippie-try-expand)

(setq visible-bell nil)
(column-number-mode t)
(setq ns-command-modifier 'meta)
(windmove-default-keybindings 'meta)

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (eshell-command 
   (format "find %s -type f | ctags -e -L -" dir-name)))

;; mac-specific
(setq browse-url-browser-function 'browse-url-default-macosx-browser)
(set-default-font "Menlo-12")
(require 'wombat)
(color-theme-wombat)
(menu-bar-mode 1)

;; server

(defun close-client-window ()
  (interactive)
  (if (y-or-n-p "Close client window? ")
       (server-edit)))

(add-hook 'server-switch-hook 
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (local-set-key (kbd "C-x k") 'close-client-window)))

(server-start)

(find-file "~/.emacs.d/emacs_cheat_sheet.markdown")
