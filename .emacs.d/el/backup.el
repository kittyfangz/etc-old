;; emacs likes to leave its fucking trash everywhere
(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.saves/"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq auto-save-list-file-prefix "~/.autosaves/"
      auto-save-file-name-transforms '((".*" "~/.autosaves/" t)))
