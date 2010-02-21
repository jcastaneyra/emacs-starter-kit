;; Textmate-style indent on paste
(setq power-modes '(emacs-lisp-mode
                    scheme-mode lisp-mode
                    perl-mode
                    c-mode c++-mode objc-mode
                    latex-mode plain-tex-mode
                    ruby-mode rhtml-mode
                    java-mode scala-mode
                    php-mode))

(defadvice yank (after indent-region activate)
  (let ((mark-even-if-inactive t))
    (if (member major-mode power-modes)
        (indent-region (region-beginning) (region-end) nil))))

(defadvice yank-pop (after indent-region activate)
  (let ((mark-even-if-inactive t))
    (if (member major-mode power-modes)
        (indent-region (region-beginning) (region-end) nil))))

(defadvice kill-line (before check-position activate)
  (if (member major-mode power-modes)
      (if (and (eolp) (not (bolp)))
          (progn (forward-char 1)
                 (just-one-space 0)
                 (backward-char 1)))))
