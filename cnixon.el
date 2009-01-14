(require 'color-theme)
(color-theme-zenburn)

(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                         'fullboth)))

;; turn on meta window move
(windmove-default-keybindings 'meta)

;; turn on cua-mode
(cua-mode t)
