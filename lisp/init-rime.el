;
(use-package rime
  :ensure t
  :custom
  (default-input-method "rime")
  (rime-show-candidate 'popup)
  )
(setq rime-share-data-dir "~/.emacs.d/rime-data")
(provide 'init-rime)

