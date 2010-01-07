(set-default-font "Consolas-11")
(menu-bar-mode 1)

;; turn on cua-mode
(cua-mode t)

(setq default-tab-width 2)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/yasnippet"))
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/cnixon/yasnippet/snippets")
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

(require 'wombat)
(color-theme-wombat)

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

