## Emacs

    C-c C-f            fuzzy-find-in-project
    C-c C-g            recursive grep
    C-c C-s            anything
    M-s                query-replace-regexp

## Magit

    g                  refresh
    s                  stage a change
    u                  unstage a change
    S                  stage everything
    U                  unstage everything
    k                  discard change or delete untracked file
    i                  ignore untracked file
    TAB                expand section
    S-TAB              fully expand section
    c                  write commit description
    C                  open commit description with CHANGELOG
    P                  push
    F                  pull
    N r                svn rebase
    N c                svn dcommit
    b                  switch branches
    B                  create and switch branches
    d                  diff
    l                  see history
    $                  see transcript

### In commit description

    C-c C-c            commit
    C-c C-a            amend commit

## Ruby

    M-C-a              Beginning of defun
    M-C-e              End of defun
    M-C-b or M-C-p     Beginning of block
    M-C-f or M-C-n     End of block
    M-C-h              Mark defun
    \t                 Indent
    C-c C-e            Insert end
    C-j                Reindent then newline and indent
    C-m                Newline
    C-c C-s            Run an inferior Ruby process

### With Ruby process

    C-c C-e or M-C-x   send the current definition to the process buffer
    C-c M-e            switch to ruby process buffer after sending their text
    C-c C-r            send the current region to the process buffer
    C-c M-r            switch to ruby process buffer after sending their text
    C-c C-z            switches the current buffer to the ruby process buffer
    C-c C-l            Load a Ruby file into the inferior Ruby process

## Rinari

    C-c ; f c          rinari-find-controller
    C-c ; f e          rinari-find-environment
    C-c ; f f          rinari-find-file-in-project
    C-c ; f h          rinari-find-helper
    C-c ; f i          rinari-find-migration
    C-c ; f j          rinari-find-javascript
    C-c ; f l          rinari-find-plugin
    C-c ; f m          rinari-find-model
    C-c ; f n          rinari-find-configuration
    C-c ; f o          rinari-find-log
    C-c ; f p          rinari-find-public
    C-c ; f s          rinari-find-script
    C-c ; f t          rinari-find-test
    C-c ; f v          rinari-find-view
    C-c ; f w          rinari-find-worker
    C-c ; f x          rinari-find-fixture
    C-c ; f y          rinari-find-stylesheet
