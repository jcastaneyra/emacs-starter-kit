(require 'color-theme)
;;(color-theme-zenburn)

(scroll-bar-mode nil)

(column-number-mode t)

(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                         'fullboth)))

(setq browse-url-browser-function 'browse-url-default-macosx-browser)

;; turn on meta window move
(windmove-default-keybindings 'meta)

;; turn on cua-mode
(cua-mode t)

(require 'textmate)
(textmate-mode)

;; scala
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cnixon/scala-mode"))
(autoload 'scala-mode "scala-mode-auto" nil t)
(add-to-list 'auto-mode-alist '("\\.scala" . scala-mode))

(server-start)