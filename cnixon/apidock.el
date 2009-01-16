(defun open-ruby-doc (term)
  (interactive (list (query-string-with-default "Search Ruby Doc for" 'ruby-doc-history)))
  (open-apidock "ruby" term))

(defun open-rails-doc (term)
  (interactive (list (query-string-with-default "Search Rails Doc for" 'rails-doc-history)))
  (open-apidock "rails" term))

(defun open-apidock (section term)
  (browse-url (format "http://apidock.com/%s/search?query=%s" section term)))

(defun query-string-with-default (prompt history)
  (read-string (format
                "%s (default %s): "
                prompt
                (symbol-at-point))
               nil history (symbol-at-point)))
